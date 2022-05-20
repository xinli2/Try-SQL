

-- ============================================================
--   Table: Customer                                              
-- ============================================================
create table Customer
(
    CustomerID INTEGER                not null,
    Name   VARCHAR2(70)           not null,
    Street    VARCHAR2(20)              not null,
    City    VARCHAR2(20)                   null    ,
    State    VARCHAR2(20)                 null    ,
    Zipcode VARCHAR2(20) null,
    constraint PK_Customer primary key (CustomerID)
)
/

-- ============================================================
--   Table: Film                                             
-- ============================================================
create table Film
(
    FilmID INTEGER                not null,
    Title    VARCHAR2(35)           not null,
    RentalPrice float not null,
    constraint PK_Film primary key (FilmID)
)
/

-- ============================================================
--   Table: Reserved                                            
-- ============================================================
create table Reserved
(
    CustomerID  INTEGER                not null,
    FilmID  INTEGER                not null,
    ResDate  Date              null    ,
    constraint PK_Reserved primary key (CustomerID, FilmID)
)
/


alter table Reserved
    add constraint FK_Reserved_APPEARS_IN_Customer foreign key  (CustomerID)
       references Customer (CustomerID)
/

alter table Reserved
    add constraint FK_Reserved_STARS_Film foreign key  (FilmID)
       references Film (FilmID)
/

