select * from czekoladki where nazwa like 'S%';

select * from czekoladki where nazwa like 'S%i';

select * from czekoladki where nazwa like 'S% m%';

select * from czekoladki where nazwa similar to '(S|B|C)%';

select * from czekoladki where nazwa similar to '(O|%o)rzech%';

select * from czekoladki where nazwa similar to 'S%m%';

select * from czekoladki where nazwa similar to '%(maliny|truskawki)%';

select * from czekoladki where nazwa similar to '[^D-K|S|T]%' order by nazwa;

select * from czekoladki where nazwa similar to 'Słod%' order by nazwa;

select * from czekoladki where nazwa not similar to '%\s%' order by nazwa;

