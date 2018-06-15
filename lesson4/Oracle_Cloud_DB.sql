


select first_name,
    salary +300
from EMPLOYEES

select 10+15-7+20*7 from dual

/* comentariu pentru mai multe randuri */
-- comentariu pentru un rand

select EMAIL from employees 
select distinct JOB_ID from employees 

describe employees

SELECT * FROM employees
select employee_id, salary*1.1 AS salary_increase, salary*12 AS annual_salary, first_name, last_name from employees 

select FIRST_NAME||' '||LAST_NAME as full_name, phone_number from employees

select MANAGER_ID ||' '||JOB_ID from employees

select MANAGER_ID ||'this is ok'||JOB_ID from employees
select first_name || q'[@gmail.com]' from employees
select 'gmail.com' ||' '||first_name nume_familie from employees
SELECT distinct department_id FROM employees

select distinct salary from employees

select distinct faculty_id from ad_faculty_course_details

select course_id from ad_faculty_course_details order by 1;


describe ad_faculty_course_details

select salary from ad_faculty_details

select * from ad_faculty_details order by 3 desc

select * from employees where department_id=90

select * from employees where LAST_name like 'K%'

select sysdate from dual

select  EMPLOYEE_ID from employees where COMMISSION_PCT is null

select * from employees where last_name=;

select * from employees where salary between 1000 and 5000
select * from employees where salary >=1000 and salary <5000

select * from employees where hire_date between '01-JAN-11' and '01-JAN-15' order by 6 desc

select * from employees
where DEPARTMENT_ID in (10, 50, 90)

select * from employees where first_name in ('Neena','Bruce')


select * from employees where JOB_ID like '%C%' and first_name like 'W%'

select FIRST_NAME||' '||LAST_NAME as full_name, job_id, PHONE_NUMBER 
from employees where PHONE_NUMBER like '6%'

select * from employees where MANAGER_ID is null

select last_name, DEPARTMENT_ID, salary from employees 
where department_id in (60, 80)
--or DEPARTMENT_ID=80
and salary>10000


select * from ad_student_details

select * from ad_course_details

select student_id, first_name, STUDENT_REG_YEAR +2 "course expiry" from ad_student_details

desc ad_course_details
desc ad_student_details
select * from ad_student_details

select sysdate from dual

select * from ad_student_details

select student_id, first_name, parent_id, STUDENT_REG_YEAR REGISTRATION from ad_student_details

select distinct NAME from ad_exam_details

select student_id "Student#", first_name Student, parent_id "Parent Information", STUDENT_REG_YEAR "Registered on" from ad_student_details

select * from ad_cours
select COURSE_ID||', '||COURSE_NAME as "course ID and Title" from ad_course_details;

select STUDENT_ID, NO_OF_DAYS_OFF from ad_student_attendance
where NO_OF_DAYS_OFF >15

select COURSE_NAME, DEPARTMENT_ID from ad_course_details
where  COURSE_ID = 199

select STUDENT_ID, MARKS from ad_exam_results
where MARKS not between 65 and 90

select STUDENT_ID, FIRST_NAME, STUDENT_REG_YEAR from ad_student_details a
where a.FIRST_NAME like 'ROBERT' or a.FIRST_NAME like 'NINA' order by 3

select COURSE_NAME, DEPARTMENT_ID from ad_course_details
where DEPARTMENT_ID in (20, 40)
order by 1

select STUDENT_ID as "Student#", MARKS as "Semester Marks" from ad_exam_results
where (MARKS between 65 and 90) and (COURSE_ID like 199) or (COURSE_ID like 189);


select FIRST_NAME, STUDENT_REG_YEAR from ad_student_details
where STUDENT_REG_YEAR like '%14'

select FIRST_NAME, PARENT_ID from ad_student_details
where EMAIL_ADDR is null

select FIRST_NAME, STUDENT_REG_YEAR, EMAIL_ADDR from ad_student_details
where EMAIL_ADDR is not null
order by 2 desc, 3 desc


select FIRST_NAME from ad_student_details
where FIRST_NAME like '_O%'

select FIRST_NAME from ad_student_details
where FIRST_NAME like '%A%' or FIRST_NAME like '%N%'



select employee_id, first_name
from employees
order by employee_id
fetch first 5 rows only

select * from employees
where employee_id=&emp_id

select first_name, last_name, &column
from employees
where employee_id=&emp_id
order by &number


select first_name, hire_date
from employees
where hire_date='&hire_date'

select first_name, last_name, &&column
from employees
where &&column='&value'

define employee_num=200

select employee_id, last_name, salary, department_id
from employees
where employee_id=&employee_num

undefine employee_num


select first_name, last_name, email, lower (first_name) as first_name
from employees

select first_name, last_name, email, lower (email)
from employees

select first_name, last_name, email, initcap(email)
from employees


select EMAIL,
INSTR (EMAIL,'O',1,2)
from employees
order by 2 desc

select * from employees

select FIRST_NAME
     -- ,INSTR(first_name,'e',1,1)
      ,substr (FIRST_NAME,INSTR(lower(first_name),'e',1,1),1)
from employees

select first_name,
lpad(first_name,)
from employees

select PHONE_NUMBER,
trim (leading 6 from PHONE_NUMBER)
from employees


select round (124.45887, 2),
mod (100,7)

from dual

select sysdate from dual

select sysdate, sessiontimezone, current_date, current_timestamp from dual

select last_name, round((sysdate-hire_date)/7,2) as weeks

from employees

select first_name,

to_char(hire_date,'DD.MM.YYYY')

from employees

select last_name, 
to_char(hire_date, 'fmDD Month YYYY'),
to_char(hire_date, 'DD Month YYYY'),
to_char(hire_date, 'DDspth "of" month YYYY')
from employees

select to_char(123, 'L999')
from dual


select last_name, hire_date
from employees
where hire_date > to_date('May 24, 2015', 'fxMonth DD, YYYY')

select *
from employees
where employee_id > To_number('150')

select last_name, hire_date, to_date('May 24, 2015', 'Month DD, YYYY')
from employees
where hire_date > to_date('May 24, 2015', 'Month DD, YYYY')

select last_name, 
to_char(hire_date,'DD.MM.YYYY')
from employees
where hire_date < to_date(to_char(sysdate,'DD.MM.YYYY'), 'DD.MM.YYYY')

select last_name, salary, NVL(commission_pct, 0),

from employees

select nullif(11,10),
coalesce (commission_pct,manager_id,department_id)
from employees

select avg(salary), max (salary),
min(salary), sum(salary)
from employees
where job_id like '%REP%'

select min(hire_date), max(hire_date)
from employees


select min(last_name), max(last_name)
from employees

select count(distinct department_id)
from employees


select department_id, avg(salary), job_id
from employees
group by department_id, job_id
order by avg(salary) desc

select department_id, avg(salary), job_id
from employees
having avg(salary)>10000
group by department_id, job_id
order by avg(salary) desc

select round(max(avg(salary)),2)
from employees
group by department_id


select job_id, count(job_id)
from employees
group by job_id
having count(job_id) >1
order by 2 desc

select *
from employees
 join  departments
 using (department_id)


select employee_id, last_name, first_name, department_name, job_title
from employees
join  departments
 using (department_id)
 join jobs
 using (job_id)
 join locations
 using (location_id)
 
 select department_id
 from employees e
 join departments
 using (department_id)
 
 select *
 from employees t1
 join employees t2
 on t1.manager_id=t2.employee_id
 