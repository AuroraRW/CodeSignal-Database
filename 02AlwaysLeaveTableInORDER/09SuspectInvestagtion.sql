/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
    SELECT Name, ID FROM Grades
    WHERE (Midterm1 / 2 + Midterm2 / 2) < Final
--    WHERE (Midterm1 * 25% + Midterm2 * 25% + Final * 50%) < Final
--    AND (Midterm1 * 50% + Midterm2 * 50%) < Final
    ORDER BY SUBSTRING(Name, 1, 3), ID;
END