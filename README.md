\# olist-dbt-snowflake



Analytics engineering pipeline on the Olist Brazilian e-commerce dataset (\~1.5M rows, 2016-2018). dbt Core + Snowflake + Power BI, orchestrated via GitHub Actions.



\*\*Status:\*\* In development. Target completion: 2026-11-04.



\## Stack

\- Warehouse: Snowflake (Standard, X-Small warehouse)

\- Transformation: dbt Core (`dbt-snowflake`)

\- Orchestration: GitHub Actions

\- BI: Power BI

\- Source: Olist Brazilian E-Commerce (Kaggle, 9 tables)



\## Project structure

See `models/` for staging, intermediate, and mart layers. See `dbt\_project.yml` for configuration.

