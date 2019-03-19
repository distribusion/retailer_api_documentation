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
        "id": "NEXP",
        "type": "marketing_carriers",
        "attributes": {
            "code": "NEXP",
            "trade_name": "National Express",
            "legal_name": "National Express Limited",
            "address": "Birmingham Coach Station, Mill Lane, Birmingham B5 6DD, United Kingdom",
            "phone": "+44 (0)3717 818181",
            "fax": "",
            "customer_service_phone": "+44 (0)3717 818181",
            "email": "customerrelations@nationalexpress.com",
            "commercial_register": "",
            "commercial_register_number": "0023767",
            "vat_no": "GB487038714",
            "authorised_representative": "Tom Stables",
            "white_label_logo": "data:image/png;base64",
            "white_label_colour_code": "",
            "terms": "Issued subject to National Express Conditions of Carriage, which can be viewed at \r\n<a href=\"https://www.nationalexpress.com/en/help/conditions-of-carriage\" target=\"blank\">https://www.nationalexpress.com/en/help/conditions-of-carriage</a>",
            "flight_number_required": false,
            "has_mobile_tickets": false,
            "tickets_validity_in_hours": null,
            "tickets_validity_info": "In case of traveling from/to an airport this ticket is valid for 12 hours after the departure time stated above.",
            "booking_fee": 116,
            "cancellation_fee": 0,
            "cancellation_cutoff": null
        },
        "relationships": {
            "default_passenger_type": {
                "data": {
                    "id": "PADV",
                    "type": "passenger_types"
                }
            },
            "passenger_types": {
                "data": [
                    {
                        "id": "PADV",
                        "type": "passenger_types"
                    }
                ]
            },
            "extra_types": {
                "data": []
            },
            "vehicle_types": {
                "data": [
                    {
                        "id": "BUS",
                        "type": "vehicle_types"
                    }
                ]
            },
            "fare_classes": {
                "data": [
                    {
                        "id": "FARE-1",
                        "type": "fare_classes"
                    },
                    {
                        "id": "FARE-2",
                        "type": "fare_classes"
                    },
                    {
                        "id": "FARE-3",
                        "type": "fare_classes"
                    }
                ]
            }
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "locale": "it",
        "currency": "EUR"
    },
    "included": [
        {
            "id": "PADV",
            "type": "passenger_types",
            "attributes": {
                "code": "PADV",
                "name": "Adulti",
                "description": ""
            }
        },
        {
            "id": "BUS",
            "type": "vehicle_types",
            "attributes": {
                "code": "BUS",
                "name": "Bus",
                "description": "Long vehicle which is usually transporting a group of people (ca. 45) on streets."
            }
        },
        {
            "id": "FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Standard",
                "iata_category": null
            },
            "relationships": {
                "fare_features": {
                    "data": [{
               "id": "amendable",
               "type": "fare_features"
            },
            {
               "id": "not cancellable",
               "type": "fare_features"
            }]
                }
            }
        },
        {
            "id": "FARE-2",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-2",
                "name": "Restricted",
                "iata_category": null
            },
            "relationships": {
                "fare_features": {
                    "data": [{
              "id": "not amendable",
              "type": "fare_features"
            },
            {
              "id": "not cancellable",
              "type": "fare_features"
            }]
                }
            }
        },
        {
            "id": "FARE-3",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-3",
                "name": "Fully Flexible",
                "iata_category": null
            },
            "relationships": {
                "fare_features": {
                    "data": [{
              "id": "amendable",
              "type": "fare_features"
            },
            {
              "id": "cancellable",
              "type": "fare_features"
            }]
                }
            }
        },
        {
          "id": "amendable",
          "type": "fare_features",
          "attributes": {
            "code": "amendable",
            "name": "Amendable",
            "description": "You can make changes to your booking for an additional fee (starting from £5) by contacting National Express customer service."
          }
        },
        {
          "id": "not cancellable",
          "type": "fare_features",
          "attributes": {
            "code": "not cancellable",
            "name": "Not Cancellable",
            "description": "No refund or cancellation possible."
          }
        },
        {
          "id": "cancellable",
          "type": "fare_features",
          "attributes": {
            "code": "cancellable",
            "name": "Cancellable",
            "description": "Cancellable up to 72h before the departure of your trip."
          }
        }
    ] 
}
```

This endpoint enable users to retrieve detailed information about marketing carriers, such as passenger types, fare classes, cancellations conditions, terms & conditions, etc.

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

## Stations

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/marketing_carriers/SIBU/stations \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "ITROMCGI",
            "type": "stations"
        },
        {
            "id": "ITROMVMA",
            "type": "stations"
        },
        {
            "id": "ITZRRPGA",
            "type": "stations"
        },
        {
            "id": "ITROMVCE",
            "type": "stations"
        },
        {
            "id": "ITROMRCF",
            "type": "stations"
        },
        {
            "id": "ITROMRVA",
            "type": "stations"
        },
        {
            "id": "ITROMRFB",
            "type": "stations"
        }
    ],
    "jsonapi": {
        "version": "1.0"
    }
}
```

This endpoint provides a list of stations attached to a specific marketing carrier. This can help you map stations based on the marketing carrier you wish to display in your application.

### HTTP Request

`GET api.distribusion.com/retailers/v4/marketing_carriers/{code}/stations`

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
