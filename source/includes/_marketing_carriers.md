# Marketing Carriers

## Index

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/marketing_carriers \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
  "data": [
    {
      "id": "EONL",
      "type": "marketing_carriers",
      "attributes": {
        "code": "EONL",
        "trade_name": "Eurobus Online"
      }
    },
    {
      "id": "ESBU",
      "type": "marketing_carriers",
      "attributes": {
        "code": "ESBU",
        "trade_name": "Eskana Bus"
      }
    },
    {
      "id": "AKKM",
      "type": "marketing_carriers",
      "attributes": {
        "code": "AKKM",
        "trade_name": "AS Karpaten & Krim Tours (Schevschenko)"
      }
    },
    {
      "id": "BLIE",
      "type": "marketing_carriers",
      "attributes": {
        "code": "BLIE",
        "trade_name": "Blue Line"
      }
    }
  ],

  -------
  "jsonapi": {
    "version": "1.0"
  }
}
```

This endpoint provides a list of marketing carriers with their trade name and code.

### HTTP Request

`GET api.distribusion.com/retailers/v4/marketing_carriers`

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Show

```shell
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/marketing_carriers/SIBU?locale=en&currency=EUR' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "SIBU",
    "type": "marketing_carriers",
    "attributes": {
      "code": "SIBU",
      "trade_name": "SitBus",
      "legal_name": "S.I.T. Societa' Italiana Trasporti SRL",
      "address": "Via Ostiense 256, 00144 Rome, Italy",
      "phone": "+39-06-5916826 / 5923507",
      "fax": "+39-06-5917074",
      "customer_service_phone": "+39065916826",
      "email": "sit@sitbus.com",
      "commercial_register": "Company House No.406335",
      "commercial_register_number": "REN No.P50338",
      "vat_no": "IT01041631001",
      "authorised_representative": "Enrico Fraticelli, Clara Fraticelli, Dino Fraticelli, Monica Germani",
      "white_label_logo": "data:image/png;base64",
      "white_label_colour_code": "#FFFFFF",
      "terms": "T&C",
      "flight_number_required": false,
      "booking_fee": 0,
      "cancellation_fee": 600,
      "cancellation_cutoff": null
    },
    "relationships": {
      "passenger_types": {
        "data": [
          {
            "id": "PNOS",
            "type": "passenger_types"
          }
        ]
      },
      "extra_types": {
        "data": []
      }
    }
  },
  "included": [
    {
      "id": "PNOS",
      "type": "passenger_types",
      "attributes": {
        "code": "PNOS",
        "name": "Normal",
        "description": null
      }
    }
  ],
  "jsonapi": {
    "version": "1.0"
  },
  "meta": {
    "locale": "en",
    "currency": "EUR"
  }
}
```

This endpoint enable users to retrieve detailed information about marketing carriers, such as passenger types, cancellations conditions, terms & conditions, etc.

### HTTP Request

`GET api.distribusion.com/retailers/v4/marketing_carriers/{code}`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`locale`            | true      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard.
`currency`          | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.014 | Locale is invalid or missing
400.101.015 | Currency is invalid or missing
400.101.040 | Marketing carrier is invalid or missing
400.501.004 | Not implemented at Distribusion on bookings#form_schema
400.800.000 | Not Found
400.800.040 | Marketing carrier not found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
