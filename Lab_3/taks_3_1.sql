set search_path to cukiernia ;

select * from zamowienia where datarealizacji between;

select * from zamowienia where datarealizacji  between  '2013-11-1' and  '2013-11-20';

select * from zamowienia where datarealizacji  between  '2013-12-1' and  '2013-12-6' or datarealizacji between '2013-12-15' and '2013-12-20';

select * from zamowienia where datarealizacji  between  '2013-12-1' and  '2013-12-31';

select * from zamowienia where extract(month from datarealizacji)=11;
select * from zamowienia where date_part('month',datarealizacji)=11;

select * from zamowienia where extract(month from datarealizacji) in (11,12);
select * from zamowienia where date_part('month',datarealizacji) in (11,12);

select * from zamowienia where extract(day from datarealizacji) in (17,18,19);

select * from zamowienia where extract(week from datarealizacji) in (46,47);


