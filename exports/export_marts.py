import duckdb
import os

# connexion à la base DuckDB dbt
conn = duckdb.connect("/Users/mac/formation-data/data/ecommerce.duckdb")

# dossier export (sécurité)
os.makedirs("exports", exist_ok=True)

# marts
marts = [
    "mart_ca",
    "mart_customer_metrics",
    "mart_customer_rfm",
    "mart_avgbasket",
    "mart_monthly_revenue",
    "mart_topcity",
    "mart_general",
    "mart_delivery_delay",
    "mart_daily_revenue",
    "mart_10category_winners",

]

for table in marts:
    conn.execute(f"""
        COPY (
            SELECT * FROM {table}
        )
        TO 'exports/{table}.csv'
        WITH (HEADER, DELIMITER ',');
    """)

print("✅ Export terminé")