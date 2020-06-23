const Pool = require('pg').Pool
const pool = new Pool({
  user: process.env.DB_USER,
  host: 'localhost',
  database: process.env.DB_DB,
  password: process.env.DB_PASS,
  port: 5432,
})

const getUsers = (request, response) => {
  pool.query('SELECT * FROM userdata ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}


const getUserById = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('SELECT * FROM userdata WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}


const createUser = (request, response) => {
  const { email, firstName, lastName, dateOfAccident, numOfVisitsToRehab, timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay,dateRehabIsFinished, hourlyWageForOccupation, age } = request.body.values;
  console.log('email',request.body.values.email,'request',request.body);
    pool.query('INSERT INTO userdata (email, firstName, lastName, dateOfAccident, numOfVisitsToRehab, timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay,dateRehabIsFinished, hourlyWageForOccupation, age) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14)',
    [email, firstName, lastName, dateOfAccident, numOfVisitsToRehab, timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay,dateRehabIsFinished, hourlyWageForOccupation, age], (error, result) => {
    if (error) {
      throw error
    }
    response.status(201).send(`User added with ID: ${result}`)
  })
}


const deleteUser = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('DELETE FROM usersdate WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).send(`User deleted with ID: ${id}`)
  })
}

module.exports = {
  getUsers,
  getUserById,
  createUser,
  deleteUser,
}