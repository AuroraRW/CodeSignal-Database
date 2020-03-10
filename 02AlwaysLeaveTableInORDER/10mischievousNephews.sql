/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN
    SELECT  WEEKDAY(mischief_date) AS weekday, mischief_date, author, title
    FROM mischief
    ORDER BY weekday, FIELD(author, 'Huey', 'Dewey', 'Louie'), mischief_date, title; 
-- mischief_date may not same when weekday is same  
END