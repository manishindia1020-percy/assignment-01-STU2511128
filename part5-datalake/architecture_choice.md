## Architecture Recommendation

A Data Lakehouse would be the most suitable architecture for a fast-growing food delivery startup. This is because the system needs to handle a wide variety of data types, including structured data (payment transactions), semi-structured data (GPS logs), and unstructured data (text reviews and images).

First, a Data Lakehouse provides the flexibility of a data lake while maintaining the performance and reliability of a data warehouse. This allows the startup to store raw data in its original format while still enabling efficient querying and analytics.

Second, the ability to handle diverse data formats is critical. GPS logs and reviews are not well-suited for traditional relational schemas, whereas images require object storage. A Data Lakehouse integrates all these data types into a unified system.

Third, scalability is essential for a growing startup. A Data Lakehouse can scale horizontally to accommodate increasing volumes of data without significant redesign.

Additionally, modern Data Lakehouse architectures support real-time analytics, which is useful for tracking delivery performance, customer behavior, and fraud detection.

Therefore, a Data Lakehouse provides the best balance of flexibility, scalability, and analytical capability for this use case.