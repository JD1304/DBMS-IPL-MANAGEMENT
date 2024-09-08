
--Queries 


--1. List of all the players who have been participating in the IPL in the past years/particular year

--All the years:
SELECT playerid, Name FROM players;

--Particular years:
SELECT playerid, Name FROM 
players NATURAL JOIN YearWisePlayerDetails 
WHERE Year = 2019;


--2. List of all the players who have participated from the same team in all the seasons of IPL

SELECT distinct playerid,  teamid, Name FROM 
(SELECT count(distinct teamid),playerid FROM yearwiseplayerdetails
 GROUP BY playerid HAVING count(distinct teamid) = 1 ) AS r2
 	NATURAL JOIN yearwiseplayerdetails
NATURAL JOIN players as r1;


--3. The champions of a particular year/all the years 

--All the Years:
SELECT Year, TeamID, CompanyName FROM ipl;

--Particular Year
SELECT Year, TeamID, CompanyName FROM ipl  WHERE Year = 2022;



--4. The winning teams in all the matches played during an IPL season

SELECT * FROM
(SELECT MatchID, matchtype, TeamID AS winning_team FROM Match_1 NATURAL JOIN played 
WHERE extract(year FROM Date) = 2015 and winner='1') AS r1
NATURAL JOIN 
(SELECT MatchID, matchtype, TeamID as losing_team FROM Match_1 NATURAL JOIN played WHERE 
extract(year FROM Date) = 2015 and winner='0') AS r2;




--5. The details of the coaches for any particular year/any particular team

--Particular Year
SELECT Year, CoachID, CoachName, Teamid FROM headcoach NATURAL JOIN teamdetails WHERE Year = 2019;

--Particular Team 
SELECT  Teamid,Year, CoachID, CoachName FROM headcoach NATURAL JOIN teamdetails WHERE teamid = 'CSK';




--6. Details of Owner Company of a particular team

SELECT teamid,o.* FROM TeamOwner as o JOIN Teams 
on o.companyname WHERE TeamID = 'CSK';
   



--7. All the information of any particular player like his age, DOB, country, his speciality, etc.

SELECT * FROM Players WHERE Name = 'M S Dhoni';
	
	
--8. The details(runs, wickets) of any particular player for a particular season


--For a particular season
	
SELECT Name, TotalWickets, TotalRuns FROM YearwisePlayerDetails NATURAL JOIN Players WHERE PlayerID = '00012' and Year = 2019;
	







