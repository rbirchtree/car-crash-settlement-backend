const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const dotenv = require('dotenv').config();
const port = process.env.port || 5000;
const db = require('./queries')
const cors = require('cors');

let server;

app.use(cors());


app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (request, response) => {
    return response.status(200);
})

app.get('/data', db.getUsers)
app.get('/data/:id', db.getUserById)
app.post('/data', db.createUser)
app.delete('/data/:id', db.deleteUser)


function runServer() {
  return new Promise((resolve, reject) => {
    server = app.listen(port, () => {
      console.log(`Your app is listening on port ${port}`);
      resolve(server);
    }).on('error', err => {
      reject(err)
    });
  });
}

function closeServer() {
  return new Promise((resolve, reject) => {
    console.log('Closing server');
    server.close(err => {
      if (err) {
        reject(err);
        return;
      }
      resolve();
    });
  });
}


if (require.main === module) {
  runServer().catch(err => console.error(err));
};
module.exports = {app,runServer,closeServer};