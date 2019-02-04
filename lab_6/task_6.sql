insert into pudelka values('koko','Kokoine','Im in love with the co co',1,4);

insert into czekoladki values('kok','koki','biała',Null,'Koko','Koko in coco out',0.3,1)

insert into zawartosc values('koko', 'kok', 10);
insert into zawartosc (select 'koko', idczekoladki, 7 from czekoladki limit 1);