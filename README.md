# Student Management System - SQL Project

## Project Overview

The Student Management System is a relational database project developed using MySQL.  
This project is designed to manage student records, course enrollments, batches, faculty details, attendance, fees, and marks efficiently.

The project demonstrates strong understanding of:

- Relational Database Design
- SQL Queries
- Joins
- Aggregate Functions
- Subqueries
- Views
- Stored Procedures
- Triggers
- Functions
- Cursors

---

# Database Features

## Student Management
- Store student personal details
- Manage contact information
- Track joining dates

## Course Management
- Manage available courses
- Store course duration and fees

## Faculty Management
- Store faculty information
- Assign specialization fields

## Batch Management
- Manage course batches
- Assign faculty to batches
- Track batch timings and status

## Enrollment System
- Enroll students into courses and batches
- Maintain enrollment history

## Fees Management
- Track paid and pending fees
- Automatically calculate remaining fees using triggers

## Attendance Tracking
- Store daily attendance records
- Prevent duplicate attendance entries

## Marks Management
- Store exam records and marks
- Prevent invalid marks using triggers

---

# Technologies Used

- MySQL
- MySQL Workbench
- SQL

---

# Database Tables

1. Students
2. Courses
3. Faculty
4. Batches
5. Enrollments
6. Fees
7. Attendance
8. Marks

---

# SQL Concepts Implemented

## Joins
- INNER JOIN
- Multi-table joins

## Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

## Subqueries
- Nested queries
- IN / NOT IN
- Correlated filtering

## Views
- Student course reports
- Attendance reports
- Pending fees reports

## Stored Procedures
- Parameterized procedures
- Reusable database logic

## Triggers
- Automatic fee calculations
- Automatic payment status updates
- Validation triggers

## Functions
- Grade calculation
- Full name generation
- Attendance percentage calculation

## Cursors
- Row-by-row data processing
- Fee report generation

---

# Project Structure

```text
Student_Management/
│
├── schema.sql
├── insert_data.sql
├── joins.sql
├── aggregate_queries.sql
├── subqueries.sql
├── views.sql
├── procedures.sql
├── triggers.sql
├── functions.sql
├── cursors.sql
└── README.md
