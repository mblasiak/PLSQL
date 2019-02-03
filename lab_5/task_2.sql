select *  from pudelka p natural join zawartosc z natural join czekoladki using(idczekoladki) groupby idpudelka;

select sum(z.sztuk*c.masa)  from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) group by idpudelka;

select sum(z.sztuk*c.masa) as mass, idpudelka  from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) group by idpudelka order by mass desc;
select sum(z.sztuk*c.masa) as mass, idpudelka  from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) group by idpudelka order by mass desc limit 1;

select avg(mass) from (select sum(z.sztuk*c.masa) as mass, idpudelka  from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki) group by idpudelka) name;q

select idpudelka,avg(masa) from zawartosc natural join czekoladki group by idpudelka;

