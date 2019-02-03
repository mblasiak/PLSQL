set search_path to siatkowka ;

select gospodarze[1]+gospodarze[2]+gospodarze[3]+coalesce(gospodarze[4],0)+coalesce(gospodarze[5],0),goscie[1]+goscie[2]+goscie[3]+coalesce(goscie[4],0)+coalesce(goscie[5],0) from statystyki ;

select gospodarze[1]+gospodarze[2]+gospodarze[3]+coalesce(gospodarze[4],0)+coalesce(gospodarze[5],0) as sumagosp ,goscie[1]+goscie[2]+goscie[3]+coalesce(goscie[4],0)+coalesce(goscie[5],0) as sumagoscfrom statystyki where array_length(gospodarze,1)>4 and greatest(gospodarze[5],goscie[5])>15;
--extended
select gospodarze[1]+gospodarze[2]+gospodarze[3]+coalesce(gospodarze[4],0)+coalesce(gospodarze[5],0) as sumagosp ,goscie[1]+goscie[2]+goscie[3]+coalesce(goscie[4],0)+coalesce(goscie[5],0),goscie[5],gospodarze[5] as sumagosc from statystyki where array_length(gospodarze,1)>4 and greatest(gospodarze[5],goscie[5])>15;

select idmeczu, (case when(gospodarze[1]>goscie[1])then 1 else 0 end)+
(case when(gospodarze[2]>goscie[2])then 1 else 0 end)+
(case when(gospodarze[3]>goscie[3])then 1 else 0 end)+
(case when(gospodarze[4]>goscie[4])then 1 else 0 end)+
(case when(gospodarze[5]>goscie[5])then 1 else 0 end) 
|| ':'||
(case when(gospodarze[1]<goscie[1])then 1 else 0 end)+
(case when(gospodarze[2]<goscie[2])then 1 else 0 end)+
(case when(gospodarze[3]<goscie[3])then 1 else 0 end)+
(case when(gospodarze[4]<goscie[4])then 1 else 0 end)+
(case when(gospodarze[5]<goscie[5])then 1 else 0 end) 
from statystyki ;

select idmeczu, (select sum(un) from unnest(gospodarze) un) as gosp, (select sum(sg) from unnest(goscie) sg)  as goscie from statystyki where (select sum(uq) from unnest(gospodarze) uq)>100;