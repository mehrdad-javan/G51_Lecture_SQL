# MySQL Table Column Types

## 1. Numeric Data Types
- **INT**: A standard integer type. Variants include `TINYINT`, `SMALLINT`, `MEDIUMINT`, `BIGINT`.
- **FLOAT**: A floating-point number with single precision.
- **DOUBLE**: A floating-point number with double precision.
- **DECIMAL**: A fixed-point number with user-defined precision and scale.
- **BIT**: A bit-field type for storing binary data.

## 2. String Data Types
- **CHAR**: A fixed-length string.
- **VARCHAR**: A variable-length string.
- **TEXT**: A variable-length string with a maximum length of 65,535 characters.
- **TINYTEXT**: A variable-length string with a maximum length of 255 characters.
- **MEDIUMTEXT**: A variable-length string with a maximum length of 16,777,215 characters.
- **LONGTEXT**: A variable-length string with a maximum length of 4,294,967,295 characters.
- **BINARY**: A fixed-length binary string.
- **VARBINARY**: A variable-length binary string.
- **BLOB**: Binary Large Object that can hold a variable amount of binary data. Variants include `TINYBLOB`, `MEDIUMBLOB`, `LONGBLOB`.

## 3. Date and Time Data Types
- **DATE**: A date value (year, month, day).
- **TIME**: A time value (hour, minute, second).
- **DATETIME**: A combined date and time value.
- **TIMESTAMP**: A timestamp value that MySQL updates automatically whenever the row is updated.
- **YEAR**: A year in two- or four-digit format.

## 4. Spatial Data Types
- **GEOMETRY**: A base type for geometry values.
- **POINT**: A single point in 2D space.
- **LINESTRING**: A line with two or more points.
- **POLYGON**: A polygon with one or more rings.
- **MULTIPOINT**: A collection of points.
- **MULTILINESTRING**: A collection of linestrings.
- **MULTIPOLYGON**: A collection of polygons.
- **GEOMETRYCOLLECTION**: A collection of geometry objects.

## 5. JSON Data Type
- **JSON**: Stores JSON (JavaScript Object Notation) data, which is text-based data format used to represent structured data.

## 6. Boolean Data Type
- **BOOLEAN** or **BOOL**: A synonym for `TINYINT(1)`, representing true or false values.

## 7. Enumerated and Set Types
- **ENUM**: An enumeration, a string object that can have one value chosen from a list of permitted values.
- **SET**: A string object that can have zero or more values, each of which must be chosen from a list of permitted values.

## 8. Other Data Types
- **SERIAL**: An alias for `BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE`.
- **ENUM**: An enumeration that allows one string value from a predefined set.
- **SET**: Similar to ENUM but allows multiple values from a predefined set.
