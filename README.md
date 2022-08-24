# Example BigQuery DBT project

> from [__DBT in 5 minutes__](https://fullstackchronicles.io/dbt-in-five-minutes)

## Test and run your model(s)

To run these examples follow the steps below:  

1. `dbt parse --profiles-dir .`
2. `dbt run --profiles-dir .`
3. `dbt test --profiles-dir .`

## Other stuff

Some explanations for the other directories created automatically by `dbt init`...  

The `seeds` directory is for providing side, lookup or reference data using `csv` files (see [here](https://docs.getdbt.com/docs/building-a-dbt-project/seeds)).  

The `tests` directory can be used for defining custom tests to be run by `dbt test` (see [here](https://docs.getdbt.com/docs/building-a-dbt-project/tests)).

The `snapshots` directory is used to define snapshot (type 2 SCD objects) to maintain history for stateful objects (see [here](https://docs.getdbt.com/docs/building-a-dbt-project/snapshots)).

The `analyses` directory is for generating custom (generally complex) SQL - not transformation - queries (see [here](https://docs.getdbt.com/docs/building-a-dbt-project/analyses)).  

The `macros` directory is for defining reusable jinja templating snippets used to simplify your model code (see [here](https://docs.getdbt.com/docs/building-a-dbt-project/jinja-macros)).  


