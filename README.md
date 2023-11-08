# Electronic-Access-Request-Management
The Electronic Access Request Management project, which spanned from September 2021 to February 2022, was a multifaceted endeavor aimed at optimizing the management and processing of electronic access requests (EAR) within our organization. At its core, this project revolved around the strategic use of data processing technologies and methodologies to streamline and enhance EAR procedures. In this comprehensive explanation, we will explore the key components and accomplishments of this project.

ETL Pipeline Development
The cornerstone of this project was the development of Extract, Transform, Load (ETL) pipelines. ETL is a fundamental process in data management, and in this context, it was instrumental in facilitating the efficient handling of data associated with EARs.

Data Sources
One of the initial challenges in this project was dealing with data originating from diverse sources. We needed to ingest and process data from various repositories, including Oracle databases, Hive databases, and the Hadoop Distributed File System (HDFS). To accomplish this, we harnessed the power of OJDBC connectors and custom Hadoop scripts.

Oracle Data: Oracle databases are a common source of data in enterprise environments. Extracting data from Oracle required the utilization of OJDBC connectors, enabling us to establish a connection to the database and retrieve the necessary information.

Hive Data: Hive databases, often used in big data ecosystems, presented their own set of challenges. We devised strategies to efficiently extract and integrate data from Hive into our ETL pipeline.

HDFS Data: Hadoop's HDFS provided yet another source of data. Our pipeline incorporated custom Hadoop scripts to retrieve and incorporate data from this distributed file system.

Data Transformation
Data harmonization and standardization were paramount to ensure the data from these diverse sources could be effectively processed. We undertook extensive data transformation efforts to ensure that all incoming data adhered to a common table schema. This standardization process not only facilitated consistency but also streamlined downstream data processing and analysis.

One of the key transformations involved in this project was the extraction of valuable insights from the raw data. We leveraged Spark primarily through SparkSQL Datasets to perform transformations on more than 28 streams of ingested data. These transformations encompassed a wide range of operations, including aggregations, filtering, and data enrichment. For instance, we calculated the square and cube of certain numeric values, thereby enhancing the dataset with additional context and analytical depth.

Pipeline Deployment
Developing the ETL pipelines was only part of the equation. Ensuring the seamless deployment of these pipelines to production environments was equally critical. To address this, we scripted the deployment process, creating custom bash scripts that automated the deployment of the ETL pipelines.

By automating the deployment process, we significantly reduced the potential for human error and ensured the consistency of our data processing workflows. This automation not only saved time but also contributed to the overall reliability of our system.

Spark Dataframe API Enhancements
Within the context of our data processing project, Spark played a pivotal role. Apache Spark is a powerful distributed data processing framework that empowers organizations to tackle big data challenges. We made extensive use of Spark's Dataframe API, enhancing its capabilities to suit our specific needs.

Enhancements for ETL
The Spark Dataframe API was enriched with additional functionality tailored to common ETL patterns and database interactions. This involved implementing utility functions and transformations to streamline data operations.

withColumns: This utility function enabled the simultaneous addition of multiple columns to a dataframe. Its versatility allowed us to efficiently structure and enrich the data.

adopt: The adopt transformation was invaluable for type-casting a dataframe into a dataset while gracefully handling unspecified fields through the introduction of null values. This ensured data consistency and improved the reliability of our processing.

dataToDF: A groundbreaking transformation, dataToDF, simplified the conversion of data represented as a map of values and field names directly into a dataframe. This innovation eliminated unnecessary complexity in data ingestion and structuring tasks.

Leveraging Implicits and Reflections
To achieve these enhancements, we strategically harnessed Scala implicits and reflections. These advanced features of the Scala language provided us with a powerful toolset to unlock the full potential of the Spark Dataframe API. Through implicit conversions, we extended the API with custom functions and transformations, enhancing its functionality while maintaining code elegance.

This approach not only improved the efficiency of our data processing but also elevated the expressiveness and readability of our code. By incorporating these advanced language features, we were able to implement complex data operations with conciseness and clarity.

Rule Ingestion Alarm Framework
Data monitoring and notification were critical components of our project. To address these needs, we designed and implemented a Rule Ingestion Alarm Framework. This framework leveraged Spark Datasets and SparkSQL to provide real-time monitoring, categorization, and notification capabilities.

Real-time Data Monitoring
The framework enabled us to monitor data streams as they were ingested into our system. We could set predefined rules and thresholds to identify data points exceeding certain limits or criteria. This real-time monitoring allowed us to promptly detect anomalies and take corrective actions.

Categorization and Notification
Data points exceeding the established rules and thresholds were categorized according to the nature of the deviation. This categorization facilitated a more granular understanding of data quality issues and enabled us to prioritize and respond accordingly.

Notifications were a crucial aspect of the framework. When data deviations were detected, the system generated notifications to alert relevant stakeholders. These notifications were tailored to the specific context of the deviation, providing actionable insights for data quality management.

The framework's filtering logic was implemented within Spark, allowing us to dynamically parameterize rules using inputs from external sources such as Hive. This flexibility ensured that our data monitoring and notification system could adapt to evolving data quality requirements.

Schema Design for Data Sinks
Efficient data retrieval was a central concern in our project. To address this, we dedicated efforts to designing table schemas for data sinks. These schemas were carefully crafted to optimize data retrieval performance, taking into account the specific requirements of table queries.

Partitioning and Bucketing
In our schema design, we made strategic decisions regarding partitioning columns and bucketing strategies. These decisions were grounded in the unique demands of our table queries.

Partitioning: Partitioning involves dividing data into logical partitions based on one or more columns. This strategy significantly accelerates query performance by enabling the system to skip unnecessary data scans. We chose partitioning columns judiciously, aligning them with the most commonly used filtering criteria in our queries.

Bucketing: Bucketing, on the other hand, involves dividing data into fixed-size buckets, which are stored as separate files. Each bucket is identified by a unique identifier, allowing for faster and more deterministic query execution. We optimized bucketing strategies based on the distribution of data and query patterns.

By carefully implementing partitioning and bucketing, we achieved substantial improvements in query performance. These optimizations were particularly crucial when dealing with large volumes of data, as they reduced query execution times and resource consumption.

Conclusion
The Electronic Access Request Management project exemplified the power of data processing technologies and methodologies in optimizing critical business processes. Through the development of ETL pipelines, enhancement of the Spark Dataframe API, creation of a Rule Ingestion Alarm
