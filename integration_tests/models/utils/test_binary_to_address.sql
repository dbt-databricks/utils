with data as (
  select * from {{ ref("data_binary_to_address")}}
)

select 

  {{ utils.binary_to_address(utils.binary_literal('ffffffffffffffffffff')) }} as actual,
  address as expected
from data