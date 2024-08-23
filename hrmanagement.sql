CREATE DATABASE RecruitmentHRManagement;

USE RecruitmentHRManagement;

CREATE TABLE Users (
    userId INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    isVerified BOOLEAN DEFAULT false,
    fullName VARCHAR(50) NOT NULL,
    dob DATE,
    phoneNumber VARCHAR(20),
    role VARCHAR(20) DEFAULT "user",
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Departments (
    departmentId INT PRIMARY KEY AUTO_INCREMENT,
    departmentName VARCHAR(100) NOT NULL,
    managerId INT,
    description TEXT
);

CREATE TABLE Positions (
    positionId INT PRIMARY KEY AUTO_INCREMENT,
    positioName VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE Employees (
    employeeId INT PRIMARY KEY AUTO_INCREMENT,
    hireDate DATE NOT NULL,
    salary INT,
    userId INT,
    departmentId INT,
    positionId INT,
    FOREIGN KEY (userId) REFERENCES Users(userId),
    FOREIGN KEY (departmentId) REFERENCES Departments(departmentId),
    FOREIGN KEY (positionId) REFERENCES Positions(positionId)
);

CREATE TABLE JobPostings (
    jobPostingId INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    departmentId INT,
    positionId INT,
    postDate DATE NOT NULL,
    closeDate DATE,
    status ENUM('Open', 'Closed', 'On Hold') NOT NULL,
    author INT,
    FOREIGN KEY (departmentId) REFERENCES Departments(departmentId),
    FOREIGN KEY (positionId) REFERENCES Positions(positionId),
    FOREIGN KEY (author) REFERENCES Employees(employeeId)
);

CREATE TABLE Candidates (
    candidateId INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dob DATE,
    gender VARCHAR(20),
    phoneNumber VARCHAR(20),
    Resume TEXT
);

CREATE TABLE Applications (
    applicationId INT PRIMARY KEY AUTO_INCREMENT,
    jobPostingId INT,
    candidateId INT,
    applicationDate DATE NOT NULL,
    status ENUM('Submitted', 'Under Review', 'Interviewed', 'Offered', 'Hired', 'Rejected') NOT NULL,
    FOREIGN KEY (jobPostingId) REFERENCES JobPostings(jobPostingId),
    FOREIGN KEY (candidateId) REFERENCES Candidates(candidateId)
);

CREATE TABLE Interviews (
    interviewId INT PRIMARY KEY AUTO_INCREMENT,
    applicationId INT,
    interviewerId INT,
    interviewDate DATETIME NOT NULL,
    notes TEXT,
    result ENUM('Passed', 'Failed', 'On Hold') NOT NULL,
    FOREIGN KEY (applicationId) REFERENCES Applications(applicationId),
    FOREIGN KEY (interviewerId) REFERENCES Employees(employeeId)
);

-- Insert data cho các bảng 
INSERT INTO Users (username, password, email, isVerified, fullName, dob, phoneNumber, role) VALUES
('john_doe', 'hashed_password1', 'john@example.com', true, 'John Doe', '1990-01-01', '123-456-7890', 'admin'),
('jane_smith', 'hashed_password2', 'jane@example.com', true, 'Jane Smith', '1985-02-15', '234-567-8901', 'user'),
('mike_jones', 'hashed_password3', 'mike@example.com', false, 'Mike Jones', '1992-03-10', '345-678-9012', 'user');

INSERT INTO Departments (departmentName, managerId, description) VALUES
('Human Resources', 1, 'Handles recruitment, employee relations, and benefits.'),
('Engineering', 2, 'Responsible for software development and maintenance.'),
('Marketing', NULL, 'Focuses on promoting products and services.');

INSERT INTO Positions (positioName, description) VALUES
('Software Engineer', 'Develops and maintains software applications.'),
('HR Specialist', 'Manages recruitment and employee relations.'),
('Marketing Coordinator', 'Assists in marketing campaigns and strategy.');

select * from Applications;

INSERT INTO Employees (hireDate, salary, userId, departmentId, positionId) VALUES
('2015-06-01', 70000, 1, 1, 2),
('2017-09-15', 90000, 2, 2, 1),
('2019-11-20', 50000, 3, 3, 3);

INSERT INTO JobPostings (title, description, departmentId, positionId, postDate, closeDate, status, author) VALUES
('Software Engineer', 'Looking for a skilled software engineer to join our team.', 2, 1, '2024-08-01', '2024-09-01', 'Open', 2),
('HR Specialist', 'Seeking an experienced HR specialist.', 1, 2, '2024-07-15', '2024-08-15', 'Closed', 1),
('Marketing Coordinator', 'We are hiring a marketing coordinator.', 3, 3, '2024-06-20', '2024-07-20', 'On Hold', 3);

INSERT INTO Candidates (fullName, email, dob, gender, phoneNumber, Resume) VALUES
('Alice Johnson', 'alice@example.com', '1993-04-15', 'Female', '456-789-0123', 'Alice_Johnson_Resume.pdf'),
('Bob Smith', 'bob@example.com', '1988-05-20', 'Male', '567-890-1234', 'Bob_Smith_Resume.pdf'),
('Charlie Brown', 'charlie@example.com', '1995-07-25', 'Male', '678-901-2345', 'Charlie_Brown_Resume.pdf');

INSERT INTO Applications (jobPostingId, candidateId, applicationDate, status) VALUES
(1, 1, '2024-08-05', 'Under Review'),
(2, 2, '2024-07-20', 'Rejected'),
(3, 3, '2024-06-25', 'Interviewed');

INSERT INTO Interviews (applicationId, interviewerId, interviewDate, notes, result) VALUES
(5, 2, '2024-08-10 10:00:00', 'Candidate showed strong problem-solving skills.', 'Passed'),
(6, 3, '2024-07-01 14:00:00', 'Good communication but lacks technical depth.', 'On Hold');

select * from interviews;
