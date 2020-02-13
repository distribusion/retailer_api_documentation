# Cancellations

## Conditions

```shell
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/cancellations/conditions?booking=O9xf1EqAQfsuNcRdtum-2g' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "O9xf1EqAQfsuNcRdtum-2g",
        "type": "cancellation_conditions",
        "attributes": {
            "allowed": true,
            "fee": 119,
            "cutoff": "2020-06-15T06:05"
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "currency": "EUR"
    }
}
```

This endpoint enables users to retrieve detailed information about the cancellation conditions of a specific booking. Note that not all marketing carriers offer cancellations and that in some case, the cancellation `fee` do not reflect the flexibility of the terms and conditions due to technical reasons. The current workflow only allows a full (or partial) refund of the booking, no options for vouchers are currently available.

### HTTP Request

`GET api.distribusion.com/retailers/v4/cancellations/conditions`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`booking`           | true      | 22-letter alphanumeric lowercase code, provided on successful booking.

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.200.001 | API key is invalid or missing
400.800.041 | Booking not found
400.500.041 | Cancellation is not allowed
400.501.007 | Not implemented at Distribusion on cancellations#conditions
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable


## Create
```shell
curl -X POST \
  https://api-demo.distribusion.com/retailers/v4/cancellations/create \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' \
  -d '{ "booking": "O9xf1EqAQfsuNcRdtum-2g" }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "SlxcRz_gNL_BtOaYy6FPFA",
        "type": "cancellations",
        "attributes": {
            "total_price": 2266,
            "fee": 119,
            "total_refund": 2147,
            "created_at": "2020-02-13T09:37"
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "currency": "EUR"
    }
}
```

This endpoint enables users to perform the cancellation of a specific booking.


### HTTP Request

`POST api.distribusion.com/retailers/v4/cancellations/create`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`booking`           | true      | 22-letter alphanumeric lowercase code, provided on successful booking.

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.200.001 | API key is invalid or missing
400.502.041 | Booking already cancelled
400.800.041 | Booking not found
400.800.042 | Webhook not defined
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
500.600.041 | Unique cancellation id cannot be generated

## Webhook

Distribusion offers the possibility for retailer partners to be informed about cancellations happening outside their own environment (on marketing carrier or Distribusion's side). To enable this functionality, please contact your integration manager. 
