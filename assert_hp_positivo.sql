-- Este test falla si hay algun Pokemon con HP menor a 0\
select * from {{ ref('fct_pokemon_obt') }} where hp < 0