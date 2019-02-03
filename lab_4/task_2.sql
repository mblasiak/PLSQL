select * from zamowienia natural join klienci where nazwa similar to '%Antoni%';

select * from zamowienia natural join klienci where ulica like '%/%';

select * from zamowienia natural join klienci where miejscowosc like 'Kraków' and datarealizacji between '2013-11-1' and date '2013-11-30';


