---Create DATABASE---

CREATE TABLE Genre (
	GenreID INT Primary Key Not Null,
	DescriptionGenre Varchar(50) Not Null,
	);
CREATE TABLE Book (
	BookID INT  Primary Key Not Null,
	Title Varchar (50) Not Null,
	GenreID INT Not Null,
	AuthorID INT Not Null,
	);

CREATE TABLE Author (
	AuthorID INT  Primary Key Not Null,
	Name Varchar (50) Not Null,
	Surname Varchar (50) Not Null,
	);


 CREATE TABLE Entry (
	EntryID INT Primary Key Not Null,
	BookID INT Not Null,
	CompetitionID INT Not null,
	);

CREATE TABLE Competition (
	CompetitionID  INT Primary Key Not Null,
	Description Varchar(50) Not Null,
	);

---INSERT RECORDS  AUTHOR---

INSERT INTO Author
	Values (301,'Jonh','Doe');

INSERT INTO Author
	Values(302,'Jane','Samoa');

INSERT INTO Author
	Values(303,'jane','Smith');

INSERT INTO Author
	Values(304,'Michael','Johnson');

INSERT INTO Author
	Values(305,'David','Brown');


---INSERT RECORDS Book---


INSERT INTO Book
	Values(201,'Disgrace',101,301);

INSERT INTO Book
	Values(202,'Cry the Beloved Country',102,302);

INSERT INTO Book
	Values(203,'Julys People',103,303);

INSERT INTO Book
	Values(204,'Country of My Skull',104,304);

INSERT INTO Book
	Values(205,'A Dry White Season',105,305);

INSERT INTO Book
	Values(206,'A Dry White Season',106,306);

INSERT INTO Book
	Values(207,'The Conservationist',107,306);

INSERT INTO Book
	Values(208,'My Traitors Heart',108,308);

INSERT INTO Book
	Values(209,'The heart of redness',109,309);

INSERT INTO Book
	Values(210,'Zoo City',110,310);

INSERT INTO Book
	Values(211,'Spud',111,311);

INSERT INTO Book
	Values(212,'Indaba my children',112,312);

INSERT INTO Book
	Values(213,'Beautiful Place to Die',113,313);

INSERT INTO Book
	Values(214,'Things Fall Apart',114,314);

INSERT INTO Book
	Values(215,'Nervous Conditions',115,315);

INSERT INTO Book
	Values(216,'A Question of Power',116,316);

INSERT INTO Book
	Values(217,'Native Life in South Africa',117,317);

INSERT INTO Book
	Values(218,'The heart of redness',118,318);

INSERT INTO Book
	Values(219,'The Famished Road',119,319);

INSERT INTO Book
	Values(220,'Maps',120,320);

---INSERT RECORDS COMPETITION---

INSERT INTO Competition
	Values(501,'Lovely')

INSERT INTO Competition
	Values(502,'Sorrow')

INSERT INTO Competition
	Values(503,'Violens')

INSERT INTO Competition
	Values(504,'Remenisiy')

INSERT INTO Competition
	Values(505,'Memorial')

INSERT INTO Competition
	Values(506,'Memorial')

INSERT INTO Competition
	Values(507,'Memorial')


INSERT INTO Competition
	Values(508,'Autobiographical')
	

INSERT INTO Competition
	Values(509,'Cultural');

INSERT INTO Competition
	Values(510,'Magical');

INSERT INTO Competition
	Values(511,'A Humorous');

INSERT INTO Competition
	Values(512,'Ancient');

INSERT INTO Competition
	Values(513,'Crime');

INSERT INTO Competition
	Values(514, 'Futuristics');

INSERT INTO Competition
	Values(515,'Semi-Autobiographical');

----Create Table Entry-----

INSERT INTO Entry
	Values( 401,201,501);

INSERT INTO Entry
	Values(403,203,501);

INSERT INTO Entry
	Values(404,204,504);

INSERT INTO Entry
	Values(405,205,505);

INSERT INTO Entry
	Values(406,206,506);

INSERT INTO Entry
	Values(407,207,507);

INSERT INTO Entry
	Values(408,208,508);

INSERT INTO Entry
	Values(409,209,509);

INSERT INTO Entry
	Values(410,210,510);

INSERT INTO Entry
	Values(411,211,511);

INSERT INTO Entry
	Values(412,212,512);

INSERT INTO Entry
	Values(413,213,513);

INSERT INTO Entry
	Values(414,214,514);

INSERT INTO Entry
	Values(415,215,515);

INSERT INTO Entry
	Values(416,216,516);

INSERT INTO Entry
	Values(417,217,517);

INSERT INTO Entry
	Values(418,218,518);

INSERT INTO Entry
	Values(419,219,519);

INSERT INTO Entry
	Values(420,220,520);


---Create Table Genre----

INSERT INTO Genre
	Values(101,'Fantasy');

INSERT INTO Genre
	Values(102,'Science Fiction');

INSERT INTO Genre
	Values(103,'Dystopian');

INSERT INTO Genre
	Values(104,'Adventure');

INSERT INTO Genre
	Values(105,'Romentic');

INSERT INTO Genre
	Values(106,'Romentic');

INSERT INTO Genre
	Values(107,'Horror')

INSERT INTO Genre
	Values(108,'Thriller');

INSERT INTO Genre
	Values(109,'Biography');

INSERT INTO Genre
	Values(110,'Historical');

INSERT INTO Genre
	Values(111,'Comedy');

INSERT INTO Genre
	Values(112,'Sport');

INSERT INTO Genre
	Values(113,'Musical');

INSERT INTO Genre
	Values(114,'Crime');

INSERT INTO Genre
	Values(115,'Drama');

INSERT INTO Genre
	Values(116,'War');

INSERT INTO Genre
	Values(117,'Religion')

INSERT INTO Genre
	Values(118,'Adult')

INSERT INTO Genre
	Values(119,'Mystery')

INSERT INTO Genre
	Values(120,'Mythology')


-----Update Table Book----

Select * from Book
update Book
set AuthorID=3000
where BookID=205

Select * from Book
update Book
set AuthorID=2000
where BookID=206

Select * from Book
update Book
set AuthorID=1000
where BookID=207

Select * from Book
update Book
set AuthorID=4000
where BookID=208

Select * from Book
update Book
set AuthorID=5000
where BookID=209

-----Delete from table Book---
Select * from Book
Delete from dbo.Book
Where Title='Julys People' 

Select * from Book
Delete from dbo.Book
Where Title='Disgrace' 


Select * from Book
Delete from dbo.Book
Where Title='Cry the Beloved Country' 


Select * from Book
Delete from dbo.Book
Where Title='Zoo City' 

Select * from Book
Delete from dbo.Book
Where Title='Spud' 

---Alphabetical Ascending Oredr-----
Select * from  Book,Genre,Author

Select * from  Book
order by Book.Title ASC

Select * from  Book
order by Book.BookID ASC

Select * from  Book
order by Book.GenreID ASC

Select * from  Book
order by Book.GenreID ASC

Select * from  Genre
order by Genre.GenreID ASC

Select * from  Genre
order by Genre.DescriptionGenre ASC

Select * from  Author
order by Author.AuthorID ASC

Select * from  Author
order by Author.Name ASC

Select * from  Author
order by Author.Surname ASC



----Alphabetical Oder --------

Select Entry.EntryID.   Entry.CompetitionID.  Entry.BookID.  Book.BookID.
CAST( Genre.DescriptionGenre  AS  NVARCHAR(MAX)) AS DescriptionGenre.
Book.Title, Book.BookID, Book.GenreID, Book.AuthorID From Book
inner Join Book on Entry.BookID = Book.BookID
inner join Author on Book.AuthorID= Author.AuthorID

----Having ------
SELECT Author.first_name, Author.surname, Book.book_id
FROM Author
JOIN (SELECT authour_id, COUNT (book_id) AS Book_id
FROM Book
GROUP BY authour_id
HAVING COUNT (book_id) >= 3)
Book ON Author.author_id = Book.Book_id

----Group By Book And Genre----
Select Genre.GenreID, count (Book.BookID) AS BookNumber
from Genre
left join Book on Book.GenreID = Genre.GenreID
Group By Genre.GenreID
Order by Genre.GenreID



 ---Joining the Table Book and Genre-----

select Book.BookID, Book.AuthorID, Book.Title,Book.GenreID from Book full
join Author on Author.AuthorID= Book.BookID 