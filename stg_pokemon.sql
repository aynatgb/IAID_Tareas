{{ config(materialized='view') }}

with raw_data as (
    select * from {{ source('airbyte_curso', 'pokemon') }}
)

select
    -- Aquí usa los nombres de columnas que ves en MotherDuck
    pokemon_id,
    pokemon_name,
    hp,
    attack,
    defense
from raw_data