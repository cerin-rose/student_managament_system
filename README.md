# **PostgreSQL Database - Students Management**

This repository contains the SQL dump for a PostgreSQL database that includes a table for storing student information, along with several SQL queries for interacting with the data.

## Table of Contents

* [Database Dump Details](https://chatgpt.com/c/67d0d02a-e1d8-8009-ad2c-f796581c4072#database-dump-details)
* [Table Structure](https://chatgpt.com/c/67d0d02a-e1d8-8009-ad2c-f796581c4072#table-structure)
* [SQL Operations](https://chatgpt.com/c/67d0d02a-e1d8-8009-ad2c-f796581c4072#sql-operations)
* [Data Insertion](https://chatgpt.com/c/67d0d02a-e1d8-8009-ad2c-f796581c4072#data-insertion)
* [Queries](https://chatgpt.com/c/67d0d02a-e1d8-8009-ad2c-f796581c4072#queries)

## Database Dump Details

This dump was generated from a PostgreSQL database version 17.4. The database includes a table named `students` which stores the following information:

* `student_id` (integer, primary key, auto-incremented)
* `name` (string, student name)
* `age` (integer, student age)
* `email` (string, student email, NOT NULL)
* `date_enrolled` (date, student enrollment date)

The database dump also includes the creation of the sequence for `student_id` and the setting of constraints.

## Table Structure

### Create Table: `students`

```sql
CREATE TABLE public.students (
    student_id integer NOT NULL,
    name character varying(100),
    age integer,
    email character varying(100) NOT NULL,
    date_enrolled date
);
```

### Sequence for `student_id`

A sequence was created to auto-increment the `student_id`:

```sql
CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
```

### Primary Key Constraint

The `student_id` field is set as the primary key for the table:

```sql
ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
```

## SQL Operations

The following SQL operations are provided to interact with the `students` table.

### Data Insertion

Here is a sample insertion of student records into the `students` table:

```sql
INSERT INTO students (name, age, email, date_enrolled)
VALUES
    ('Cerin Rose', 23, 'cerin.rose@gmail.com', '2023-01-15'),
    ('Chrislin Rose', 20, 'chrislin.rose@gmail.com', '2023-05-01'),
    ('Prakash Maheshwaran', 23, 'prakashmaheshwaran@gmail.com', '2022-09-30'),
    ('Chelladurai Solomon', 54, 'chelladuraisolomon@gmail.com', '2024-02-20'),
    ('Ruth Abraham', 79, 'ruthabraham@gmail.com', '2023-08-12');
```

## Queries

### 1. **Select All Students**

```sql
SELECT * FROM students;
```

### 2. **Select Students Aged Between 20 and 25**

```sql
SELECT * FROM students WHERE age BETWEEN 20 AND 25;
```

### 3. **Select Students Enrolled After January 1, 2023**

```sql
SELECT * FROM students WHERE date_enrolled > '2023-01-01';
```

### 4. **Order Students by Date Enrolled**

```sql
SELECT * FROM students ORDER BY date_enrolled ASC;
```

### 5. **Order Students by Name**

```sql
SELECT * FROM students ORDER BY name ASC;
```

### 6. **Limit the Number of Students to 3**

```sql
SELECT * FROM students LIMIT 3;
```

### 7. **Update Student's Email**

```sql
UPDATE students SET email = 'cerinrose7@yahoo.com' WHERE student_id = 1;
```

### 8. **Delete Student by ID**

```sql
DELETE FROM students WHERE student_id = 5;
```

### 9. **Alter the `email` Column to Set NOT NULL**

```sql
ALTER TABLE students ALTER COLUMN email SET NOT NULL;
```

### 10. **List All Tables in the Database**

```sql
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';
```

### 11. **Select Specific Columns**

```sql
SELECT name, age FROM students;
```

### 12. **Update Student Age**

```sql
UPDATE students SET age = 22 WHERE student_id = 1;
```
