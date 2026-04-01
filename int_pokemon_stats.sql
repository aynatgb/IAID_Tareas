{{ config(materialized='ephemeral') }}

with staging as (
    select * from {{ ref('stg_pokemon') }}
)

select
    *,
    (attack + defense + hp) as total_stats
from staging
where pokemon_id is not null