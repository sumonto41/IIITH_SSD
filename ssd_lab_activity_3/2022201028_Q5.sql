select DEPARTMENT.Mgr_ssn, Dnumber, dependents from DEPARTMENT join (select Mgr_ssn, count(*) as dependents from DEPARTMENT join (select Dnumber, count(Dlocation) as num from DEPT_LOCATIONS group by Dnumber) SUB on SUB.Dnumber=DEPARTMENT.Dnumber join DEPENDENT on DEPENDENT.Essn=DEPARTMENT.Mgr_ssn where num>=2 group by Mgr_ssn) SUBSUB on DEPARTMENT.Mgr_ssn=SUBSUB.Mgr_ssn;

