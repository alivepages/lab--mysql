# Section I

CREATE DATABASE JS09_MessagesBy_joel;

USE JS09_MessagesBy_joel;

CREATE TABLE Users (
  User_Id INT(11) AUTO_INCREMENT,
  Username VARCHAR(50),
  Password CHAR(41),
  PRIMARY KEY (User_Id)
);

CREATE TABLE Messages (
  Message_Id INT(11) AUTO_INCREMENT,
  User_Id INT(11),
  Content TEXT,
  Created_At TIMESTAMP,
  PRIMARY KEY (Message_Id)
);

ALTER TABLE `Messages`
  ADD FOREIGN KEY (User_Id)
  REFERENCES Users (User_Id);

# Section II

INSERT INTO Users
  (Username, Password)
  VALUES ('tapeface', PASSWORD('tapeface'));

INSERT INTO Users
  (Username, Password)
  VALUES ('butterface', PASSWORD('butterface'));

INSERT INTO Messages
  (User_Id, Content, Created_At)
  VALUES (1, 'How is it going my friend!?', 20170910234512);

INSERT INTO Messages
  (User_Id, Content, Created_At)
  VALUES (1, 'Are u there?', 20170910235525);

INSERT INTO Messages
  (User_Id, Content, Created_At)
  VALUES (2, 'I’m here! Really cool. How about you man? Tell me something.', 20170911002033);


# Section III. Get information

USE HR;

SELECT D.DEPARTMENT_NAME, COUNT(E.EMPLOYEE_ID)
  FROM Departments D
  INNER JOIN Employees E
  GROUP BY D.DEPARTMENT_NAME;

SELECT E.EMPLOYEE_ID, O.JOB_TITLE, datediff(J.END_DATE, J.START_DATE)
  FROM JobHistory J
  INNER JOIN Employees E
    ON E.DEPARTMENT_ID = J.DEPARTMENT_ID
  INNER JOIN Jobs O
    ON E.JOB_ID = O.JOB_ID
  WHERE J.DEPARTMENT_ID = 90;

SELECT D.DEPARTMENT_NAME, E.FIRST_NAME, L.CITY
  FROM Departments D
  INNER JOIN Employees E
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
  INNER JOIN Locations L
    ON L.LOCATION_ID = D.LOCATION_ID;

SELECT J.JOB_TITLE, AVG(E.SALARY)
FROM Employees E
INNER JOIN Jobs J
  ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE;

SELECT H.* FROM JobHistory H
  WHERE H.EMPLOYEE_ID IN (
    SELECT ID FROM Employees WHERE SALARY > 10000
  );
