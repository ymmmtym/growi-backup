# MySQL
## Commands
### Select
```sql=
SELECT * FROM item;
SELECT test-id AS id ,test-name AS name FROM item;

SELECT * FROM item LEFT OUTER JOIN cotegory ON item.id = category.id;

SELECT count(*) FROM item;

SELECT distinct id FROM item;

SELECT * FROM item WHERE price >= 1000 and category = 'furniture';
SELECT * FROM item WHERE price in (1000,3000);
SELECT * FROM item WHERE name LIKE '%desk';

SELECT * FROM item WHERE id IS NOT NULL;

SELECT * FROM item ORDER BY price DESC;

SELECT * FROM item INNER JOIN account ON item.name = account.history;
```

### Insert
```sql=
INSERT INTO item(id, name) VALUES(5, 'chair');
```

### Update
```sql=
UPDATE item SET price = 2000 WHERE price = 1500;
```

### Delete
```sql=
DELETE FROM item;
DELETE FROM item WHERE price <= 500;
```
