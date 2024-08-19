# List of MySQL Functions

## 1. String Functions
- **`CONCAT(str1, str2, ...)`**: Concatenates multiple strings into one.
- **`SUBSTRING(str, pos, len)`**: Extracts a substring from a string starting at a specified position.
- **`LENGTH(str)`**: Returns the length of a string in bytes.
- **`LOWER(str)`**: Converts all characters in a string to lowercase.
- **`UPPER(str)`**: Converts all characters in a string to uppercase.
- **`TRIM(str)`**: Removes leading and trailing spaces from a string.
- **`REPLACE(str, from_str, to_str)`**: Replaces occurrences of a substring within a string.
- **`LEFT(str, len)`**: Returns the leftmost `len` characters from a string.
- **`RIGHT(str, len)`**: Returns the rightmost `len` characters from a string.
- **`LPAD(str, len, padstr)`**: Pads a string on the left with another string to a specified length.
- **`RPAD(str, len, padstr)`**: Pads a string on the right with another string to a specified length.

## 2. Numeric Functions
- **`ABS(x)`**: Returns the absolute value of a number.
- **`CEIL(x)`**: Rounds a number up to the nearest integer.
- **`FLOOR(x)`**: Rounds a number down to the nearest integer.
- **`ROUND(x, d)`**: Rounds a number to `d` decimal places.
- **`SQRT(x)`**: Returns the square root of a number.
- **`POW(x, y)`** or **`POWER(x, y)`**: Returns the value of `x` raised to the power of `y`.
- **`MOD(x, y)`**: Returns the remainder of `x` divided by `y`.

## 3. Date and Time Functions
- **`CURDATE()`**: Returns the current date.
- **`CURTIME()`**: Returns the current time.
- **`NOW()`**: Returns the current date and time.
- **`DATE_ADD(date, INTERVAL expr unit)`**: Adds a time interval to a date.
- **`DATE_SUB(date, INTERVAL expr unit)`**: Subtracts a time interval from a date.
- **`DATEDIFF(date1, date2)`**: Returns the difference in days between two dates.
- **`DATE_FORMAT(date, format)`**: Formats a date according to the specified format.
- **`DAY(date)`**: Returns the day of the month for a given date.
- **`MONTH(date)`**: Returns the month for a given date.
- **`YEAR(date)`**: Returns the year for a given date.
- **`HOUR(time)`**: Returns the hour for a given time.
- **`MINUTE(time)`**: Returns the minute for a given time.
- **`SECOND(time)`**: Returns the second for a given time.

## 4. Aggregate Functions
- **`COUNT(expr)`**: Returns the number of rows that match a specified condition.
- **`SUM(expr)`**: Returns the sum of a numeric column.
- **`AVG(expr)`**: Returns the average value of a numeric column.
- **`MAX(expr)`**: Returns the maximum value in a column.
- **`MIN(expr)`**: Returns the minimum value in a column.
- **`GROUP_CONCAT(expr)`**: Concatenates values from multiple rows into a single string.

## 5. Control Flow Functions
- **`IF(expr, true_value, false_value)`**: Returns `true_value` if the condition is true, otherwise returns `false_value`.
- **`IFNULL(expr, alt_value)`**: Returns `expr` if it is not null, otherwise returns `alt_value`.
- **`NULLIF(expr1, expr2)`**: Returns `NULL` if `expr1` equals `expr2`, otherwise returns `expr1`.
- **`CASE WHEN condition THEN result [ELSE result] END`**: A conditional statement to return specific results based on conditions.

## 6. JSON Functions
- **`JSON_OBJECT(key, value, ...)`**: Creates a JSON object from a list of key-value pairs.
- **`JSON_ARRAY(value, ...)`**: Creates a JSON array from a list of values.
- **`JSON_EXTRACT(json_doc, path)`**: Extracts a value from a JSON document.
- **`JSON_UNQUOTE(json_val)`**: Unquotes a JSON value.
- **`JSON_SET(json_doc, path, value)`**: Inserts or updates data in a JSON document.

## 7. Information Functions
- **`DATABASE()`**: Returns the name of the current databa
