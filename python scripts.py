import pandas as pd
import numpy as np

# Simulating data sources
np.random.seed(0)
data_sources = {
    'Oracle': pd.DataFrame({'id': range(1, 6), 'num': np.random.randint(1, 6, 5)}),
    'Hive': pd.DataFrame({'id': range(6, 11), 'num': np.random.randint(1, 6, 5)}),
    'HDFS': pd.DataFrame({'id': range(11, 16), 'num': np.random.randint(1, 6, 5)})
}

# Function to perform ETL (Extract, Transform, Load)
def etl_pipeline(data_sources):
    # Concatenate data from different sources
    unified_data = pd.concat(data_sources.values())

    # Data Transformation: Calculate the square of 'num'
    unified_data['num_squared'] = unified_data['num'] ** 2

    return unified_data

# Function to enhance the DataFrame API
def enhance_dataframe_api(dataframe):
    # Create a new column 'num_cubed' by cubing 'num'
    dataframe['num_cubed'] = dataframe['num'] ** 3

    return dataframe

# Function to apply rules and filter data
def apply_rules(dataframe, threshold):
    # Filter data where 'num_squared' is above the threshold
    filtered_data = dataframe[dataframe['num_squared'] > threshold]

    return filtered_data

# Function to optimize table schema (Simplified)
def optimize_table_schema(dataframe):
    # Example: Rename 'num' to 'value', set 'id' as the index
    optimized_data = dataframe.rename(columns={'num': 'value'}).set_index('id')

    return optimized_data

if __name__ == "__main__":
    # ETL Pipeline
    processed_data = etl_pipeline(data_sources)

    # Spark Dataframe API Enhancements
    processed_data = enhance_dataframe_api(processed_data)

    # Rule Ingestion Alarm Framework (Threshold set to 9 for demonstration)
    threshold = 9
    filtered_data = apply_rules(processed_data, threshold)

    # Schema Design for Data Sinks (Simplified)
    optimized_data = optimize_table_schema(filtered_data)

    # Display the final processed and optimized data
    print("Final Processed and Optimized Data:")
    print(optimized_data)
