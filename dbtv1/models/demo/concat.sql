with concat_data as (
    select * from {{ source('fivetran_src','EMPLOYEE')}}
),
final as ( 
    select DEPARTMENT_ID,CONCAT(FIRST_NAME,LAST_NAME) AS FULLNAME from concat_data
)

select * from final;