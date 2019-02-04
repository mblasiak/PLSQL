update klienci set  nazwa='Nowak Iza' where nazwa like '%Iza%';

 select * from czekoladki where idczekoladki in ('W98','M98','X91');
 update czekoladki set koszt=0.9*koszt where idczekoladki  in('W98','M98','X91');

 update czekoladki set koszt=(select koszt from czekoladki where idczekoladki='W988');

select * from klienci where miejscowosc='Leningrad';


select * from czekoladki where idczekoladki similar to '%9[1-9]';

update czekoladki set koszt=koszt+0.15 where idczekoladki similar to '%9[1-9]';