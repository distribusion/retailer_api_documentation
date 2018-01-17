# Cancellations

## Conditions

```shell
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/cancellations/conditions?booking=ZpXv69xrzHzk8Nb-YHGllA' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "ZpXv69xrzHzk8Nb-YHGllA",
    "type": "cancellation_conditions",
    "attributes": {
      "allowed": true,
      "fee": 1500,
      "cutoff": "2018-03-28T12:00"
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

This endpoint enable users to retrieve detailed information about the cancellation of a specific booking. Note that not all marketing carriers offer cancellations and that in some case, the cancellation `fee` do not reflect the flexibility of the terms and conditions due to technical reasons. The current workflow only allow a full (or partial) refund of the booking, no options for vouchers are currently available.

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
400.501.007 | Not implemented at Distribusion on cancellations#conditions
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable


## Create
```shell
curl -X POST \
  https://api-demo.distribusion.com/retailers/v4/cancellations/create \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' \
  -d '{ "booking": "ZpXv69xrzHzk8Nb-YHGllA" }'
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "6JXfs7hJpMe3FsF-JfudLA",
    "type": "cancellations",
    "attributes": {
      "total_price": 2000,
      "fee": 1500,
      "total_refund": 500,
      "created_at": "2017-05-23T16:21"
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

Note: The cancellation example is not linked to the previous booking example, as it is not cancellable. 

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
400.501.008 | Not implemented at Distribusion on cancellations#create
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
500.600.041 | Unique cancellation id cannot be generated
