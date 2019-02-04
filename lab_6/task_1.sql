insert into czekoladki 
(idczekoladki,
nazwa,
czekolada,
orzechy,
nadzienie,
opis,
koszt,
masa)
values (
'W98',
'Biały kieł',
'biała',
'laskowe',
'marcepan',
'Rozpływające się w rękach i kieszeniach',
0.45,
20);

insert into klienci 
values('90',
'Matusiak Edward', 
'Kropiwnickiego 6/3',
'Leningrad',
'31-471',
'031 423 45 38'),
('91',
'Matusiak Alina',
'Kropiwnickiego 6/3',
'Leningrad',
'31-471',
'031 423 45 38'),
('92',
'Kimono Franek',
'Karateków 8',
'Mistrz',
'30-029',
'501 498 324');

insert into klienci values(select '93', 'Matusiak Iza', ulica, miejscowosc, kod, telefon from klienci where nazwa='Edwarda Matusiaka');