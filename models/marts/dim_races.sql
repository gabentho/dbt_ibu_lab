SELECT DISTINCT
    race_id,
    race_description,
    event_id,
    discipline_id,
    cat_id,
    km,
    start_time,
    status_text,
    start_group
FROM {{ ref('stg_race_results') }}