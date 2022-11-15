-- Creating Tables & Constraints 

CREATE TABLE ProjDept(ProjDept_ID number, ProjDeptName varchar(50), OfficeLocation varchar(50), PhoneNumber number) ;
ALTER TABLE ProjDept ADD PRIMARY KEY(ProjDept_ID);


CREATE TABLE Employee(Employee_ID number, FirstName varchar(50), LastName varchar(50), PhoneNumebr varchar(50), EmailAddress varchar(50)) ;
ALTER TABLE Employee ADD PRIMARY KEY(Employee_ID);
ALTER TABLE Employee ADD ProjDept_ID number REFERENCES ProjDept(ProjDept_ID) ;
ALTER TABLE Employee ADD CONSTRAINT UK_EmailAddress unique(EmailAddress) ;



CREATE TABLE Project_Table (Project_ID number, ProjectName varchar(50), MaxHours number, StartDate date, EndDate date );
ALTER TABLE Project_Table ADD CONSTRAINT PK_Project_Table PRIMARY KEY (Project_ID) REFERENCES Project_Table (Project_ID) ;
ALTER TABLE Project_Table ADD CONSTRAINT FK_Project_Table FOREIGN KEY (Project_ID) REFERENCES Project_Table (Project_ID) ;


CREATE TABLE Project_Task (Project_ID number, Employee_ID varchar(50), HoursWorked number, Hours_Worked timestamp, Task_Details varchar(50));
ALTER TABLE Project_Task ADD PRIMARY KEY(Project_ID, Employee_ID);
ALTER TABLE Project_Task ADD CONSTRAINT FK_Project_Task FOREIGN KEY (Project_ID) REFERENCES Project_Table (Project_ID) ;
ALTER TABLE Project_Task ADD CONSTRAINT FK2_Project_Task FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID) ;
