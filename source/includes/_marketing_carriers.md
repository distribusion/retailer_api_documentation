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
            "white_label_logo": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUcAAAA3CAIAAAAQfh9JAAAAAXNSR0IArs4c\n6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAt8SURB\nVHhe7Zy/r11HEcfhj8lfEVHwD1BR8jdQgegsCgQNFaIxRSoUpXNhN5YSyUVi\n5MICiqAgJQi5sFEiOYle8izbGPN5d/ZNxjO7e/buudG9One+GkXv7c7+mM18\ndvece59/8DqVSm1LSXUqtTUl1anU1pRUp1JbU1KdSm1NSXUqtTUl1anU1pRU\np1Jb03aofvz08uFnTzF+KEVv6tMnF+Jw8exlKdq6zjDkFNoI1aTvD395T41f\nS8W17jx8rLVv3fiwlG5a73706NxCTok2QjXHkWYwxq+l4lp/+uDf1qGUblpn\nGHJKlFRvVkn12epcqL738edaeybX0aT6bHUuVCN9nXYmr46S6rPVGVF9bkqq\nz1ZJ9WaVVJ+tkurNKqk+WyXVm1VSfbY6GNX3Pv78j3c/+9nNv1kjsSgvHku6\nePYSZ5q4TjB6vvPwcetLY8hRbdvSIQ6fPrn41Xt/lxJ6k1ZV0VWcA02Y216v\n2XBmzjqoGp3HL8m0RMh0EhcWkzXpTImB7JqU0mH975tvX3xw7/LmOxc//4Ua\nv1JIVXEKevGPf4pnxycKZ5p89ZOfPr//oBTVROeXf35P+lejhPLiURN9iuc3\nv/7tf/91lQwuNMrF02oufKf6hHedvHzyn+LUEA6Xt25/+/s/2Lb8uhgvWks1\nWUX2vHXjQ5tAzt7+3V/w6eSfIOdaVY1srp7DjmpnOIykOD5M1bo5I0zmucg2\nKC6Gw0AwWRrUREQE61pVjbGqazJNNflE9nz5ox93DAchxIoSyBQHUvD5l1+V\niq4Eae05piwOpLL2XDVq8anyZt0EDFsiZgedDt8KbvsTxq6WqLaL0bNdkKp1\n4kWrqOb46vNsjTxunVGD6auGv0NrJdWfPPpifA6E3AHy3Y8eja8Jg7YuIPuu\nCUe3W5M5qskVl0Ad49gpzXbi0LO1pObisQb5LoP5tdTtBGOLeKjhGWFzPlVT\nqteEr3Lr0LfS5lpsB86hY8y2NHtT81ST2TZpRox0r17IXf6NGHuETeIO1QyK\nQyfF2WvGOVSrgj1447DG0NXNbqIrNoKnX3+3R0xQvXhGRbPokuWxtnNi09Ah\n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\n",
            "white_label_colour_code": "",
            "terms": "In derogation from the Terms and Conditions provided by National Express, the tickets booked via this platform cannot be canceled or refunded.\r\n\r\n-----------------\r\n\r\nIssued subject to National Express Conditions of Carriage, which can be viewed at \r\n<a href=\"https://www.nationalexpress.com/en/help/conditions-of-carriage\" target=\"blank\">https://www.nationalexpress.com/en/help/conditions-of-carriage</a>",
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
            "id": "PNOS",
            "type": "passenger_types",
            "attributes": {
                "code": "PNOS",
                "name": "Adulti",
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
            "id": "FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Standard",
                "iata_category": null
            },
            "relationships": {
                "fare_features": {
                    "data": []
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
                    "data": []
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
                    "data": []
                }
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
