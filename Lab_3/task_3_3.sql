select * from klienci where miejscowosc not similar to '%\s%';

select * from klienci where length(telefon) >11;

select * from klienci where length(telefon) <12;
