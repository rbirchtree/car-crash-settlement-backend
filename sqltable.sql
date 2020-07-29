CREATE TABLE userdata (
  ID SERIAL PRIMARY KEY,
  dateOfAccident DATE,
  numOfVisitsToRehab INT,
  timeAtRehabInHours INT,
  timeDrivingtoRehabPerAVisitRndTrip DECIMAL,
  timeWithAtty DECIMAL,
  timeAtAccident DECIMAL,
  timeRentingACar DECIMAL,
  timeDoingRehabPerADay DECIMAL,
  dateRehabIsFinished DATE,
  hourlyWageForOccupation INT,
  occupation VARCHAR(100),
  zipCodeOfAccident INT,
  insurance VARCHAR(100),
  age INT,
  settlementAmt INT, 
  notes VARCHAR(200)
);
-- remove dates


INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('02/1/2014', 60, 1,1,1,2,1,1,'05/1/14',8,'Pizza Delivery Driver',78738, 'ALL-STATE', 28,14000,'Victim was stopped at redlight and took full impact from behind'); 


INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('12/18/2018', 16, 1,1,1,2,1,1,'05/1/14',25,'Home Health',78738, 'ACME', 35, 4400,'She was hit by a truck turning left'); 

INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('4/14/2018', 16, 1,1,1,2,1,1,'04/14/18',8,'Retired',78634, 'ACME', 83, 5000,'He was hit by a van while parked'); 

INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('4/21/2019', 32, 2,1,1,1,1,1,'07/01/19',24,'Construction',78753, 'ACME', 21, 9700,'He was hit by a truck while driving'); 

INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('9/24/2018', 34, 2,1,1,1,1,1,'12/31/18',32,'Student',78744, 'ACME', 19, 15000,'He was a passenger hit by a truck'); 

INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('1/23/2019', 12, 2,1,1,1,1,1,'4/12/19',30,'Retail',78641, 'ACME', 19, 7500,'She was a passenger hit by a motorcycle'); 

INSERT INTO USERDATA (dateOfAccident, numOfVisitsToRehab ,timeAtRehabInHours, timeDrivingtoRehabPerAVisitRndTrip, 
timeWithAtty, timeAtAccident, timeRentingACar, timeDoingRehabPerADay, dateRehabIsFinished, hourlyWageForOccupation ,occupation,
zipCodeOfAccident, insurance, age, settlementAmt,notes)
VALUES ('5/14/17', 5, 8,1,1,1,1,1,'6/1/17',70,'Mechanical Engineer',94304, 'ACME', 33, 9000,'He was a driving a Prius and the driver ran away, filed claim later'); 

