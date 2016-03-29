select * from customer;

select Custno, Custname,Phone,City
from Customer;

select Custno, Custname, Phone, City 
from customer
where state ='CO';

select *
from eventrequest
where Estcost>4000
order by Dateheld;

select Eventno, Dateheld, Status, Estaudience
from eventrequest
where (status='Approved' AND  Estaudience>85000   )
	OR (status='Pending' AND Estaudience>7000);
    

select Eventno, Dateheld, Customer.Custno, Custname
from customer, eventrequest
where (City='Boulder') AND (Dateheld BETWEEN '2013-12-1' AND '2013-12-31')
	AND customer.Custno = eventrequest.Custno;


select Eventno, Dateheld, Customer.custno, Custname
from customer inner join eventrequest
on (customer.Custno = eventrequest.Custno)
where (City='Boulder') AND (Datereq BETWEEN '2013-12-1' AND '2013-12-31');


select Planno, AVG(Numberfld) AS AvgResources
from eventplanline
where Locno='L100'
GROUP BY Planno;


select Planno, AVG(Numberfld) AS AvgResources
from eventplanline
where Locno='L100' AND Lineno < 2
GROUP BY Planno;









