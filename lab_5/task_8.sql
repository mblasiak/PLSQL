select (select count(*) from pudelka p where p.idpudelka>p2.idpudelka), 
idpudelka from pudelka p2 order by 1 desc;