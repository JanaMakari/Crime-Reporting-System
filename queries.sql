--1. Insert a new Category having the following info: code is PUBLIC, name is Social Security Threat
insert into category(code,name)
values('PUBLIC','Social Security Threat');
--2. Update the name of the policeman whose ssn is 112233.
update policeman as p
set p.FirstName = 'walaa'
where p.ssn = '112233';
--3. List the names of residents in Beirut City.
Select r.FirstName, r.MiddleName, r.LastName
from resident as r
where r.city = 'Beirut';
--4. List the name of policemen who joined after 1/1/2021 ordered alphabetically.
Select p.FirstName 
from policeman as P
where p.Date > 1/1/2021
Order by p.FirstName;
--5. List the ID and status of the crimes reported to the Policeman named “John Smith”.
Select crimereport.ID, crimereport.status
from crimereport, policeman as policeman
where crimereport.pssn = policeman.ssn AND policeman.FirstName = 'John' AND policeman.LastName = 'Smith';
--6. List the number of pending crimes.
Select count(crimereport.status)
from crimereport
where crimereport.status = 'pending';
--7. The total number of crimes in each city.
Select count(*), crimereport.city
from crimereport
GROUP BY crimereport.city;
--8. The name of residents who have reported more than two crimes.
Select resident.FirstName
from resident
where resident.ssn in (Select crimereport.Rssn from crimereport GROUP BY crimereport.Rssn Having Count(*)>2);
--9. The number of crimes in each category
Select count(*),category.name
from crimereport, category
where crimereport.Ccode = category.code
GROUP BY category.name;
--10. The ID of crimes
Select crimereport.ID
from crimereport;