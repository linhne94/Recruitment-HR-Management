-- Database: recuitment_hr_ management

-- DROP DATABASE IF EXISTS "recuitment_hr_ management";

CREATE DATABASE "recuitment_hr_ management"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

INSERT INTO "users" ("username", "password", "email", "is_verified", "full_name", "dob", "phone_number", "role", "created_at") VALUES
('jdoe', 'password123', 'john.doe@example.com', true, 'John Doe', '1990-01-01', '123-456-7890', 'admin', '2020-01-01 09:00:00'),
('jsmith', 'password123', 'jane.smith@example.com', true, 'Jane Smith', '1992-02-02', '098-765-4321', 'user', '2020-02-01 10:00:00'),
('mbrown', 'password123', 'michael.brown@example.com', false, 'Michael Brown', '1985-03-03', '234-567-8901', 'user', '2020-03-01 11:00:00'),
('edavis', 'password123', 'emily.davis@example.com', true, 'Emily Davis', '1994-04-04', '345-678-9012', 'user', '2020-04-01 12:00:00'),
('cgarcia', 'password123', 'chris.garcia@example.com', false, 'Christopher Garcia', '1988-05-05', '456-789-0123', 'user', '2020-05-01 13:00:00'),
('swilson', 'password123', 'sophia.wilson@example.com', true, 'Sophia Wilson', '1991-06-06', '567-890-1234', 'user', '2020-06-01 14:00:00'),
('dmartinez', 'password123', 'dan.martinez@example.com', false, 'Daniel Martinez', '1983-07-07', '678-901-2345', 'user', '2020-07-01 15:00:00'),
('oanderson', 'password123', 'olivia.anderson@example.com', true, 'Olivia Anderson', '1995-08-08', '789-012-3456', 'user', '2020-08-01 16:00:00'),
('dtaylor', 'password123', 'david.taylor@example.com', true, 'David Taylor', '1987-09-09', '890-123-4567', 'user', '2020-09-01 17:00:00'),
('ithomas', 'password123', 'isabella.thomas@example.com', false, 'Isabella Thomas', '1990-10-10', '901-234-5678', 'user', '2020-10-01 18:00:00'),
('jlee', 'password123', 'james.lee@example.com', true, 'James Lee', '1986-11-11', '012-345-6789', 'user', '2020-11-01 19:00:00'),
('mhernandez', 'password123', 'mia.hernandez@example.com', true, 'Mia Hernandez', '1993-12-12', '123-456-7890', 'user', '2020-12-01 20:00:00'),
('wwhite', 'password123', 'william.white@example.com', false, 'William White', '1989-01-13', '234-567-8901', 'user', '2021-01-01 21:00:00'),
('aharris', 'password123', 'ava.harris@example.com', true, 'Ava Harris', '1992-02-14', '345-678-9012', 'user', '2021-02-01 22:00:00'),
('aclark', 'password123', 'alex.clark@example.com', false, 'Alexander Clark', '1984-03-15', '456-789-0123', 'user', '2021-03-01 23:00:00');

INSERT INTO users (username, password, email, is_verified, full_name, dob, phone_number, role) VALUES
('user1', 'password1', 'user1@example.com', true, 'User One', '1990-01-01', '0123456789', 'user'),
('user2', 'password2', 'user2@example.com', true, 'User Two', '1991-02-02', '0123456798', 'user'),
('user3', 'password3', 'user3@example.com', false, 'User Three', '1992-03-03', '0123456797', 'user'),
('user4', 'password4', 'user4@example.com', true, 'User Four', '1993-04-04', '0123456796', 'user'),
('user5', 'password5', 'user5@example.com', false, 'User Five', '1994-05-05', '0123456795', 'user'),
('user6', 'password6', 'user6@example.com', true, 'User Six', '1995-06-06', '0123456794', 'user'),
('user7', 'password7', 'user7@example.com', true, 'User Seven', '1996-07-07', '0123456793', 'user'),
('user8', 'password8', 'user8@example.com', false, 'User Eight', '1997-08-08', '0123456792', 'user'),
('user9', 'password9', 'user9@example.com', true, 'User Nine', '1998-09-09', '0123456791', 'user'),
('user10', 'password10', 'user10@example.com', false, 'User Ten', '1999-10-10', '0123456790', 'user'),
('user11', 'password11', 'user11@example.com', true, 'User Eleven', '1990-11-11', '0123456788', 'user'),
('user12', 'password12', 'user12@example.com', true, 'User Twelve', '1991-12-12', '0123456787', 'user'),
('user13', 'password13', 'user13@example.com', false, 'User Thirteen', '1992-01-13', '0123456786', 'user'),
('user14', 'password14', 'user14@example.com', true, 'User Fourteen', '1993-02-14', '0123456785', 'user'),
('user15', 'password15', 'user15@example.com', false, 'User Fifteen', '1994-03-15', '0123456784', 'user'),
('user16', 'password16', 'user16@example.com', true, 'User Sixteen', '1995-04-16', '0123456783', 'user'),
('user17', 'password17', 'user17@example.com', false, 'User Seventeen', '1996-05-17', '0123456782', 'user'),
('user18', 'password18', 'user18@example.com', true, 'User Eighteen', '1997-06-18', '0123456781', 'user'),
('user19', 'password19', 'user19@example.com', true, 'User Nineteen', '1998-07-19', '0123456780', 'user'),
('user20', 'password20', 'user20@example.com', false, 'User Twenty', '1999-08-20', '0123456779', 'user');

select * from users


INSERT INTO "departments" ("department_name", "manager_id", "description") VALUES
('Human Resources', 1, 'Handles recruitment and employee relations'),
('Engineering', 2, 'Responsible for product development'),
('Marketing', 3, 'Focuses on promoting the company’s products'),
('Sales', 4, 'Handles client relationships and sales'),
('Finance', 5, 'Manages company finances'),
('IT', 6, 'Maintains company IT infrastructure'),
('Customer Service', 7, 'Handles customer inquiries and support'),
('Legal', 8, 'Manages legal issues and compliance'),
('Operations', 9, 'Oversees day-to-day operations'),
('R&D', 10, 'Focuses on new product development'),
('Supply Chain', 11, 'Manages supply and distribution'),
('Quality Assurance', 12, 'Ensures product and service quality'),
('Public Relations', 13, 'Manages company’s public image'),
('Administration', 14, 'Handles administrative tasks'),
('Executive', 15, 'Top management team');

INSERT INTO "employees" ("hire_date", "salary", "user_id", "department_id") VALUES
('2019-01-01', 50000, 1, 1),
('2019-02-01', 60000, 2, 2),
('2019-03-01', 70000, 3, 3),
('2019-04-01', 80000, 4, 4),
('2019-05-01', 90000, 5, 5),
('2019-06-01', 50000, 6, 6),
('2019-07-01', 60000, 7, 7),
('2019-08-01', 70000, 8, 8),
('2019-09-01', 80000, 9, 9),
('2019-10-01', 90000, 10, 10),
('2019-11-01', 50000, 11, 11),
('2019-12-01', 60000, 12, 12),
('2020-01-01', 70000, 13, 13),
('2020-02-01', 80000, 14, 14),
('2020-03-01', 90000, 15, 15);

INSERT INTO employees (hire_date, salary, user_id, department_id) VALUES
('2023-01-01', 5000, 31, 1),
('2023-01-02', 5500, 32, 1),
('2023-01-03', 6000, 33, 1),
('2023-01-04', 6500, 34, 1),
('2023-01-05', 7000, 35, 1),
('2023-01-06', 7500, 36, 2),
('2023-01-07', 8000, 37, 3),
('2023-01-08', 8500, 38, 3),
('2023-01-09', 9000, 39, 3),
('2023-01-10', 9500, 40, 4),
('2023-01-11', 5000, 41, 4),
('2023-01-12', 5500, 42, 4),
('2023-01-13', 6000, 43, 4),
('2023-01-14', 6500, 44, 5),
('2023-01-15', 7000, 45, 5),
('2023-01-16', 7500, 46, 5),
('2023-01-17', 8000, 47, 5),
('2023-01-18', 8500, 48, 5),
('2023-01-19', 9000, 49, 6),
('2023-01-20', 9500, 50, 6);


INSERT INTO "positions" ("position_name", "description") VALUES
('Software Engineer', 'Develops and maintains software applications'),
('HR Manager', 'Oversees human resources tasks'),
('Marketing Manager', 'Leads the marketing team'),
('Sales Manager', 'Manages the sales department'),
('Financial Analyst', 'Analyzes financial data'),
('IT Support', 'Provides IT support to employees'),
('Customer Service Representative', 'Assists customers with inquiries'),
('Legal Counsel', 'Handles legal matters for the company'),
('Operations Manager', 'Oversees daily operations'),
('R&D Specialist', 'Conducts research and development'),
('Supply Chain Coordinator', 'Manages the supply chain'),
('QA Engineer', 'Ensures product quality'),
('PR Specialist', 'Manages public relations activities'),
('Admin Assistant', 'Provides administrative support'),
('Executive Assistant', 'Assists top executives');

INSERT INTO "candidates" ("full_name", "email", "dob", "gender", "phone_number", "resume") VALUES
('John Doe', 'john.doe@example.com', '1990-01-01', 'Male', '123-456-7890', 'Resume for John Doe'),
('Jane Smith', 'jane.smith@example.com', '1992-02-02', 'Female', '098-765-4321', 'Resume for Jane Smith'),
('Michael Brown', 'michael.brown@example.com', '1985-03-03', 'Male', '234-567-8901', 'Resume for Michael Brown'),
('Emily Davis', 'emily.davis@example.com', '1994-04-04', 'Female', '345-678-9012', 'Resume for Emily Davis'),
('Christopher Garcia', 'chris.garcia@example.com', '1988-05-05', 'Male', '456-789-0123', 'Resume for Christopher Garcia'),
('Sophia Wilson', 'sophia.wilson@example.com', '1991-06-06', 'Female', '567-890-1234', 'Resume for Sophia Wilson'),
('Daniel Martinez', 'dan.martinez@example.com', '1983-07-07', 'Male', '678-901-2345', 'Resume for Daniel Martinez'),
('Olivia Anderson', 'olivia.anderson@example.com', '1995-08-08', 'Female', '789-012-3456', 'Resume for Olivia Anderson'),
('David Taylor', 'david.taylor@example.com', '1987-09-09', 'Male', '890-123-4567', 'Resume for David Taylor'),
('Isabella Thomas', 'isabella.thomas@example.com', '1990-10-10', 'Female', '901-234-5678', 'Resume for Isabella Thomas'),
('James Lee', 'james.lee@example.com', '1986-11-11', 'Male', '012-345-6789', 'Resume for James Lee'),
('Mia Hernandez', 'mia.hernandez@example.com', '1993-12-12', 'Female', '123-456-7890', 'Resume for Mia Hernandez'),
('William White', 'william.white@example.com', '1989-01-13', 'Male', '234-567-8901', 'Resume for William White'),
('Ava Harris', 'ava.harris@example.com', '1992-02-14', 'Female', '345-678-9012', 'Resume for Ava Harris'),
('Alexander Clark', 'alex.clark@example.com', '1984-03-15', 'Male', '456-789-0123', 'Resume for Alexander Clark');

INSERT INTO "employee_position" ("employee_id", "position_id", "create_at") VALUES
(1, 2, '2020-01-01'),
(2, 1, '2020-02-01'),
(3, 3, '2020-03-01'),
(4, 4, '2020-04-01'),
(5, 5, '2020-05-01'),
(6, 6, '2020-06-01'),
(7, 7, '2020-07-01'),
(8, 8, '2020-08-01'),
(9, 9, '2020-09-01'),
(10, 10, '2020-10-01'),
(11, 11, '2020-11-01'),
(12, 12, '2020-12-01'),
(13, 13, '2021-01-01'),
(14, 14, '2021-02-01'),
(15, 15, '2021-03-01');

INSERT INTO "job_postings" ("title", "description", "department_id", "position_id", "post_date", "close_date", "status", "author") VALUES
('Junior Software Engineer', 'Entry-level software engineer position', 2, 1, '2023-01-01', '2023-02-01', 'Open', 1),
('HR Assistant', 'Assist the HR department', 1, 2, '2023-02-01', '2023-03-01', 'Open', 2),
('Marketing Specialist', 'Work on marketing campaigns', 3, 3, '2023-03-01', '2023-04-01', 'Open', 3),
('Sales Associate', 'Handle sales inquiries', 4, 4, '2023-04-01', '2023-05-01', 'Closed', 4),
('Financial Analyst', 'Analyze company finances', 5, 5, '2023-05-01', '2023-06-01', 'On Hold', 5),
('IT Support Technician', 'Provide IT support', 6, 6, '2023-06-01', '2023-07-01', 'Open', 6),
('Customer Service Rep', 'Assist customers', 7, 7, '2023-07-01', '2023-08-01', 'Open', 7),
('Legal Assistant', 'Assist the legal department', 8, 8, '2023-08-01', '2023-09-01', 'Open', 8),
('Operations Manager', 'Oversee operations', 9, 9, '2023-09-01', '2023-10-01', 'Open', 9),
('R&D Analyst', 'Conduct research and analysis', 10, 10, '2023-10-01', '2023-11-01', 'Closed', 10),
('Supply Chain Manager', 'Manage supply chain activities', 11, 11, '2023-11-01', '2023-12-01', 'Open', 11),
('QA Specialist', 'Ensure product quality', 12, 12, '2023-12-01', '2024-01-01', 'On Hold', 12),
('PR Coordinator', 'Manage public relations', 13, 13, '2024-01-01', '2024-02-01', 'Open', 13),
('Administrative Assistant', 'Support administrative tasks', 14, 14, '2024-02-01', '2024-03-01', 'Open', 14),
('Executive Assistant', 'Assist executive team', 15, 15, '2024-03-01', '2024-04-01', 'Open', 15);

INSERT INTO "applications" ("job_posting_id", "candidate_id", "application_date", "status") VALUES
(1, 1, '2023-01-05', 'Submitted'),
(2, 2, '2023-02-05', 'Under Review'),
(3, 3, '2023-03-05', 'Interviewed'),
(4, 4, '2023-04-05', 'Offered'),
(5, 5, '2023-05-05', 'Hired'),
(6, 6, '2023-06-05', 'Rejected'),
(7, 7, '2023-07-05', 'Submitted'),
(8, 8, '2023-08-05', 'Under Review'),
(9, 9, '2023-09-05', 'Interviewed'),
(10, 10, '2023-10-05', 'Offered'),
(11, 11, '2023-11-05', 'Hired'),
(12, 12, '2023-12-05', 'Rejected'),
(13, 13, '2024-01-05', 'Submitted'),
(14, 14, '2024-02-05', 'Under Review'),
(15, 15, '2024-03-05', 'Interviewed');


INSERT INTO "interviews" ("application_id", "interviewer_id", "interview_date", "notes", "result") VALUES
(1, 1, '2023-01-15 10:00:00', 'Good technical skills', 'Passed'),
(2, 2, '2023-02-15 11:00:00', 'Strong communication skills', 'Passed'),
(3, 3, '2023-03-15 12:00:00', 'Creative ideas', 'Passed'),
(4, 4, '2023-04-15 13:00:00', 'Sales experience', 'Failed'),
(5, 5, '2023-05-15 14:00:00', 'Analytical mindset', 'On Hold'),
(6, 6, '2023-06-15 15:00:00', 'Tech-savvy', 'Processing'),
(7, 7, '2023-07-15 16:00:00', 'Customer-oriented', 'Passed'),
(8, 8, '2023-08-15 17:00:00', 'Legal knowledge', 'Passed'),
(9, 9, '2023-09-15 18:00:00', 'Operations experience', 'Failed'),
(10, 10, '2023-10-15 09:00:00', 'Research experience', 'On Hold'),
(11, 11, '2023-11-15 10:00:00', 'Supply chain knowledge', 'Processing'),
(12, 12, '2023-12-15 11:00:00', 'Quality assurance experience', 'Passed'),
(13, 13, '2024-01-15 12:00:00', 'PR experience', 'Passed'),
(14, 14, '2024-02-15 13:00:00', 'Administrative skills', 'On Hold'),
(15, 15, '2024-03-15 14:00:00', 'Executive support experience', 'Processing');

INSERT INTO candidates (full_name, email, dob, gender, phone_number, resume) VALUES
('Nguyen Van A', 'nguyenvana@example.com', '1990-01-01', 'Male', '0123456789', 'Resume A'),
('Tran Thi B', 'tranthib@example.com', '1992-02-02', 'Female', '0123456798', 'Resume B'),
('Le Van C', 'levanc@example.com', '1988-03-03', 'Male', '0123456797', 'Resume C'),
('Pham Thi D', 'phamthid@example.com', '1991-04-04', 'Female', '0123456796', 'Resume D'),
('Hoang Van E', 'hoangvane@example.com', '1993-05-05', 'Male', '0123456795', 'Resume E'),
('Bui Thi F', 'buithif@example.com', '1989-06-06', 'Female', '0123456794', 'Resume F'),
('Vu Van G', 'vuvang@example.com', '1994-07-07', 'Male', '0123456793', 'Resume G'),
('Dang Thi H', 'dangthih@example.com', '1990-08-08', 'Female', '0123456792', 'Resume H'),
('Ly Van I', 'lyvani@example.com', '1992-09-09', 'Male', '0123456791', 'Resume I'),
('Nguyen Thi J', 'nguyenthij@example.com', '1991-10-10', 'Female', '0123456790', 'Resume J'),
('Tran Van K', 'tranvank@example.com', '1989-11-11', 'Male', '0123456788', 'Resume K'),
('Le Thi L', 'lethil@example.com', '1993-12-12', 'Female', '0123456787', 'Resume L'),
('Pham Van M', 'phamvanm@example.com', '1990-01-13', 'Male', '0123456786', 'Resume M'),
('Hoang Thi N', 'hoangthin@example.com', '1992-02-14', 'Female', '0123456785', 'Resume N'),
('Bui Van O', 'buivano@example.com', '1991-03-15', 'Male', '0123456784', 'Resume O'),
('Vu Thi P', 'vuthip@example.com', '1988-04-16', 'Female', '0123456783', 'Resume P'),
('Dang Van Q', 'dangvanq@example.com', '1994-05-17', 'Male', '0123456782', 'Resume Q'),
('Ly Thi R', 'lythir@example.com', '1993-06-18', 'Female', '0123456781', 'Resume R'),
('Nguyen Van S', 'nguyenvans@example.com', '1989-07-19', 'Male', '0123456780', 'Resume S'),
('Tran Thi T', 'tranthit@example.com', '1990-08-20', 'Female', '0123456779', 'Resume T');

select * from applications

INSERT INTO applications (job_posting_id, candidate_id, application_date, status) VALUES
(1, 1, '2024-08-01', 'Submitted'),
(2, 2, '2024-08-02', 'Under Review'),
(3, 3, '2024-08-03', 'Interviewed'),
(4, 4, '2024-08-04', 'Offered'),
(5, 5, '2024-08-05', 'Hired'),
(6, 6, '2024-08-06', 'Rejected'),
(7, 7, '2024-08-07', 'Submitted'),
(8, 8, '2024-08-08', 'Under Review'),
(9, 9, '2024-08-09', 'Interviewed'),
(10, 10, '2024-08-10', 'Offered'),
(11, 11, '2024-08-11', 'Hired'),
(2, 12, '2024-08-12', 'Rejected'),
(15, 13, '2024-08-13', 'Submitted'),
(7, 14, '2024-08-14', 'Under Review'),
(5, 15, '2024-08-15', 'Interviewed'),
(2, 36, '2024-08-16', 'Offered'),
(4, 37, '2024-08-17', 'Hired'),
(2, 38, '2024-08-18', 'Rejected'),
(1, 39, '2024-08-19', 'Submitted'),
(1, 40, '2024-08-20', 'Under Review');

INSERT INTO interviews (application_id, interviewer_id, interview_date, notes, result) VALUES
(1, 1, '2024-08-10 09:00:00', 'Good candidate.', 'Passed'),
(2, 2, '2024-08-11 10:00:00', 'Needs improvement.', 'Failed'),
(3, 3, '2024-08-12 11:00:00', 'Excellent skills.', 'Passed'),
(4, 4, '2024-08-13 12:00:00', 'Average performance.', 'On Hold'),
(5, 5, '2024-08-14 13:00:00', 'Lacks experience.', 'Failed'),
(6, 6, '2024-08-15 14:00:00', 'Strong technical knowledge.', 'Passed'),
(7, 7, '2024-08-16 15:00:00', 'Poor communication.', 'Failed'),
(8, 8, '2024-08-17 16:00:00', 'Excellent attitude.', 'Passed'),
(9, 9, '2024-08-18 17:00:00', 'Good potential.', 'On Hold'),
(10, 10, '2024-08-19 18:00:00', 'Not a good fit.', 'Failed'),
(101, 11, '2024-08-20 09:00:00', 'Very knowledgeable.', 'Passed'),
(102, 12, '2024-08-21 10:00:00', 'Average technical skills.', 'On Hold'),
(103, 13, '2024-08-22 11:00:00', 'Good problem-solving.', 'Passed'),
(104, 14, '2024-08-23 12:00:00', 'Needs better preparation.', 'Failed'),
(105, 2, '2024-08-24 13:00:00', 'Great interpersonal skills.', 'Passed'),
(106, 1, '2024-08-25 14:00:00', 'Lacks confidence.', 'Failed'),
(107, 11, '2024-08-26 15:00:00', 'Strong portfolio.', 'Passed'),
(108, 12, '2024-08-27 16:00:00', 'Good analytical skills.', 'Passed'),
(109, 13, '2024-08-28 17:00:00', 'Excellent cultural fit.', 'Passed'),
(110, 15, '2024-08-29 18:00:00', 'Needs more experience.', 'On Hold');



-- 1. List all job postings along with their authors (employees) and their current status.
-- Sort the job postings by the post date in descending order.

select jp.title, jp.status, u.full_name as author_name, jp.post_date
from job_postings jp
join employees e on jp.author = e.user_id
join users u on e.user_id = u.user_id
order by jp.post_date desc;

-- 2. Find the candidate who has the highest total number of applications and list the details of their applications.
-- Include the job posting and department information in the result.

SELECT c.full_name, c.email, c.dob, ca.total_applications,
       jp.title, d.department_name, jp.status
FROM candidates c
JOIN (
    SELECT candidate_id, COUNT(*) AS total_applications
    FROM applications
    GROUP BY candidate_id
) ca ON c.candidate_id = ca.candidate_id
JOIN applications a ON c.candidate_id = a.candidate_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN departments d ON jp.department_id = d.department_id
WHERE ca.total_applications = (
    SELECT MAX(sub_ca.total_applications)
    FROM (
        SELECT candidate_id, COUNT(*) AS total_applications
        FROM applications
        GROUP BY candidate_id
    ) sub_ca
)

-- Optimize with "WITH"
WITH candidate_app_count AS (
    SELECT candidate_id, COUNT(*) AS total_applications
    FROM applications
    GROUP BY candidate_id
)
SELECT c.full_name, c.email, c.dob, ca.total_applications,
       jp.title, d.department_name, jp.status
FROM candidates c
JOIN candidate_app_count ca ON c.candidate_id = ca.candidate_id
JOIN applications a ON c.candidate_id = a.candidate_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN departments d ON jp.department_id = d.department_id
WHERE ca.total_applications = (
    SELECT MAX(total_applications) FROM candidate_app_count
)

-- 3. List job postings that have reached their application deadline along with their associated positions 
-- and the total number of applications received. Only show job postings with 10 or more applications.

WITH application_count AS (
    SELECT job_posting_id, COUNT(*) AS total_applications
    FROM applications
    GROUP BY job_posting_id
	order by total_applications desc
)
SELECT jp.title, p.position_name, jp.close_date, ac.total_applications
FROM job_postings jp
JOIN positions p ON jp.position_id = p.position_id
JOIN application_count ac ON jp.job_posting_id = ac.job_posting_id
WHERE jp.close_date < CURRENT_DATE AND ac.total_applications >= 3

-- 4. Query the list of departments and the number of employees in each department.
-- Sort the results by the number of employees in descending order, showing only departments with more than 5 employees.

SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id
HAVING COUNT(e.employee_id) >= 4
ORDER BY employee_count DESC

-- 5. List all applications from the most recent month, along with the candidate's name, the total number 
-- of interviews conducted for each application, and the job posting details. Sort the results by application date.

select * from applications

WITH interview_count AS (
    SELECT application_id, COUNT(*) AS total_interviews
    FROM interviews
    GROUP BY application_id
)
SELECT a.application_date, c.full_name, ic.total_interviews, jp.title, jp.description, jp.status, jp.post_date
FROM applications a
JOIN candidates c ON a.candidate_id = c.candidate_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN interview_count ic ON a.application_id = ic.application_id
WHERE DATE_TRUNC('month', a.application_date) = DATE_TRUNC('month', CURRENT_DATE - INTERVAL '1 month')
ORDER BY a.application_date DESC

-- 6. Find the job postings that have a salary higher than the average salary of all employees in the same department.
-- List the job title, salary, and department name. 
-- ( vì trong job posting kh có salary nên em fix đề lại xíu. Đổi thành list ra giống z mà tìm job posting có người trong phòng ban đó có lương > tbc lương của department )

WITH avg_salary AS (
    SELECT department_id, AVG(salary) AS department_avg_salary
    FROM employees
    GROUP BY department_id
	ORDER BY department_avg_salary DESC
)
SELECT jp.job_posting_id, jp.title, s.department_avg_salary, d.department_name
FROM job_postings jp
JOIN departments d ON jp.department_id = d.department_id
JOIN employees e ON jp.department_id = e.department_id 
JOIN avg_salary s ON jp.department_id = s.department_id
WHERE e.salary > s.department_avg_salary

-- 7. List all interviewers and the number of interviews they have conducted.
-- Show only interviewers who have conducted more than 5 interviews and sort by the total number of interviews in descending order.
-- tại em ít data quá nên em để thành 2

SELECT u.full_name AS interviewer_name, COUNT(i.interviewer_id) AS total_interviews
FROM interviews i
JOIN employees e ON i.interviewer_id = e.user_id
JOIN users u on i.interviewer_id = u.user_id
GROUP BY u.full_name
HAVING COUNT(i.interview_id) >= 2
ORDER BY total_interviews DESC


-- 8. List candidates who have applied for at least 2 job postings and have at least 1 interview scheduled.
-- Display their email, total number of applications, and the number of interviews.

WITH application_count AS (
    SELECT c.email, COUNT(c.email) AS total_applications
    FROM applications a
	JOIN candidates c on a.candidate_id = c.candidate_id
    GROUP BY c.email
    HAVING COUNT(c.email) >= 2
), interview_count AS (
    SELECT c.email, COUNT(c.email) AS total_interviews
    FROM applications a
	JOIN candidates c on a.candidate_id = c.candidate_id
    JOIN interviews i ON a.application_id = i.application_id
    GROUP BY c.email
    HAVING COUNT(c.email) >= 1
)
SELECT c.email, ac.total_applications, ic.total_interviews
FROM candidates c
JOIN application_count ac ON c.email = ac.email
JOIN interview_count ic ON c.email = ic.email


-- 9. List all candidate resumes along with the job posting title, application status, and interview result.
-- Only show job postings with an average interview result above "Pass," and sort the results by the average result in descending order.

WITH avg_interview_result AS (
    SELECT jp.job_posting_id , AVG(CASE WHEN i.result = 'Passed' THEN 1 ELSE 0 END) AS avg_result
    FROM job_postings jp
    JOIN applications a ON jp.job_posting_id = a.job_posting_id
    JOIN interviews i ON a.application_id= i.application_id
    GROUP BY jp.job_posting_id
	ORDER BY jp.job_posting_id DESC
)
SELECT c.resume, jp.title, a.status, i.result
FROM candidates c
JOIN applications a ON c.candidate_id = a.candidate_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN interviews i ON a.application_id = i.application_id
JOIN avg_interview_result ar ON jp.job_posting_id = ar.job_posting_id
WHERE ar.avg_result > 0.5
ORDER BY ar.avg_result DESC

-- 10. Find users (both employees and candidates) who have never applied for a job posting.
-- List their details along with their roles and creation dates.

SELECT u.full_name, u.email, u.phone_number, e.salary, d.department_name, e.hire_date
FROM users u 
JOIN employees e ON u.user_id = e.user_id
JOIN candidates c ON u.email = c.email
JOIN departments d ON d.department_id = e.department_id


-- 11. List all applications with status 'rejected', along with job posting information, candidate details,
--  and the total number of interviews conducted for each application. Sort by the total number of interviews in descending order.

WITH interview_count AS (
    SELECT application_id, COUNT(*) AS total_interviews
    FROM interviews
    GROUP BY application_id
)
SELECT c.full_name, c.email, jp.title, ic.total_interviews, a.status
FROM applications a
JOIN candidates c ON a.candidate_id = c.candidate_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN interview_count ic ON a.application_id = ic.application_id
WHERE a.status = 'Rejected'
ORDER BY ic.total_interviews DESC;

-- 12. Query the list of job postings along with their authors and the total number of applications they have received.
-- Only show job postings with 5 or more applications and sort by the number of applications in descending order.

WITH application_count AS (
    SELECT job_posting_id, COUNT(*) AS total_applications
    FROM applications
    GROUP BY job_posting_id
    HAVING COUNT(*) >= 3
)
SELECT jp.title, u.full_name AS author_name, ac.total_applications
FROM job_postings jp
JOIN employees e ON jp.author = e.user_id
JOIN users u ON e.user_id = u.user_id 
JOIN application_count ac ON jp.job_posting_id = ac.job_posting_id
ORDER BY ac.total_applications DESC;


-- 13. List candidate names and the total number of interviews they have attended for job postings in a specific department, 
-- sorted by the total number of interviews in descending order.

SELECT c.full_name, COUNT(i.interview_id) AS total_interviews, d.department_name
FROM candidates c
JOIN applications a ON c.candidate_id = a.candidate_id
JOIN interviews i ON a.application_id = i.application_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN departments d ON jp.department_id = d.department_id
GROUP BY c.full_name, d.department_name
ORDER BY total_interviews DESC;


-- 14. Find job postings with an interview result average higher than the average result of all job postings in the same department.
-- List the job posting title, average interview result, and department name.

-- avg of each department
WITH avg_department as (
	SELECT jp.department_id, AVG(CASE WHEN i.result = 'Passed' THEN 1 ELSE 0 END) AS department_avg_result
	FROM job_postings jp
	JOIN applications a ON jp.job_posting_id = a.job_posting_id
	JOIN interviews i ON a.application_id = i.application_id
	GROUP BY jp.department_id
)
SELECT jp.title, ad.department_avg_result, d.department_name
FROM job_postings jp 
JOIN departments d ON jp.department_id = d.department_id
JOIN avg_department ad ON ad.department_id = jp.department_id
WHERE ad.department_avg_result > (
	SELECT AVG(CASE WHEN result = 'Passed' THEN 1 ELSE 0 END)
	FROM interviews 
)

-- 15. List all applications and the interviews related to each application, along with the details of the interviewers.
-- Only display applications with at least 2 interviews and sort by application date.

EXPLAIN ANALYZE
select * from interviews
SELECT * FROM employees WHERE department_id = 1;


WITH interview_count AS (
    SELECT application_id, COUNT(*) AS total_interviews
    FROM interviews
    GROUP BY application_id
    HAVING COUNT(*) >= 2
)
SELECT a.application_date, c.full_name, i.interview_date, u.full_name AS interviewer_name, jp.title
FROM applications a
JOIN candidates c ON a.candidate_id = c.candidate_id
JOIN interviews i ON a.application_id = i.application_id
JOIN employees e ON i.interviewer_id = e.user_id
JOIN users u ON e.user_id = u.user_id
JOIN job_postings jp ON a.job_posting_id = jp.job_posting_id
JOIN interview_count ic ON a.application_id = ic.application_id
ORDER BY a.application_date desc














