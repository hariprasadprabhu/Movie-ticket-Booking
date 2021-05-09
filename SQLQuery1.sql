create table SeatStatus (showid int,startTime datetime, seatNumber varchar(max),isOccupied int,isPending int)

select * from SeatStatus where isOccupied=1


insert into SeatStatus values(15,GETDATE(),11,0,0)
insert into SeatStatus values(15,GETDATE(),12,0,0)
insert into SeatStatus values(15,GETDATE(),13,0,0)
insert into SeatStatus values(15,GETDATE(),14,0,0)
insert into SeatStatus values(15,GETDATE(),15,0,0)
insert into SeatStatus values(15,GETDATE(),16,0,0)
insert into SeatStatus values(15,GETDATE(),17,0,0)
insert into SeatStatus values(15,GETDATE(),18,0,0)
insert into SeatStatus values(15,GETDATE(),21,0,0)
insert into SeatStatus values(15,GETDATE(),22,0,0)
insert into SeatStatus values(15,GETDATE(),23,0,0)
insert into SeatStatus values(15,GETDATE(),24,0,0)
insert into SeatStatus values(15,GETDATE(),25,0,0)
insert into SeatStatus values(15,GETDATE(),26,0,0)
insert into SeatStatus values(15,GETDATE(),27,0,0)
insert into SeatStatus values(15,GETDATE(),28,0,0)
insert into SeatStatus values(15,GETDATE(),31,0,0)
insert into SeatStatus values(15,GETDATE(),32,0,0)
insert into SeatStatus values(15,GETDATE(),33,0,0)
insert into SeatStatus values(15,GETDATE(),34,0,0)
insert into SeatStatus values(15,GETDATE(),35,0,0)
insert into SeatStatus values(15,GETDATE(),36,0,0)
insert into SeatStatus values(15,GETDATE(),37,0,0)
insert into SeatStatus values(15,GETDATE(),38,0,0)
insert into SeatStatus values(15,GETDATE(),41,0,0)
insert into SeatStatus values(15,GETDATE(),42,0,0)
insert into SeatStatus values(15,GETDATE(),43,0,0)
insert into SeatStatus values(15,GETDATE(),44,0,0)
insert into SeatStatus values(15,GETDATE(),45,0,0)
insert into SeatStatus values(15,GETDATE(),46,0,0)
insert into SeatStatus values(15,GETDATE(),47,0,0)
insert into SeatStatus values(15,GETDATE(),48,0,0)
insert into SeatStatus values(15,GETDATE(),51,0,0)
insert into SeatStatus values(15,GETDATE(),52,0,0)
insert into SeatStatus values(15,GETDATE(),53,0,0)
insert into SeatStatus values(15,GETDATE(),54,0,0)
insert into SeatStatus values(15,GETDATE(),55,0,0)
insert into SeatStatus values(15,GETDATE(),56,0,0)
insert into SeatStatus values(15,GETDATE(),57,0,0)
insert into SeatStatus values(15,GETDATE(),58,0,0)
insert into SeatStatus values(15,GETDATE(),61,0,0)
insert into SeatStatus values(15,GETDATE(),62,0,0)
insert into SeatStatus values(15,GETDATE(),63,0,0)
insert into SeatStatus values(15,GETDATE(),64,0,0)
insert into SeatStatus values(15,GETDATE(),65,0,0)
insert into SeatStatus values(15,GETDATE(),66,0,0)
insert into SeatStatus values(15,GETDATE(),67,0,0)
insert into SeatStatus values(15,GETDATE(),68,0,0)
insert into SeatStatus values(15,GETDATE(),71,0,0)
insert into SeatStatus values(15,GETDATE(),72,0,0)
insert into SeatStatus values(15,GETDATE(),73,0,0)
insert into SeatStatus values(15,GETDATE(),74,0,0)
insert into SeatStatus values(15,GETDATE(),75,0,0)
insert into SeatStatus values(15,GETDATE(),76,0,0)
insert into SeatStatus values(15,GETDATE(),77,0,0)
insert into SeatStatus values(15,GETDATE(),78,0,0)
drop tabl5
update movies set mphoto='../assete/Images/thorragnarok.jpg' where mid=5
../assete/Images/AvengersEndGame.jpeg

create table movies (mid int, mname varchar(max),mphoto varchar(max),releaseDate datetime);
create table shows (showid int,mid int,showtime datetime, ticketGoldPrice int, ticketDimondprice int)
select * from movies
select * from shows


insert into movies values(1,'Avenger EndGames', '../assete/Images/AvengersEndGame.jpg','2021-05-05')
insert into movies values(2,'Dark', '../assete/Images/Dark.jpg','2021-04-05')
insert into movies values(3,'Spider Man Home Comming', '../assete/Images/spidermanhomecomming.jpg','2021-05-02')
insert into movies values(4,'Antman And Wasp', '../assete/Images/antmanandwasp.jpg','2021-03-05')
insert into movies values(5,'Thor Ragnarok', '../assete/Images/thorragnarok.jpg','2021-05-01')


insert into shows values(1,1,'2021-05-08 10:00:00',250,400)
insert into shows values(2,1,'2021-05-08 14:00:00',250,400)
insert into shows values(3,1,'2021-05-08 19:00:00',250,400)
insert into shows values(4,1,'2021-05-08 22:00:00',300,500)

insert into shows values(5,2,'2021-05-08 10:00:00',250,400)
insert into shows values(6,2,'2021-05-08 14:00:00',250,400)
insert into shows values(7,3,'2021-05-08 19:00:00',250,400)
insert into shows values(8,3,'2021-05-08 22:00:00',300,500)

insert into shows values(9,4,'2021-05-08 10:00:00',250,400)
insert into shows values(10,4,'2021-05-08 14:00:00',250,400)
insert into shows values(11,4,'2021-05-08 19:00:00',250,400)
insert into shows values(12,4,'2021-05-08 22:00:00',300,500)

insert into shows values(13,5,'2021-05-08 10:00:00',250,400)
insert into shows values(14,5,'2021-05-08 14:00:00',250,400)
insert into shows values(15,5,'2021-05-08 19:00:00',250,400)


select showtime,ticketGoldPrice,ticketDimondprice,mname,mphoto from shows s, movies m where s.mid=m.mid and s.showid=1

