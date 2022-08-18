select Essn as Manager_ssn, count(*) as Number_of_projects from WORKS_ON where Essn in ( select Mgr_ssn from PROJECT join DEPARTMENT on PROJECT.Dnum=DEPARTMENT.Dnumber where Pname="ProductY") group by Essn;

