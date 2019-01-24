-- Show all students ordered by last name in ascendent way.
SELECT *
  FROM STUDENT
  ORDER BY lastName ASC;
-- Write a query to list all the students living in the Whitman dorm.
SELECT *
  FROM STUDENT
  WHERE dormName = "Whitman";
-- Write a query to list the number of students assigned to each faculty advisor.
SELECT
  CONCAT(A.firstName, " ", A.lastName) AS "Faculty Advisor",
  COUNT(*) AS "Number of Students"
  FROM ADVISOR_STUDENT_DATE ASD
  INNER JOIN Student S
  ON ASD.studentID = S.studentID
  INNER JOIN Advisor A
  ON ASD.advisorID = A.advisorID
  GROUP BY A.firstName, A.lastName;

-- Write a query to list the number of students assigned to each faculty advisor.
SELECT
  CONCAT(Me.firstName, " ", Me.lastName) AS 'Alumni as a Mentor',
  Me.mentorEmail AS 'Mentor Email',
  Co.CompanyName AS 'Company Name'
  FROM ALUMNI AL
  INNER JOIN MENTOR Me
  ON Al.alumniEmail = ME.alumniEmail
  INNER JOIN COMPANY Co
  ON Me.CompanyPhone = Co.CompanyPhone;
