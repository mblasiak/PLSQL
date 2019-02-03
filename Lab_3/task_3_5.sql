select count(idklienta) from klienci except select idklienta from zamowienia;

select idpudelka from  artykuly except select idpudelka from artykuly;

select nazwa from klienci where nazwa similar to '%(Rz|rz)%' union select nazwa from czekoladki where nazwa similar to '%(rz|Rz)%' union select nazwa from pudelka where nazwa similar to '%(Rz|rz)%';

select idczekoladki from czekoladki except select idczekoladki from zawartosc;