select * from 
{{ ref('fct_orders') }}
where AMOUNT is null