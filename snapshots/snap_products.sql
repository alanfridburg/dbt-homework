{% snapshot snap_products %}

{{
    config(
      target_database='sound-memory-346318',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('jaffle_shop_ext', 'products') }}

{% endsnapshot %}