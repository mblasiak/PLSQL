select count(*) from czekoladki ;

select count(*) from czekoladki where nadzienie is not Null;
select count(nadzienie) from czekoladki;

select sum(sztuk),idpudelka from zawartosc group by idpudelka order by 1 desc limit 1; 

select sum(sztuk),idpudelka from zawartosc group by idpudelka order by 1;

select sum(sztuk),idpudelka from zawartosc natural join czekoladki where orzechy is Null group by idpudelka order by 1 desc;

select sum(sztuk),idpudelka from zawartosc natural join czekoladki where czekolada='mleczna' group by idpudelka order by 1 desc;

