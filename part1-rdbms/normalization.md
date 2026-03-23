# Normalization

## Anomaly Analysis

### Insert Anomaly
In the current dataset, new products cannot be added unless an order exists.

Example:
- Columns: product_id, product_name, category, unit_price
- Since product information is stored only within order records, a new product cannot be inserted independently without creating an order.

---

### Update Anomaly
Customer and product information is duplicated across multiple rows, leading to inconsistency risks.

Example:
- Rows: Row 1 and Row 11
- Columns: product_id = P004, product_name = Notebook
- If the product price or name changes, it must be updated in multiple rows, which may lead to inconsistent data if not done properly.

---

### Delete Anomaly
Deleting an order can result in loss of important product or customer data.

Example:
- If the only record of product_id = P001 (Laptop) is deleted, all information about that product is lost.

---

## Normalization Justification

While storing all data in a single table may seem simpler initially, it introduces redundancy and data integrity issues. In the dataset, customer details such as name, email, and city are repeated for every order, which leads to update anomalies when any customer information changes. Similarly, product details like name, category, and price are duplicated across multiple rows, increasing storage usage and the risk of inconsistency.

Insert anomalies arise because new entities such as products or customers cannot be added independently without creating an order. Delete anomalies occur when removing an order results in the loss of related product or customer information if they exist only in that row.

By normalizing the data into separate tables—Customers, Products, SalesReps, Orders, and OrderItems—we ensure that each entity is stored only once. This eliminates redundancy, improves consistency, and allows independent management of each entity. Relationships are maintained using foreign keys, ensuring data integrity while enabling efficient querying.

Therefore, normalization is not over-engineering but a necessary step to design a scalable, maintainable, and reliable database system.