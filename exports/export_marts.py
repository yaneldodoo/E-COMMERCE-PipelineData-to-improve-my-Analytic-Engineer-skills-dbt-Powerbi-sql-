# I use parquet because when i export in CSV, Powerbi doesn't recognize the date format and import it as text, which is not good for analysis. Parquet keeps the data types intact, so when I import it into PowerBI, it recognizes the date columns correctly and allows me to use them in my analysis without any issues.

import duckdb
import os

# connexion à la base DuckDB
conn = duckdb.connect("/Users/mac/formation-data/data/ecommerce.duckdb")

# dossier export
os.makedirs("exports", exist_ok=True)

# marts
marts = [
    "mart_ca",
    "mart_customer_metrics",
    "mart_customer_rfm",
    "mart_avgbasket",
    "mart_topcity",
    "mart_general",
    "mart_delivery_delay",
    "mart_10category_winners",
]

# i use snappy to compress the parquet files, it is a good compression algorithm for parquet files and it is supported by PowerBI

for table in marts:
    conn.execute(f"""
        COPY (
            SELECT * FROM {table}
        )
        TO 'exports/{table}.parquet'
        (FORMAT PARQUET, COMPRESSION SNAPPY);
    """)

print("✅ Export terminé en PARQUET")