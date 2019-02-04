select sum(masa_p) as suma_mas from 
(select (stan*masac) as masa_p from 
(select sum(sztuk * masa) masac,idpudelka from zawartosc natural join czekoladki group by idpudelka) mp 
join pudelka using(idpudelka)) p ;

select sum(sum_cp) from (select sum(stan*cena) as sum_cp ,idpudelka from pudelka group by idpudelka) q;
