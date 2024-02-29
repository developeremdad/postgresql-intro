-- Active: 1709100154455@@127.0.0.1@5432@ph

-- Get all data
SELECT * FROM newUser;

-- Add a new column to the table
ALTER TABLE newUser
    ADD COLUMN email varchar(50) DEFAULT 'default@gmail.com' NOT NULL;

-- Insert a single new row
INSERT INTO newUser VALUES(5, 'emdad5', 42);

-- Drop a single column.
ALTER TABLE newUser DROP COLUMN email;

-- Rename a existing column in the table.
ALTER TABLE newUser RENAME age to user_age;

-- Change column type
ALTER TABLE newUser ALTER COLUMN name TYPE VARCHAR(40);

-- Add new constraint
ALTER TABLE newUser ALTER COLUMN user_age set NOT NULL;

-- Remove a constraint
ALTER TABLE newUser ALTER COLUMN user_age DROP NOT NULL;

-- =============================================================================================================================

--  Add constraint to unique.
ALTER TABLE newUser 
    ADD constraint unique_newUser_user_age UNIQUE(user_age);

-- Add constraint to primary key.
ALTER TABLE newUser 
    ADD constraint pk_newUser_id PRIMARY KEY(id);

-- Drop constraint
ALTER TABLE newUser 
    DROP constraint unique_newUser_user_age;

-- Get all data from person table
SELECT * FROM person;

-- Clear/Empty the table data but did not change the table schema.
TRUNCATE TABLE person;



