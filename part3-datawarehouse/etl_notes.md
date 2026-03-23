## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset contained inconsistent date formats such as DD/MM/YYYY and MM-DD-YYYY.
Resolution: All dates were converted into a standard YYYY-MM-DD format and stored in the dim_date table with separate attributes for year, month, and day.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values in fields like quantity and total_amount.
Resolution: NULL values were either replaced with default values (e.g., 0 for quantity) or excluded if critical fields were missing to ensure data integrity.

### Decision 3 — Normalizing Category Names
Problem: Product categories had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".
Resolution: All category values were standardized to proper case (e.g., "Electronics") before inserting into the dim_product table.