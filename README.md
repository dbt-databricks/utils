# Run integration_tests
```
dbt debug
dbt deps
dbt seed
dbt run
```

# Utilities for dbt

This package includes macros that are used in opensea_trades.

### substring

Returns a substring of the supplied string or binary value.

#### Usage

```sql
{{ utils.substring("text", "position", "length") }}
```


### hex

Converts `expression` to hexadecimal.

#### Usage:

```sql
{{ utils.hex("binary_field") }}
```


### binary_literal

A binary literal is used to specify a byte sequence value.

#### Usage:

```sql

{{ utils.binary_literal('01010101') }}

```

### displayed_amount

Adjust the token amount according to the decimals.

#### Usage:

```sql
{{ utils.displayed_amount("original_amount", "decimals") }}
```


### binary_to_numeric

Convert a binary column to numeric type.

#### Usage:

```sql
{ utils.binary_to_numeric("binary_field")) }}
```


### binary_to_address

Convert a binary column to a hex string started with 0x.

#### Usage:

```sql
{{ utils.binary_to_address("binary_field") }} 
```