## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for a law firm searching through large contracts using natural language queries. Keyword search relies on exact matches, which means it may miss relevant information if the wording in the contract differs from the query. For example, a query like "termination clauses" might not match sections labeled as "contract ending conditions" or "agreement dissolution terms," even though they are semantically similar.

Vector databases address this limitation by enabling semantic search. Instead of relying on exact keyword matches, text is converted into embeddings that capture meaning and context. When a lawyer inputs a query in plain English, it is transformed into a vector and compared against vectors of contract sections. This allows the system to retrieve the most semantically relevant sections, even if the wording differs.

In this system, a vector database would store embeddings of contract chunks (e.g., paragraphs or sections). When a query is made, the system performs a similarity search to find the closest matching sections. This significantly improves search accuracy and usability.

Therefore, a vector database is essential for enabling intelligent, context-aware search in large legal documents, making it far more effective than traditional keyword-based approaches.