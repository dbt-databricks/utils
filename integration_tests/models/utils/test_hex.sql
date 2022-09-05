with data as (
  select * from {{ ref("data_hex")}}
)

select 

  {{ utils.hex(utils.binary_literal('01010101')) }} as actual,
  hex as expected
from data