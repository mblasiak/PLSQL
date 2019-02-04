select count(z),kw from
(select idzamowienia z, (case
when extract(month from datarealizacji)<4 then 'pierwszy'
when extract(month from datarealizacji)>9 then 'czwarty'
when extract(month from datarealizacji)>4 and extract(month from datarealizacji)<7  then 'drugi' else 'trzeci' end) kw from zamowienia)
 kwartal group by kw;

select count(z),msc from (select extract(month from datarealizacji)  msc, idzamowienia z from zamowienia) q group by msc;

select count(z),wk from (select extract(week from datarealizacji)  wk, idzamowienia z from zamowienia) q group by wk order by 2 asc;

select count(idzamowienia),miejscowosc from zamowienia full join klienci using(idklienta) group by miejscowosc;

select count(idzamowienia),miejscowosc from zamowienia full join klienci using(idklienta) group by miejscowosc order by 1 desc;

