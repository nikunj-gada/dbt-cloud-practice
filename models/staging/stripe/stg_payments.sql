with payment as (
    select 
        id as payment_id,
        orderid as order_id,
        Paymentmethod,
        status,
        amount / 100  as amount,
        created,
        _batched_at
    from {{ source('stripe', 'payment') }}
)

select * From payment