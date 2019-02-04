select count(*),datarealizacji from zamowienia group by datarealizacji order by 1 desc;

select sum(zam) from (select count(*) as zam,datarealizacji from zamowienia group by datarealizacji order by 1 desc) q;
select count(idzamowienia) from zamowienia;

select sum(wart) from (select (sztuk*cena)as wart from artykuly a natural join pudelka p) q;

select idklienta, count(wart), sum(wart) from klienci natural join zamowienia join (select (sztuk*cena)as wart from artykuly a natural join pudelka p group ) sumi using(idzamowienia);

select idklienta, k.nazwa, sum(p.cena*a.sztuk),count(z.idzamowienia) from klienci k natural join zamowienia z natural join artykuly a join pudelka p using(idpudelka) group by idklienta order by 3;