/*INNER JOIN TYPE*/
SELECT * FROM [Book]
INNER JOIN [User]
ON [Book].UserId = [User].UserId;

/*LEFT OUTER JOIN TYPE*/
SELECT * FROM [Book] 
LEFT OUTER JOIN [User]
ON [Book].UserId = [User].UserId
ORDER BY [Book].Bookid;

/*RIGHT OUTER JOIN TYPE*/
SELECT * FROM [Book] 
RIGHT OUTER JOIN [User]
ON [Book].UserId = [User].UserId
ORDER BY [Book].Bookid;

/*FULL OUTER JOIN TYPE*/
SELECT * FROM [Book] 
FULL OUTER JOIN [User]
ON [Book].UserId = [User].UserId
ORDER BY [Book].Bookid;


/*SELF JOIN TYPE*/
with ac as(
    SELECT Category,Income,[Year] FROM Movie
    WHERE Category = 'Action'
),
an as(
    SELECT Category,Income,[Year] FROM Movie
    WHERE Category = 'Animation'
)   /*Create 2 Table(2 Names) FROM 1 TABLE*/
SELECT ac.[Year],ac.Income [Action],an.Income[Animation]
FROM ac INNER JOIN an on ac.[Year]=an.[Year]    /*Use INNER JOIN*/  

SELECT * FROM Football F1 cross join Football F2

/*จัดระเบียบตารางของตัวอย่าง Cross Join*/
SELECT concat(F1.team,'(',F1.position,')') Home,concat(F2.team,'(',F2.position,')') 
Away FROM Football F1 cross JOIN Football F2
WHERE F1.team != F2.team