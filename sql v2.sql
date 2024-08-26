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
	
CREATE TABLE "departments"(
    "department_id" SERIAL NOT NULL,
    "department_name" VARCHAR(100) NOT NULL,
    "manager_id" INTEGER NULL,
    "description" TEXT NULL
);
ALTER TABLE
    "departments" ADD PRIMARY KEY("department_id");
CREATE TABLE "candidates"(
    "candidate_id" SERIAL NOT NULL,
    "full_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "dob" DATE NOT NULL,
    "gender" VARCHAR(20) NOT NULL,
    "phone_number" VARCHAR(20) NOT NULL,
    "resume" TEXT NOT NULL
);
ALTER TABLE
    "candidates" ADD PRIMARY KEY("candidate_id");
CREATE TABLE "positions"(
    "position_id" SERIAL NOT NULL ,
    "position_name" VARCHAR(100) NOT NULL,
    "description" TEXT NULL
);
ALTER TABLE
    "positions" ADD PRIMARY KEY("position_id");
CREATE TABLE "employee_position"(
    "id" SERIAL NOT NULL,
    "employee_id" INTEGER NOT NULL,
    "position_id" INTEGER NOT NULL,
    "create_at" DATE NOT NULL
);
ALTER TABLE
    "employee_position" ADD PRIMARY KEY("id");
CREATE TABLE "employees"(
    "employee_id" SERIAL NOT NULL,
    "hire_date" DATE NOT NULL,
    "salary" INTEGER NULL,
    "user_id" INTEGER NOT NULL,
    "department_id" INTEGER NULL,
    "position_id" INTEGER NULL
);
ALTER TABLE
    "employees" ADD PRIMARY KEY("employee_id");
CREATE TABLE "job_postings"(
    "job_posting_id" SERIAL NOT NULL,
    "title" VARCHAR(100) NOT NULL,
    "description" TEXT NULL,
    "department_id" INTEGER NOT NULL,
    "position_id" INTEGER NOT NULL,
    "post_date" DATE NOT NULL,
    "close_date" DATE NULL,
    "status" VARCHAR(10) CHECK (status IN ('Open', 'Closed', 'On Hold')) NOT NULL DEFAULT 'Open',
    "author" INTEGER NOT NULL
);
ALTER TABLE
    "job_postings" ADD PRIMARY KEY("job_posting_id");
CREATE TABLE "interviews"(
    "interview_id" SERIAL NOT NULL,
    "application_id" INTEGER NOT NULL,
    "interviewer_id" INTEGER NOT NULL,
    "interview_date" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "notes" TEXT NULL,
    "result" VARCHAR(10) CHECK (result IN ('Passed', 'Failed', 'On Hold', 'Processing')) NOT NULL DEFAULT 'Processing'
);
ALTER TABLE
    "interviews" ADD PRIMARY KEY("interview_id");
CREATE TABLE "users"(
    "user_id" SERIAL NOT NULL,
    "username" VARCHAR(50) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "is_verified" BOOLEAN NULL DEFAULT false,
    "full_name" VARCHAR(50) NULL,
    "dob" DATE NULL,
    "phone_number" VARCHAR(20) NULL,
    "role" VARCHAR(20) NOT NULL DEFAULT 'user',
    "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE
    "users" ADD PRIMARY KEY("user_id");
ALTER TABLE
    "users" ADD CONSTRAINT "users_username_unique" UNIQUE("username");
ALTER TABLE
    "users" ADD CONSTRAINT "users_email_unique" UNIQUE("email");
CREATE TABLE "applications"(
    "application_id" SERIAL NOT NULL,
    "job_posting_id" INTEGER NOT NULL,
    "candidate_id" INTEGER NOT NULL,
    "application_date" DATE NOT NULL,
    "status" VARCHAR(15) CHECK (status IN ('Submitted', 'Under Review', 'Interviewed', 'Offered', 'Hired', 'Rejected')) NOT NULL DEFAULT 'Submitted'
);
ALTER TABLE
    "applications" ADD PRIMARY KEY("application_id");
ALTER TABLE
    "interviews" ADD CONSTRAINT "interviews_application_id_foreign" FOREIGN KEY("application_id") REFERENCES "applications"("application_id");
ALTER TABLE
    "interviews" ADD CONSTRAINT "interviews_interviewer_id_foreign" FOREIGN KEY("interviewer_id") REFERENCES "employees"("employee_id");
ALTER TABLE
    "employee_position" ADD CONSTRAINT "employee_position_employee_id_foreign" FOREIGN KEY("employee_id") REFERENCES "employees"("employee_id");
ALTER TABLE
    "employee_position" ADD CONSTRAINT "employee_position_position_id_foreign" FOREIGN KEY("position_id") REFERENCES "positions"("position_id");
ALTER TABLE
    "employees" ADD CONSTRAINT "employees_department_id_foreign" FOREIGN KEY("department_id") REFERENCES "departments"("department_id");
ALTER TABLE
    "job_postings" ADD CONSTRAINT "job_postings_department_id_foreign" FOREIGN KEY("department_id") REFERENCES "departments"("department_id");
ALTER TABLE
    "job_postings" ADD CONSTRAINT "job_postings_position_id_foreign" FOREIGN KEY("position_id") REFERENCES "positions"("position_id");
ALTER TABLE
    "job_postings" ADD CONSTRAINT "job_postings_author_foreign" FOREIGN KEY("author") REFERENCES "employees"("employee_id");
ALTER TABLE
    "employees" ADD CONSTRAINT "employees_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "users"("user_id");
ALTER TABLE
    "applications" ADD CONSTRAINT "applications_job_posting_id_foreign" FOREIGN KEY("job_posting_id") REFERENCES "job_postings"("job_posting_id");
ALTER TABLE
    "applications" ADD CONSTRAINT "applications_candidate_id_foreign" FOREIGN KEY("candidate_id") REFERENCES "candidates"("candidate_id");