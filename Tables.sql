-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" varchar(10)   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(10)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "Department_Manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "gender" varchar(5)   NOT NULL,
    "hire_date" date   NOT NULL,
	CONSTRAINT "pk_Department_Emp" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "Title" (
    "emp_no" int   NOT NULL,
    "title" varchar(20) NOT NULL,
	"from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

ALTER TABLE "Department_Emp" ADD CONSTRAINT "fk_Department_Emp_dep_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Emp" ADD CONSTRAINT "fk_Department_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no") 
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no") 
REFERENCES "Employees" ("emp_no");




