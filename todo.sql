CREATE DATABASE todolist (
  \connect todolist(
    CREATE TABLE students(
      id SERIAL PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      details VARCHAR(1000000) NULL,
      priority INTEGER DEFAULT 1,
      created_at current_timestamp NOT NULL,
      completed_at current_timestamp NULL
    )
  )
);

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP  NOT NULL,
  completed_at TIMESTAMP  NULL
);

INSERT INTO students (title, details, priority, created_at) VALUES
('car', 'wash it', 5, current_timestamp);
INSERT INTO students (title, details, priority, created_at) VALUES
('pets', 'love them', 3, current_timestamp);
INSERT INTO students (title, details, priority, created_at) VALUES
('homework', 'do it', 2, current_timestamp);
INSERT INTO students (title, details, priority, created_at) VALUES
('dinner', 'cook it', 4, current_timestamp);
INSERT INTO students (title, details, priority, created_at) VALUES
('sleep', 'all the hours', 1, current_timestamp);


SELECT title FROM students WHERE completed_at IS NULL;
SELECT title FROM students WHERE priority > 1;
UPDATE students SET completed_at = current_timestamp WHERE id = 1;
DELETE FROM students WHERE completed_at = NOT NULL;
