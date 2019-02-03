select s.idczekoladki, s. nazwa, s.koszt, c.koszt from czekoladki s, czekoladki  c where s.koszt > c.koszt and c.idczekoladki='d08';


select distinct k.nazwa, k2.nazwa from klienci k natural join zamowienia z natural join artykuly a,klienci k2 natural join zamowienia z2 natural join artykuly a2 where k2.nazwa='Górka Alicja' and a.idpudelka=a2.idpudelka;

select distinct  k.nazwa, k.ulica from klienci k natural join zamowienia z natural join artykuly a,klienci k2 natural join zamowienia z2 natural join artykuly a2 where k2.miejscowosc='Katowice' and  a.idpudelka=a2.idpudelka;