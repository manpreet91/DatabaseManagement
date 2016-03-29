select * from customer;

#Problem 1. List the city,state,zip (no duplicates)
select distinct CustCity, CustState, CustZip
from customer;

#Problem 2. List Resources with rates ranging between $10 and $20 
select * 
from resourcetbl
where rate BETWEEN 10 AND 20
order by rate;

#Problem 3. List events with status of approved and denied in July 2013
select Eventno, Dateauth, status 
from eventrequest
where (status='Approved' or status='Denied') AND (Dateauth BETWEEN '2013-07-01' AND '2013-07-31');

#Problem 4. List location number and name of locations that are with Basketball arena.
select Locno, Locname
from facility,location
where facility.Facname='Basketball arena'
	and facility.Facno = location.Facno;
    
#Problem 5. List plan number and sum of number of resources assigned.
select Planno, count(Lineno), sum(NumberFld)
from eventplanline
where lineno >= 1
group by planno;








