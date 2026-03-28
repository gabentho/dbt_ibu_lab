SELECT
    ibu_id AS athlete_id,
    race_id,
    event_id,
    start_order,
    result_order,
    irm,
    bib,
    leg,
    rank,
    shootings,
    shootings_spare,
    shooting_total,
    run_time,
    total_time,
    behind,
    wc,
    nc,
    noc,
    start_group,
    result
FROM {{ ref('cleaned_measures') }}
WHERE rank IS NOT NULL