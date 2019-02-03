select * from czekoladki where koszt between 0.15 and 0.24 union select * from czekoladki where masa between 15 and 24 ;

select * from czekoladki where koszt not between 0.25 and 0.35  intersect select * from czekoladki where masa between 25 and 35 ;


-- TODO Finish remaning exercises
