CREATE TABLE userdata (
  ID SERIAL PRIMARY KEY,
  email VARCHAR(60),
  firstName VARCHAR(30),
  lastName VARCHAR(30),
  dateOfAccident VARCHAR(20),
  numOfVisitsToRehab INT,
  timeAtRehabInHours INT,
  timeDrivingtoRehabPerAVisitRndTrip INT,
  timeWithAtty INT,
  timeAtAccident INT,
  timeRentingACar INT,
  timeDoingRehabPerADay INT,
  dateRehabIsFinished VARCHAR(20),
  hourlyWageForOccupation FLOAT,
  age INT
);



INSERT INTO USERDATA (firstName, email)
  VALUES ('Jerry', 'jerry@example.com'), ('George', 'george@example.com');

--   {
--   "email": "larrypage@gmail.com",
--   "firstName":"billy",
--   "lastName":"bob",
--   "dateOfAccident": "05/12/2011",
--   "numOfVisitsToRehab":"3",
--   "timeAtRehabInHours":"4",
--   "timeDrivingtoRehabPerAVisitRndTrip":"5",
--   "timeWithAtty":"3",
--   "timeAtAccident":"1",
--   "timeRentingACar":"2",
--   "timeDoingRehabPerADay":"1",
--   "dateRehabIsFinished":"05/22/2020",
--   "hourlyWageForOccupation":"40",
--   "age":"30"
-- }
--the above is sample data for testing in postman
