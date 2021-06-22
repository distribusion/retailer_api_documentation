# Connections

## Find

```shell
curl -g -X GET \
  'https://api.demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=DEBERCBS&arrival_stations[]=FRPARPGB&&arrival_stations[]=FRPARABE&departure_date=2021-07-20&locale=en&pax=1&currency=GBP' \
  -H 'api-key: {demo_api_key}' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
 {
    "meta": {
        "locale": "en",
        "currency": "GBP"
    },
    "jsonapi": {
        "version": "1.0"
    },
    "included": [
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "CPRO"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "DEBERCBS"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "NLAMSHIS"
                    }
                }
            },
            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-0",
            "attributes": {
                "index": 0,
                "departure_time": "2021-07-20T21:00",
                "arrival_time": "2021-07-21T06:00"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-1"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "CPRO"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "NLAMSHIS"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARPGB"
                    }
                }
            },
            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-1",
            "attributes": {
                "index": 1,
                "departure_time": "2021-07-21T07:00",
                "arrival_time": "2021-07-21T14:35"
            }
        },
        {
            "type": "marketing_carriers",
            "relationships": {
                "passenger_types": {
                    "data": [
                        {
                            "type": "passenger_types",
                            "id": "PNOS"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PINT"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PCIL"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PYPO"
                        }
                    ]
                },
                "fare_classes": {
                    "data": [
                        {
                            "type": "fare_classes",
                            "id": "BLAB-FARE-2"
                        },
                        {
                            "type": "fare_classes",
                            "id": "BLAB-FARE-1"
                        }
                    ]
                },
                "extra_types": {
                    "data": []
                }
            },
            "id": "BLAB",
            "attributes": {
                "trade_name": "BlaBlaCar Bus",
                "legal_name": "Comuto Pro SAS",
                "code": "BLAB",
                "booking_fee": 0
            }
        },
        {
            "type": "operating_carriers",
            "id": "CPRO",
            "attributes": {
                "trade_name": "Comuto Pro",
                "legal_name": "BlaBlaCar Bus",
                "code": "CPRO"
            }
        },
        {
            "type": "passenger_types",
            "id": "PNOS",
            "attributes": {
                "name": "Adult",
                "min_age": 26,
                "max_age": 99,
                "description": "",
                "code": "PNOS"
            }
        },
        {
            "type": "passenger_types",
            "id": "PINT",
            "attributes": {
                "name": "Infant",
                "min_age": 0,
                "max_age": 2,
                "description": "",
                "code": "PINT"
            }
        },
        {
            "type": "passenger_types",
            "id": "PCIL",
            "attributes": {
                "name": "Child",
                "min_age": 3,
                "max_age": 12,
                "description": "",
                "code": "PCIL"
            }
        },
        {
            "type": "passenger_types",
            "id": "PYPO",
            "attributes": {
                "name": "Youth",
                "min_age": 13,
                "max_age": 25,
                "description": "",
                "code": "PYPO"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "DEBER"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "DEBERCBS",
            "attributes": {
                "zip_code": "14057",
                "time_zone": "Europe/Berlin",
                "street_and_number": "Masurenallee 4-6",
                "name": "Berlin Central Bus Station",
                "longitude": 13.279692,
                "latitude": 52.507589,
                "description": "The Berlin Central Bus Station is located close to the S-Bahn Station \"Berlin Messe Nord\" (lines S41, S42 and S46). In case of waiting times, a waiting area with 130 seats and a snack bar can help passengers stay relaxed and comfortable.",
                "code": "DEBERCBS"
            }
        },
        {
            "type": "cities",
            "id": "DEBER",
            "attributes": {
                "name": "Berlin",
                "code": "DEBER"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "NLAMS"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "NLAMSHIS",
            "attributes": {
                "zip_code": "1043 DW",
                "time_zone": "Europe/Amsterdam",
                "street_and_number": "Piarcoplein 69",
                "name": "Amsterdam Sloterdijk Piarcoplein",
                "longitude": 4.837756,
                "latitude": 52.390375,
                "description": "The bus stop is located on Piarcoplein street, close to northern side of Sloterdijk transit stop",
                "code": "NLAMSHIS"
            }
        },
        {
            "type": "cities",
            "id": "NLAMS",
            "attributes": {
                "name": "Amsterdam",
                "code": "NLAMS"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "FRPAR"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "FRPARPGB",
            "attributes": {
                "zip_code": "75012",
                "time_zone": "Europe/Paris",
                "street_and_number": "210 Quai de Bercy",
                "name": "Paris Gare de Bercy Seine",
                "longitude": 2.38016074684572,
                "latitude": 48.8356868853674,
                "description": "The Bercy-Seine bus station is located inside the Bercy park. You can access it from the #69 rue de Bercy and then walk straight ahead. The entry is located just behind the training gym area. ",
                "code": "FRPARPGB"
            }
        },
        {
            "type": "cities",
            "id": "FRPAR",
            "attributes": {
                "name": "Paris",
                "code": "FRPAR"
            }
        },
        {
            "type": "vehicles",
            "relationships": {
                "vehicle_type": {
                    "data": {
                        "type": "vehicle_types",
                        "id": "BUS"
                    }
                }
            },
            "id": "BUS-BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-0"
        },
        {
            "type": "vehicles",
            "relationships": {
                "vehicle_type": {
                    "data": {
                        "type": "vehicle_types",
                        "id": "BUS"
                    }
                }
            },
            "id": "BUS-BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-1"
        },
        {
            "type": "vehicle_types",
            "id": "BUS",
            "attributes": {
                "code": "BUS"
            }
        },
        {
            "type": "fare_classes",
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "type": "fare_features",
                            "id": "BLAB-PSOC"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLAB-ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLAB-TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLAB-REFU"
                        }
                    ]
                }
            },
            "id": "BLAB-FARE-2",
            "attributes": {
                "name": "Promo",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-2"
            }
        },
        {
            "type": "fare_features",
            "id": "BLAB-PSOC",
            "attributes": {
                "name": "Power Socket",
                "description": "Power supply is available at every seat.",
                "code": "PSOC"
            }
        },
        {
            "type": "fare_features",
            "id": "BLAB-ACON",
            "attributes": {
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation.",
                "code": "ACON"
            }
        },
        {
            "type": "fare_features",
            "id": "BLAB-TOIL",
            "attributes": {
                "name": "Toilet",
                "description": "A toilet is available on board.",
                "code": "TOIL"
            }
        },
        {
            "type": "fare_features",
            "id": "BLAB-REFU",
            "attributes": {
                "name": "Cancellable",
                "description": "The cancellation can be conducted via Internet/Call Center at least 30 min before departure within office hours, passengers will receive a voucher for a next trip.",
                "code": "REFU"
            }
        },
        {
            "type": "fare_classes",
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "type": "fare_features",
                            "id": "BLAB-PSOC"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLAB-ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLAB-TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLAB-REFU"
                        }
                    ]
                }
            },
            "id": "BLAB-FARE-1",
            "attributes": {
                "name": "Standard",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-1"
            }
        },
        {
            "type": "fares",
            "relationships": {
                "fare_class": {
                    "data": {
                        "type": "fare_classes",
                        "id": "BLAB-FARE-1"
                    }
                }
            },
            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-FARE-1",
            "attributes": {
                "price": 4723
            }
        }
    ],
    "data": [
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-0"
                        },
                        {
                            "type": "segments",
                            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "BLAB"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 4723,
                            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35-FARE-1",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "BLAB-FARE-1",
                                "code": "FARE-1"
                            }
                        }
                    ]
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "DEBERCBS"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARPGB"
                    }
                }
            },
            "id": "BLAB-DEBERCBS-FRPARPGB-2021-07-20T21:00-2021-07-21T14:35",
            "attributes": {
                "duration": 63300,
                "departure_time": "2021-07-20T21:00",
                "cheapest_total_adult_price": 4723,
                "booked_out": false,
                "arrival_time": "2021-07-21T14:35"
            }
        }
    ]
}
```

This endpoint can be used to retrieve all connections between the specified departure and arrival stations on a specific day, across all marketing carriers available in the Distribusion API. The connections/find request can include multiple departure and arrival stations as long as the stations provided as departure or arrival points are in the same city, respectively.

You can also add two optional parameters in the header:

- `accept-encoding` with `deflate, gzip` value in order to receive compressed responses, reducing network time.
- `collect_within` with an integer representing the maximum time (in seconds) allowed by our application to retrieve results from operators. This value can range from 1 to 10.

### HTTP Request

- Prod: `GET https://api.distribusion.com/retailers/v4/connections/find`
- Demo: `GET https://api.demo.distribusion.com/retailers/v4/connections/find`

### Query Parameters

| Parameter            | Mandatory | Description                                                           | Example    |
|----------------------|-----------|-----------------------------------------------------------------------|------------|
| departure_stations[] | TRUE      | 8-letter alphabetic uppercase code                                    | DEBERCBS   |
| arrival_stations[]   | TRUE      | 8-letter alphabetic uppercase code                                    | FRPARPGB   |
| departure_date       | TRUE      | Departure date for the outbound trip in ISO 8601 format               | 2021-07-20 |
| return_date          | FALSE     | Departure date for the inbound trip in ISO 8601 format                | 2021-07-25 |
| pax                  | TRUE      | Number of passengers in the range of 1 - 9.                           | 1          |
| locale               | TRUE      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard | en         |
| currency             | TRUE      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard  | GBP        |
| departure_start_time | FALSE     | HH:MM:SS, defaults to 00:00:00                                        | 08:00:00   |
| departure_end_time   | FALSE     | HH:MM:SS, defaults to 23:59:59                                        | 15:00:00   |

<aside class="success">
Remember — to query information from our API, you need to get your own API key at <a href='mailto:partner@distribusion.com'>partner@distribusion.com</a>!
</aside>

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.002 | Departure stations are invalid or missing
400.101.003 | Arrival stations are invalid or missing
400.101.014 | Locale is invalid or missing
400.101.015 | Currency is invalid or missing
400.200.001 | API key is invalid or missing
400.501.000 | Not implemented at Distribusion on connections#find
400.800.000 | Not Found
500.100.000 | Service Unavailable
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
600.400.000 | Marketing Carrier remote request invalid
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)

## Vacancy

```shell
curl -g -X GET \
  'https://api.demo.distribusion.com/retailers/v4/connections/vacancy?marketing_carrier=VICA&departure_station=DEBERCBS&arrival_station=FRPARPGB&departure_time=2021-07-20T13:20&arrival_time=2021-07-20T15:40&currency=EUR&passengers[][pax]=1&passengers[][type]=PNOS&fare_class=FARE-1' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "VICA-DEBERCBS-FRPARPGB-2021-07-20T13:20-2021-07-20T15:40",
        "type": "vacancies",
        "attributes": {
            "vacant": true,
            "total_price": 2500
        },
        "relationships": {
            "fees": {
                "data": [
                    {
                        "id": "INSU",
                        "type": "fees"
                    },
                    {
                        "id": "TOLL",
                        "type": "fees"
                    }
                ]
            }
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "currency": "EUR"
    },
    "included": [
        {
            "id": "INSU",
            "type": "fees",
            "attributes": {
                "code": "INSU",
                "name": "Insurance",
                "component": "Ticket",
                "amount": 120
            }
        },
        {
            "id": "TOLL",
            "type": "fees",
            "attributes": {
                "code": "TOLL",
                "name": "Toll",
                "component": "Ticket",
                "amount": 90
            }
        }
    ]
}
```

This endpoint can be used to confirm the price and availability for the specified number and type of passengers for the selected trip.

### HTTP Request

- Prod: `GET https://api.distribusion.com/retailers/v4/connections/vacancy`
- Demo: `GET https://api.demo.distribusion.com/retailers/v4/connections/vacancy`

### URL Parameters

| Parameter             | Mandatory | Description                                                                                                                | Example          |
|-----------------------|-----------|----------------------------------------------------------------------------------------------------------------------------|------------------|
| marketing_carrier     | TRUE      | 4-letter alphanumeric uppercase code                                                                                       | VICA             |
| departure_station     | TRUE      | 8-letter alphabetic uppercase code                                                                                         | DEBERCBS         |
| arrival_station       | TRUE      | 8-letter alphabetic uppercase code                                                                                         | FRPARPGB         |
| departure_time        | TRUE      | Departure time for the outbound trip in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                  | 2021-07-20T13:20 |
| arrival_time          | TRUE      | Arrival time for the outbound trip in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                    | 2021-07-20T15:40 |
| currency              | TRUE      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard                                                       | GBP              |
| fare_class            | FALSE     | 6-7 alphanumeric uppercase code                                                                                            | FARE-1           |
| return_departure_time | FALSE     | Departure time for the inbound trip in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                   | 2021-06-03T02:15 |
| return_arrival_time   | FALSE     | Arrival time for the inbound trip in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                     | 2021-06-03T12:20 |
| passengers            | TRUE      | Array                                                                                                                      |                  |
| _pax                  | TRUE      | Number of passengers for a specific passenger type                                                                         | 2                |
| _type                 | TRUE      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained from GET /marketing_carriers/{code}. | PNOS             |


### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.004 | Departure station is invalid or missing
400.101.005 | Arrival station is invalid or missing
400.101.009 | PAX is invalid or missing
400.101.014 | Locale is invalid or missing
400.101.015 | Currency is invalid or missing
400.101.044 | Departure date is in the past
400.101.049 | Departure time must be before arrival time
400.101.052 | Discount code is invalid or missing
400.102.040 | Unknown marketing carrier
400.200.001 | API key is invalid or missing
400.501.002 | Not implemented at Distribusion on connections#vacancy
400.800.000 | Not Found
400.800.040 | Marketing carrier not found
429.000.000 | Too Many Requests
500.100.000 | Service Unavailable
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
600.400.000 | Marketing Carrier remote request invalid
600.500.000 | Marketing Carrier remote connection unknown error
600.600.000 | Marketing Carrier remote vacancy unknown error
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)
600.703.026 | Booking price unknown

## Seats

```shell
curl -g -X GET \
  'https://api.demo.distribusion.com/retailers/v4/connections/seats?departure_station=BRSAOSPB&arrival_station=BRLZSRDJ&departure_time=2021-07-20T22:10&arrival_time=2021-07-21T05:55&marketing_carrier=VCBA' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-SEAT-LAYOUT",
            "type": "seat_layouts",
            "relationships": {
                "segment": {
                    "data": {
                        "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0",
                        "type": "segments"
                    }
                },
                "cars": {
                    "data": [
                        {
                            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-0",
                            "type": "cars"
                        }
                    ]
                }
            }
        }
    ],
    "jsonapi": {
        "version": "1.0"
    },
    "included": [
        {
            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0",
            "type": "segments",
            "attributes": {
                "index": 0,
                "departure_time": "2020-05-20T22:10",
                "arrival_time": "2020-05-21T05:55"
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "BRSAOSPB",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BRLZSRDJ",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "BRSAOSPB",
            "type": "stations",
            "attributes": {
                "code": "BRSAOSPB"
            }
        },
        {
            "id": "BRLZSRDJ",
            "type": "stations",
            "attributes": {
                "code": "BRLZSRDJ"
            }
        },
        {
            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-0",
            "type": "cars",
            "attributes": {
                "index": 0
            },
            "relationships": {
                "seats": {
                    "data": [
                        {
                            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-0-21",
                            "type": "seats"
                        },
                        {
                            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-0-23",
                            "type": "seats"
                        }
                    ]
                }
            }
        },
        {
            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-0-21",
            "type": "seats",
            "attributes": {
                "code": "21",
                "label": "21",
                "fare_class": "FARE-2",
                "vacant": true,
                "coordinates": {
                    "x": 5,
                    "y": 0,
                    "z": 0
                }
            }
        },
        {
            "id": "VCBA-BRSAOSPB-BRLZSRDJ-2021-07-20T22:10-2021-07-21T05:55-0-0-23",
            "type": "seats",
            "attributes": {
                "code": "23",
                "label": "23",
                "fare_class": "FARE-2",
                "vacant": true,
                "coordinates": {
                    "x": 5,
                    "y": 4,
                    "z": 0
                }
            }
        }
    ]
}
```

This endpoint can be used to retrieve the layout of the bus for the requested trip, as well as the following additional information for each seat:
- seat label
- seat vacancy
- fare class
- coordinates (x - row, y - column, z - level)


### HTTP Request

- Prod: `GET https://api.distribusion.com/retailers/v4/connections/seats`
- Demo: `GET https://api.demo.distribusion.com/retailers/v4/connections/seats`

### URL Parameters

| Parameter         | Mandatory | Description                                                                               | Example          |
|-------------------|-----------|-------------------------------------------------------------------------------------------|------------------|
| marketing_carrier | TRUE      | 4-letter alphabetic uppercase code                                                        | VCBA             |
| departure_station | TRUE      | 8-letter alphabetic uppercase code                                                        | BRSAOSPB         |
| arrival_station   | TRUE      | 8-letter alphabetic uppercase code                                                        | BRLZSRDJ         |
| departure_time    | TRUE      | Departure time for the outbound trip in ISO 8601 format without timezone yyyy-mm-ddThh:mm | 2021-07-20T22:10 |
| arrival_time      | TRUE      | Departure time for the outbound trip in ISO 8601 format without timezone yyyy-mm-ddThh:mm | 2021-07-21T05:55 |

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.004 | Departure station is invalid or missing
400.101.005 | Arrival station is invalid or missing
400.101.044 | Departure date is in the past
400.101.049 | Departure time must be before arrival time
400.200.001 | API key is invalid or missing
400.300.006 | Marketing carrier does not support seat layouts
400.800.040 | Marketing carrier not found
500.100.000 | Service Unavailable
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
