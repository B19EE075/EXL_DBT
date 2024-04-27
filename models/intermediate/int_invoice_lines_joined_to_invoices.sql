select 
    invoice_lineid,
    invl.invoice_id,
    track_id,
    customer_id,
    invoice_date_est,
    billing_address,
    billing_city,
    billing_state,
    billing_country,
    billing_zipcode,
    quantity_purchased,
    invoice_lineitem_revenue_usd
from {{ ref('stg_music__invoice_lines') }} as invl,{{ ref('stg_music__invoices') }}
