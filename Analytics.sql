# total_tasks per person
select a.name, count(t.id) AS total_tasks
from annotators a
JOIN tasks t ON a.id = t.annotator_id
Group by a.name;

# Average QA accuracy per annotator
select a.name, AVG(q.accuracy) as avg_accuracy
from annotators a
join tasks t on a.id = t.annotator_id
join qa_reviews q on t.id = q.task_id
Group By a.name;

# Quality (<90%)
SELECT a.name, AVG(q.accuracy) AS avg_accuracy
FROM annotators a
JOIN tasks t ON a.id = t.annotator_id
JOIN qa_reviews q ON t.id = q.task_id
GROUP BY a.name
HAVING avg_accuracy < 90;

#Weekly client report
SELECT
COUNT(t.id) AS total_tasks,
AVG(q.accuracy) AS avg_quality
FROM tasks t
JOIN qa_reviews q ON t.id = q.task_id;
