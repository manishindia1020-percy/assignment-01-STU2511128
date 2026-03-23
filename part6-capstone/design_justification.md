## Storage Systems

The architecture uses a combination of transactional databases, data lakes, data warehouses, and vector databases to support the hospital’s diverse requirements. A relational database such as PostgreSQL is used for transactional workloads, including patient records and real-time updates, as it ensures strong ACID properties and data consistency. For real-time ICU monitoring data, a data lake (e.g., Amazon S3) is used to store high-volume streaming data such as vitals and logs in raw format. This allows scalable and cost-effective storage of semi-structured and unstructured data.

A data warehouse such as Snowflake or BigQuery is used for analytical workloads, including monthly reporting on bed occupancy and departmental costs. The warehouse enables fast aggregation queries and supports business intelligence tools. Additionally, a vector database such as FAISS or Pinecone is used to store embeddings of patient records and medical documents. This enables semantic search capabilities, allowing doctors to query patient history in natural language.

## OLTP vs OLAP Boundary

The OLTP system consists of the transactional database (PostgreSQL), where real-time patient data, treatment updates, and hospital operations are recorded. This system is optimized for fast inserts, updates, and consistency. The OLAP system begins once data is extracted from the transactional database and moved into the data warehouse through ETL pipelines.

The data warehouse is optimized for analytical queries and reporting, such as monthly summaries and trend analysis. This separation ensures that heavy analytical queries do not impact the performance of real-time hospital operations. The data lake acts as an intermediate storage layer for raw and streaming data, which can later be processed and loaded into the warehouse or used directly for machine learning tasks.

## Trade-offs

One significant trade-off in this architecture is the increased system complexity due to the use of multiple storage systems. Managing a transactional database, data lake, data warehouse, and vector database requires additional infrastructure, integration effort, and maintenance overhead.

To mitigate this, a unified data orchestration layer can be implemented using tools such as Apache Airflow or managed cloud services. This ensures smooth data movement between systems and reduces operational complexity. Additionally, adopting a Data Lakehouse approach in the future could help consolidate storage and reduce duplication.

Despite the complexity, this architecture provides the flexibility, scalability, and performance required to support real-time monitoring, advanced analytics, and AI-driven applications in a healthcare environment.