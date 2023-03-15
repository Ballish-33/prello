{{ config(
    tags=["no_use"],
    docs={'node_color': 'red'}
)}}

SELECT 
    *,
    LEFT(municipality_code,2) AS department_code
FROM {{ ref ('stg_real_estate_info_by_municipality')}}