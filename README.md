# DBMS-IPL-MANAGEMENT
IPL management System using sql
Players Table
The Players table holds detailed information about IPL players. Each player is uniquely identified by the PlayerID, and other attributes include the player’s name, nationality, date of birth, role (e.g., batsman, bowler, all-rounder), strike rate, and playing styles (both batting and bowling).

PlayerID: A unique code for each player.
Name: Full name of the player.
Nationality: The player's country of origin.
DoB: Date of birth of the player.
Role: The role of the player in the team (e.g., Batsman, Bowler).
StrikeRate: A numerical value representing the player's strike rate.
BowlingStyle/BattingStyle: Descriptions of the player's playing style for both batting and bowling.
b) TitleSponsor Table
The TitleSponsor table stores information about the companies that sponsor the IPL in a given year. Each sponsor is uniquely identified by CompanyName, and the table also includes the sponsor’s business domain and country of origin.

CompanyName: The name of the sponsoring company.
BusinessDomain: The industry or domain in which the company operates.
Country: The country where the company is headquartered.
c) TeamOwner Table
The TeamOwner table records the details of the companies that own IPL teams. Like sponsors, these are identified by CompanyName, with attributes specifying their business domain and country.

CompanyName: The name of the company that owns an IPL team.
BusinessDomain: The business sector of the team-owning company.
Country: The country of origin for the company.
d) HeadCoach Table
The HeadCoach table provides information about the head coaches of IPL teams. Each coach has a unique CoachID, along with other attributes such as their name, years of coaching experience, date of birth, and country.

CoachID: A unique identifier for each head coach.
CoachName: The full name of the coach.
Years_of_Experience: The total years of experience as a coach.
DoB: The date of birth of the coach.
Country: The country the coach is from.
e) Teams Table
The Teams table represents the teams participating in the IPL. Each team is uniquely identified by TeamID and has a corresponding TeamName. The table also references the owning company through a foreign key to the TeamOwner table.

TeamID: A unique identifier for each team.
TeamName: The official name of the IPL team.
CompanyName: A reference to the company that owns the team.
f) Umpire Table
The Umpire table stores information about umpires who officiate IPL matches. Each umpire has a unique UmpireID and additional attributes such as their name, years of experience, and country of origin.

UmpireID: A unique identifier for each umpire.
Name: The full name of the umpire.
YearsOfExperience: The total experience of the umpire.
Country: The country the umpire is from.
g) Stadium Table
The Stadium table holds details about the stadiums where IPL matches take place. The primary key is a composite of the StadiumName and City, ensuring that a stadium in a specific city is uniquely identified.

StadiumName: The name of the stadium.
City: The city where the stadium is located.
Country: The country of the stadium.
Capacity: The seating capacity of the stadium.
RentAmount: The amount of rent charged for using the stadium.
h) Match_1 Table
The Match_1 table stores data about individual IPL matches. Each match is identified by a MatchID and has attributes such as match type, date, and the stadium in which it is held. The table also links to the Players and Stadium tables via foreign keys.

MatchID: A unique identifier for each match.
MatchType: Type of match (e.g., T20).
Date: The date the match is played.
StadiumName/City: A reference to the stadium where the match is played.
PlayerID: A reference to the player associated with the match.
i) UmpiredBy Table
The UmpiredBy table creates a relationship between matches and umpires, representing which umpire officiated a given match. It is a many-to-many relationship linking the Match_1 and Umpire tables.

MatchID: A reference to the match.
UmpireID: A reference to the umpire.
j) IPL Table
The IPL table represents each IPL tournament by year. It links to the title sponsor (TitleSponsor), players (Players), and teams (Teams) participating in a specific year.

Year: The year of the IPL season.
CompanyName: A reference to the title sponsor for that year.
PlayerID: A reference to the player involved in the season.
TeamID: A reference to the team.
k) TeamDetails Table
The TeamDetails table holds information about a specific team for a given IPL season. It tracks the team, its coach, players, sponsors, and the sponsorship amount for that year.

TeamID: A reference to the team.
Year: The IPL year.
PlayerID: A reference to the player.
CoachID: A reference to the head coach.
CompanyName: A reference to the title sponsor.
SponsorAmount: The sponsorship amount for the team.
l) YearwisePlayerDetails Table
The YearwisePlayerDetails table captures detailed statistics for players in each IPL season, including total runs, wickets, and performance metrics.

PlayerID: A reference to the player.
Year: The IPL year.
TeamID: A reference to the team.
TotalWickets/TotalRuns: Total wickets and runs for the season.
MaximumWicketsRuns: Maximum wickets or runs in a match.
PlayerPrice: The player's price for that season.
Out_NotOut: Whether the player was out or not during the match.
m) Played Table
The Played table stores match outcomes and statistics for teams in each match. It tracks runs scored, number of 4s, 6s, wickets, and the winner of the match.

MatchID: A reference to the match.
TeamID: A reference to the team.
TeamRuns: Total runs scored by the team.
4s/6s: Total number of 4s and 6s hit by the team.
Wickets: Number of wickets taken by the team.
Winner: A flag indicating whether the team won or not.

