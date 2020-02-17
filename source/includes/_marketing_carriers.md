# Marketing Carriers

## Index

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/marketing_carriers \
  -H 'api-key: {demo_api_key}' \
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

This endpoint provides the list of marketing carriers with their trade name and code.

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
  'https://api-demo.distribusion.com/retailers/v4/marketing_carriers/NEXP?locale=en&currency=EUR' \
  -H 'api-key: {demo_api_key}' \
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
            "customer_service_email": "customerrelations@nationalexpress.com",
            "email": "customerrelations@nationalexpress.com",
            "commercial_register": "",
            "commercial_register_number": "0023767",
            "vat_no": "GB487038714",
            "authorised_representative": "Tom Stables",
            "white_label_logo": "",
            "white_label_colour_code": "",
            "terms": "Issued subject to National Express Conditions of Carriage, which can be viewed at \r\n<a href=\"https://www.nationalexpress.com/en/help/conditions-of-carriage\" target=\"blank\">https://www.nationalexpress.com/en/help/conditions-of-carriage</a>",
            "flight_number_required": false,
            "has_mobile_tickets": true,
            "tickets_validity_in_hours": null,
            "tickets_validity_info": "In case of traveling from/to an airport this ticket is valid for 12 hours after the departure time stated above.",
            "cancellation_type": "no_cancellation",
            "booking_fee": 119,
            "cancellation_fee": 0,
            "cancellation_cutoff": null
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
                    },
                    {
                        "id": "PINT",
                        "type": "passenger_types"
                    },
                    {
                        "id": "PCIL",
                        "type": "passenger_types"
                    },
                    {
                        "id": "PSOE",
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
                        "id": "NEXP-FARE-1",
                        "type": "fare_classes"
                    },
                    {
                        "id": "NEXP-FARE-2",
                        "type": "fare_classes"
                    },
                    {
                        "id": "NEXP-FARE-3",
                        "type": "fare_classes"
                    },
                    {
                        "id": "NEXP-FARE-4",
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
        "currency": "EUR"
    },
    "included": [
        {
            "id": "PNOS",
            "type": "passenger_types",
            "attributes": {
                "code": "PNOS",
                "name": "Adult",
                "description": "",
                "min_age": 16,
                "max_age": 59
            }
        },
        {
            "id": "PINT",
            "type": "passenger_types",
            "attributes": {
                "code": "PINT",
                "name": "Infant",
                "description": "",
                "min_age": 0,
                "max_age": 2
            }
        },
        {
            "id": "PCIL",
            "type": "passenger_types",
            "attributes": {
                "code": "PCIL",
                "name": "Child",
                "description": "",
                "min_age": 3,
                "max_age": 15
            }
        },
        {
            "id": "PSOE",
            "type": "passenger_types",
            "attributes": {
                "code": "PSOE",
                "name": "Senior",
                "description": "",
                "min_age": 60,
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
            "id": "NEXP-FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Standard",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "NEXP-ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-NREF",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-FARE-2",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-2",
                "name": "Restricted",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "NEXP-ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-NAME",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-NREF",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-FARE-3",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-3",
                "name": "Fully Flexible",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "NEXP-ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-REFU",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "NEXP-AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-FARE-4",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-4",
                "name": "Open Return",
                "iata_category": null,
                "journey_type": "open_return"
            },
            "relationships": {
                "fare_features": {
                    "data": []
                }
            }
        },
        {
            "id": "NEXP-ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "NEXP-TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "NEXP-ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "NEXP-NREF",
            "type": "fare_features",
            "attributes": {
                "code": "NREF",
                "name": "Non-refundable ",
                "description": "The ticket cannot be refunded."
            }
        },
        {
            "id": "NEXP-AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please proceed via the link https://coach.nationalexpress.com/nxbooking/mmb2ManageMyBooking. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "NEXP-WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "NEXP-MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "NEXP-UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "NEXP-AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "NEXP-BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "NEXP-AAFR",
            "type": "fare_features",
            "attributes": {
                "code": "AAFR",
                "name": "Accessible area for wheelchairs",
                "description": "Fully collapsible wheelchairs and fully collapsible pushchairs may be stowed free of charge. Passenger have to contact bus operator 36 hours before the departure."
            }
        },
        {
            "id": "NEXP-NAME",
            "type": "fare_features",
            "attributes": {
                "code": "NAME",
                "name": "Non-amendable",
                "description": "The ticket is not amendable."
            }
        },
        {
            "id": "NEXP-REFU",
            "type": "fare_features",
            "attributes": {
                "code": "REFU",
                "name": "Refundable",
                "description": "The ticket is refundable and can be cancelled no less than 72 hours in advance of travel."
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
  https://api-demo.distribusion.com/retailers/v4/marketing_carriers/NEXP/stations \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "GBBRSCSA",
            "type": "stations"
        },
        {
            "id": "GBBRSBRI",
            "type": "stations"
        },
        {
            "id": "GBBRSBBH",
            "type": "stations"
        },
        {
            "id": "GBBRSCDO",
            "type": "stations"
        },
        {
            "id": "GBBRSUQR",
            "type": "stations"
        },
        {
            "id": "GBBIXBRI",
            "type": "stations"
        },
        {
            "id": "GBBOTBRO",
            "type": "stations"
        },
        {
            "id": "GBBOEBOS",
            "type": "stations"
        },
        {
            "id": "GBBOEHAV",
            "type": "stations"
        },
        {
            "id": "GBBURCCS",
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

## Booking schema

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/marketing_carriers/NEXP/booking/schema \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "NEXP",
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
                "email"
            ],
            "optional": [
                "discount_code",
                "fare_class",
                "payment_token",
                "payer_id",
                "phone",
                "flight_number",
                "government_id",
                "government_id_type",
                "passengers[].government_id",
                "passengers[].government_id_type"
            ]
        }
    },
    "jsonapi": {
        "version": "1.0"
    }
}
```

This endpoint provides the information which parameters are mandatory and which are optional to conduct a booking for a specific marketing carrier.

### HTTP Request

`GET api.distribusion.com/retailers/v4/marketing_carriers/{code}/booking/schema `

### Errors

Error Code  | Meaning
----------- | -------
400.101.040 | Marketing carrier is invalid or missing
400.800.040 | Marketing Carrier not found
