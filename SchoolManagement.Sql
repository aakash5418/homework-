CREATE TABLE Student(
Student_Id BIGINT IDENTITY(101,1)PRIMARY KEY,
First_Name VARCHAR(50)NOT NULL,
Last_Name VARCHAR(50)NOT NULL,
Gender VARCHAR(50)NOT NULL,
Date_Of_Joining DATE,
Date_Of_Birth DATE,
Student_Status INT)


CREATE TABLE Academic_Table(
Academic_Id BIGINT IDENTITY(1001,1)PRIMARY KEY,
School_Name VARCHAR(50),
Academic_years DATE,
Student_Id BIGINT FOREIGN KEY REFERENCES Student(Student_Id))
 


CREATE TABLE Standard(
Standard_Id BIGINT IDENTITY(1,1)PRIMARY KEY,
Standard_Name VARCHAR(50)NOT NULL,
Student_Id BIGINT FOREIGN KEY REFERENCES Student(Student_Id),
Academic_Id BIGINT FOREIGN KEY REFERENCES Academic_Table(Academic_Id))


CREATE TABLE Subject(
Subject_Id BIGINT IDENTITY(10,1)PRIMARY KEY,
English INT,
Tamil INT,
Maths INT,
Science INT,
Social INT,
Student_Id BIGINT FOREIGN KEY REFERENCES Student(Student_Id),
Academic_Id BIGINT FOREIGN KEY REFERENCES Academic_Table(Academic_Id),
Standard_Id BIGINT FOREIGN KEY REFERENCES Standard(Standard_Id))


CREATE TABLE Exams(
Exam_Id BIGINT IDENTITY(10000,1)PRIMARY KEY,
Quartely_Exam VARCHAR(50),
HalfYearly_Exam VARCHAR(50),
Annual_Exam VARCHAR(50))



CREATE TABLE Student_Marks(
Marks_Id BIGINT IDENTITY(1000001,1)PRIMARY KEY,
Percentage INT,

Student_Id BIGINT FOREIGN KEY REFERENCES Student(Student_Id),
Academic_Id BIGINT FOREIGN KEY REFERENCES Academic_Table(Academic_Id),
Standard_Id BIGINT FOREIGN KEY REFERENCES Standard(Standard_Id),
Exam_Id BIGINT FOREIGN KEY REFERENCES Exams(Exam_Id))


