select * from zamowienia natural join klienci where (now()-datarealizacji)<=interval '5 year';


select k.nazwa, k.ulica, k.miejscowosc, p.nazwa from zamowienia natural join klienci k natural join artykuly a join pudelka p using  (idpudelka);

select k.nazwa, k.ulica, k.miejscowosc, p.nazwa from zamowienia 
natural join klienci k natural join artykuly a
 join pudelka p using  (idpudelka) 
 where p.nazwa in ('Kremowa fantazja', 'Kolekcja jesienna');

 select distinct on (idklienta)  * from klienci natural join zamowienia order by 1;

 select * from klienci k full join zamowienia using(idklienta) where idklienta is Null;

 select * from klienci k natural join zamowienia z where extract(year from datarealizacji)=2013 and extract(month from datarealizacji)=11;

 select * from klienci natural join zamowienia z natural join artykuly a join pudelka p using(idpudelka) where p.nazwa='Kremowa fantazja' and a.sztuk>=2;

 select * from klienci natural join zamowienia natural join artykuly join pudelka using(idpudelka) join zawartosc using(idpudelka) join czekoladki c using(idczekoladki) where c.orzechy='migdały' ;