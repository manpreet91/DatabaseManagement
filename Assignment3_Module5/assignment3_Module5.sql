#Problem 1
#List the event number, event date and count of the event plans.
#Only include event requests in the result if the event request with a work date in December 2013.

select eventrequest.eventno, eventrequest.dateheld, count(Planno) as eventplans
from eventrequest, eventplan
where eventrequest.eventno = eventplan.eventno
AND workdate BETWEEN '2013-12-01' AND '2013-12-31'
group by eventno
having eventplans >1;

#Problem 2
#List if event is held in Basketball arena in Dec 2013.
select Planno, eventplan.eventno, Workdate, Activity
from eventplan, facility, eventrequest
where Workdate BETWEEN '2013-12-01' AND '2013-12-31'
AND eventplan.Eventno = eventrequest.eventno
AND eventrequest.Facno = facility.Facno
AND facility.Facname = 'Basketball arena';

#Problem 3
#List if plan managed by Mary Manager of period Oct to Dec 2013
select eventrequest.eventno,dateheld,status,estcost
from eventrequest, employee, eventplan, facility
where eventrequest.eventno = eventplan.eventno
AND eventplan.empno = employee.empno
AND eventrequest.facno = facility.facno
AND employee.empname = 'Mary Manager'
AND facility.facname = 'Basketball arena'
AND Dateheld BETWEEN '2013-10-01' AND '2013-12-31';

#Problem 4
#List if plan has activity of Operation.
select eventplanline.planno, lineno, Resname, NumberFld, Locname, Timestart, timeend
from eventplanline,resourcetbl,location,facility,eventplan
where eventplanline.locno = location.locno
AND location.facno = facility.facno
AND facility.Facname = 'Basketball arena'
AND eventplanline.Planno = eventplan.Planno
AND eventplan.Activity = 'Operation'
AND eventplanline.Resno = resourcetbl.resno
and Workdate BETWEEN '2013-10-01' AND '2013-12-31';

#2. database modification problems
#Problem 1. Insert new value
insert into facility
 (facno, facname)
 VALUES('F104', 'Swimming Pool'); 
 select * from facility;

#Problem 2. Update previous value
update Location
SET Locname = 'Gate'
WHERE locNo = 'L107';

#Problem 3. Delete existing value
delete from Location
where locNo = 'L108';










