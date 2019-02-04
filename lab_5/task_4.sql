select count(*),idczekoladki from zawartosc group by idczekoladki order by 1 desc;

select sum(sztuk),idpudelka from zawartosc natural join czekoladki where orzechy is Null group by idpudelka order by 1 desc;

select count(idpudelka), idczekoladki from zawartosc full join czekoladki using(idczekoladki) group by idczekoladki order by 1 asc;

select sum(sztuk),idpudelka from artykuly group by idpudelka order by 1 desc;


