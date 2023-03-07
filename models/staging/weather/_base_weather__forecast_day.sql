{{
  config(
    materialized="table",
    alias="forecast_day",
    schema="stg_weather"
  )
}}

select * from {{ source("GLOBAL_WEATHER", "FORECAST_DAY") }}