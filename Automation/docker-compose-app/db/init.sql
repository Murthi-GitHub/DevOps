create database yellow;
use yellow;

CREATE TABLE employee (
  empName VARCHAR(20),
  empId VARCHAR(10)
);

INSERT INTO employee
  (empName, empId)
VALUES
  ('Murthi', '1097'),
  ('Abdur', '1096');
