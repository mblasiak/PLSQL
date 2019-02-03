select * from pudelka natural join zawartosc join czekoladki using(idczekoladki) where idczekoladki='d09';

select distinct on (p.nazwa) p.nazwa, c.nazwa from pudelka p natural join zawartosc join czekoladki c using(idczekoladki) where c.nazwa similar to 'S%';

select * from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) where z.sztuk>=4;

select distinct on (p.nazwa) * from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) where c.nadzienie='truskawki';


select * from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) where c.czekolada!='gorzka';

select p.nazwa from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) where z.sztuk>2 and c.nazwa='Gorzka truskawkowa';


select p.nazwa from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) except 
select p.nazwa pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) where c.orzechy is not Null;


select p.nazwa from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki)
intersect 
select p.nazwa from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) where c.nadzienie is  Null;

