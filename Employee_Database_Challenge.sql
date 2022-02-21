
-- Joining retirement_info and dept_emp tables

SELECT retirement_titles.emp_no,
    retirement_titles.first_name,
retirement_titles.last_name,
	titles.title,
    titles.from_date,
	titles.to_date
INTO retirement_joined_titles
FROM retirement_titles
LEFT JOIN titles
ON retirement_titles.emp_no = titles.emp_no;



SELECT DISTINCT ON (employees.emp_no) 
employees.emp_no,
    employees.first_name,
employees.last_name,
	employees.birth_date,
    dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON dept_emp.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;
















