select c.id as id,p.cityName as province,c.cityName as city,null from s_provinces p
inner join s_provinces c on p.id=c.parentid 
where c.depth=2 and p.cityName='广东省'
union
select d.id as id,p.cityName as province,c.cityName as city,d.cityName as district from s_provinces d 
inner join s_provinces c on c.id=d.parentid 
inner join s_provinces p on p.id=c.parentid
where c.depth=2 and p.cityName='广东省'; 

先查询省的所有城市，再把市查出来，用union关联