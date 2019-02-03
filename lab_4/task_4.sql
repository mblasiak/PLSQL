select * from pudelka natural join zawartosc join czekoladki using(idczekoladki);

 select * from pudelka natural join zawartosc join czekoladki using(idczekoladki) where idpudelka='heav';

 select * from pudelka p natural join zawartosc join czekoladki using(idczekoladki) where p.nazwa similar to '%Kolekcja%';