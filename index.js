const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const dotenv = require('dotenv').config();
const port = process.env.port || 3000;
const db = require('./queries')


app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (request, response) => {
    response.status(200);
})

app.get('/data', db.getUsers)
app.get('/data/:id', db.getUserById)
app.post('/data', db.createUser)
app.delete('/data/:id', db.deleteUser)


app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })