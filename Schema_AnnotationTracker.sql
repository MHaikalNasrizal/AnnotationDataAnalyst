Create Database DataAnnotationTracker;
Use DataAnnotationTracker;

Create table annotators (
id INT primary key auto_increment,
name varchar(50)
 );
 
 Create table tasks(
id INT primary key auto_increment,
annotator_id INT,
status VARchar(20),
created_at DATE,
foreign key (annotator_id) references annotators(id)
 );
 
 Create table qa_reviews (
 id INT primary key auto_increment,
 task_id INT,
 accuracy DECIMAL(5,2),
 foreign key(task_id) references tasks(id)
 );

INSERT INTO annotators(name) VALUES
('Haikal'),
('Aina'),
('Farah');

INSERT INTO tasks(annotator_id,status,created_at) VALUES
(1,'completed','2025-01-10'),
(1,'completed','2025-01-11'),
(2,'completed','2025-01-11'),
(3,'completed','2025-01-12'),
(2,'completed','2025-01-12'),
(1,'completed','2025-01-13');

INSERT INTO qa_reviews(task_id,accuracy) VALUES
(1,95),
(2,88),
(3,92),
(4,85),
(5,90),
(6,97);

