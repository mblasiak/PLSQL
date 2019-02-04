select (cena - kosztP) as zysk , idpudelka from pudelka join (select sum(sztuk*koszt) kosztP,idpudelka from zawartosc natural join czekoladki group by idpudelka) koszty using(idpudelka) order by 1 desc;

select sum(sztuk*zysk),idpudelka from artykuly join (select (cena - kosztP) as zysk , idpudelka from pudelka join
(select sum(sztuk*koszt) kosztP,idpudelka from zawartosc natural join czekoladki group by idpudelka) koszty using(idpudelka)
) j using(idpudelka) group by idpudelka order by 1 desc;



select sum(zyki) from (select sum(sztuk*zysk) zyki,idpudelka from artykuly join (select (cena - kosztP) as zysk , idpudelka from pudelka join
(select sum(sztuk*koszt) kosztP,idpudelka from zawartosc natural join czekoladki group by idpudelka) koszty using(idpudelka)
) j using(idpudelka) group by idpudelka) ko;



select sum(zyki) from (select sum(stan*zysk) zyki,idpudelka from pudelka join (select (cena - kosztP) as zysk , idpudelka from pudelka join
(select sum(sztuk*koszt) kosztP,idpudelka from zawartosc natural join czekoladki group by idpudelka) koszty using(idpudelka)
) j using(idpudelka) group by idpudelka) ko;