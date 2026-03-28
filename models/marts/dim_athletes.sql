SELECT DISTINCT
    ibu_id AS athlete_id,
    name,
    short_name,
    family_name,
    given_name,
    athlete_nat
FROM {{ ref('stg_race_results') }}