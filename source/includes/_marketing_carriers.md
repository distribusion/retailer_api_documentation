# Marketing Carriers Setup

## Index

```shell
curl -X GET \
  https://api.demo.distribusion.com/retailers/v4/marketing_carriers \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command should return a JSON structured like this:

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

Use this endpoint to retrieve all marketing carriers available for your API credentials. Each entry includes a unique marketing carrier id as well as a trade name that should be displayed to customers.

### HTTP Request

Prod: `GET api.distribusion.com/retailers/v4/marketing_carriers`
Demo: `GET api.demo.distribusion.com/retailers/v4/marketing_carriers`

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Show

```shell
curl -X GET \
  'https://api.demo.distribusion.com/retailers/v4/marketing_carriers/VICA?locale=en&currency=EUR' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command should return a JSON structured like this:

```json
{
    "data": {
        "id": "VICA",
        "type": "marketing_carriers",
        "attributes": {
            "code": "VICA",
            "trade_name": "Virtual Carrier European intercity bus",
            "legal_name": "Virtual Carrier European Intercity Bus",
            "address": "Wattstrasse 10",
            "phone": "4900000000",
            "fax": "",
            "customer_service_phone": "",
            "customer_service_email": "",
            "email": "",
            "commercial_register": "",
            "commercial_register_number": "",
            "vat_no": "123456",
            "authorised_representative": "",
            "white_label_logo": "data:image/png;base64,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\nYII=\n",
            "white_label_colour_code": "",
            "terms": "t&c",
            "privacy_policy": null,
            "flight_number_required": false,
            "has_mobile_tickets": true,
            "tickets_validity_in_hours": null,
            "tickets_validity_info": "",
            "cancellation_type": "fee_per_booking",
            "status": "expected_demo",
            "booking_fee": 0,
            "cancellation_fee": 1,
            "cancellation_cutoff": 0
        },
        "relationships": {
            "default_passenger_type": {
                "data": {
                    "id": "PNOS",
                    "type": "passenger_types"
                }
            },
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
                        "id": "VICA-FARE-1",
                        "type": "fare_classes"
                    },
                    {
                        "id": "VICA-FARE-2",
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
        "locale": "en",
        "currency": "GBP"
    },
    "included": [
        {
            "id": "PNOS",
            "type": "passenger_types",
            "attributes": {
                "code": "PNOS",
                "name": "Adult",
                "description": "",
                "min_age": 0,
                "max_age": 99
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
            "id": "VICA-FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Economy",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "VICA-WIFI",
                            "type": "fare_features"
                        }
                    ]
                },
                "ticket_validity_rules": {
                    "data": []
                },
                "passenger_group_rules": {
                    "data": []
                }
            }
        },
        {
            "id": "VICA-FARE-2",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-2",
                "name": "Business",
                "iata_category": null,
                "journey_type": "single"
            },
            "fare_features": {
                    "data": [
                        {
                            "id": "VICA-WIFI",
                            "type": "fare_features"
                        }
                    ]
                },
                "ticket_validity_rules": {
                    "data": []
                },
                "passenger_group_rules": {
                    "data": []
                }
            }
        },
        {
            "id": "VICA-WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        }
    ]
}
```

This endpoint can be used to retrieve detailed information on a specific marketing carrier. The endpoint provides the following information:
- legal and trade names
- customer service contacts (email and phone)
- logo
- status
- mobile ticket support
- supported passenger types with the age range for each
- supported fare classes with the fare features (amenities and cancellation conditions), ticket validity and passenger group rules

Table of supported marketing carrier statuses

| Marketing carrier status | Description                                                                                                                                     |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| Active (prod)            | Integration is on production with full content. SLA is guaranteed.                                                                              |
| Temporary offline        | Carrier's system is down due to technical reasons for a period of over 24 hours. Expected to resume.                                            |
| Temporarily no operation | Carrier has suspended operations, e.g. due to coronavirus restrictions. Expected to resume.                                                     |
| Expected Beta            | Integration is complete and available on production for a 2 week beta trial. Some content may not be available, and SLA rules do not yet apply. |
| Expected Demo            | Integration is in final testing. Available on demo for retailers to start onboarding.                                                           |
| Disabled                 | Carrier is disabled long term, and does not meet the definitions for paused (tech offline) or paused (no operations)                            |

### HTTP Request

Prod: `GET api.distribusion.com/retailers/v4/marketing_carriers/:code`
Demo: `GET api.demo.distribusion.com/retailers/v4/marketing_carriers/:code`

### URL Parameters

Parameter           | Mandatory | Description | Example |
------------------- | --------- | ----------- | --------- |
`locale`            | true      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard | end |
`currency`          | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard | EUR |

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
  https://api.demo.distribusion.com/retailers/v4/marketing_carriers/VICA/stations \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "DEBERCBS",
            "type": "stations"
        },
        {
            "id": "FRPARPGB",
            "type": "stations"
        }
    ],
    "jsonapi": {
        "version": "1.0"
    }
}
```

This endpoint can be used to retrieve all the stations that are served by a specific marketing carrier.

### HTTP Request

Prod: `GET api.distribusion.com/retailers/v4/marketing_carriers/:code/stations`
Demo: `GET api.demo.distribusion.com/retailers/v4/marketing_carriers/:code/stations`

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Booking schema

```shell
curl -X GET \
  https://api.demo.distribusion.com/retailers/v4/marketing_carriers/VICA/booking/schema \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "VICA",
        "type": "booking_schema",
        "attributes": {
            "mandatory": [
                "marketing_carrier",
                "departure_station",
                "arrival_station",
                "departure_time",
                "arrival_time",
                "retailer_partner_number",
                "execute_payment",
                "payment_method",
                "passengers",
                "terms_accepted",
                "locale",
                "currency",
                "total_price",
                "send_customer_email",
                "pax",
                "title",
                "first_name",
                "last_name",
                "street_and_number",
                "zip_code",
                "city",
                "email",
                "phone"
            ],
            "optional": [
                "discount_code",
                "fare_class",
                "payment_token",
                "payer_id",
                "flight_number",
                "government_id",
                "government_id_type",
                "passengers[].government_id",
                "passengers[].government_id_type",
                "passengers[].birthdate",
                "passengers[].nationality"
            ]
        }
    },
    "jsonapi": {
        "version": "1.0"
    }
}
```

Information requirements for booking requests can differ between marketing carriers. This endpoint can be used to understand which parameters are mandatory for the bookings/create request of a specific marketing carrier.

### HTTP Request

Prod: `GET api.distribusion.com/retailers/v4/marketing_carriers/:code/booking/schema`
Demo: `GET api.demo.distribusion.com/retailers/v4/marketing_carriers/:code/booking/schema`

### Errors

Error Code  | Meaning
----------- | -------
400.101.040 | Marketing carrier is invalid or missing
400.800.040 | Marketing Carrier not found
