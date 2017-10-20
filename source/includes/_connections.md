# Connections

## Find

```shell
curl -g -X GET \
  'https://api-demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=FRLILBDT&departure_stations[]=FRLILCSA&departure_stations[]=FRLILGEU&departure_stations[]=FRLILGFA&departure_stations[]=FRLILZOB&arrival_stations[]=FRLYSAIR&arrival_stations[]=FRLYSDAR&arrival_stations[]=FRLYSIHO&arrival_stations[]=FRLYSPDB&arrival_stations[]=FRLYSPER&arrival_stations[]=FRLYSZOB&departure_date=2017-11-29&pax=1&locale=en&currency=EUR' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T19:05",
            "type": "connections",
            "attributes": {
                "departure_time": "2017-09-29T06:30",
                "arrival_time": "2017-09-29T19:05",
                "duration": 45300,
                "cheapest_total_adult_price": 4800,
                "booked_out": false
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "marketing_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "marketing_carriers"
                    }
                },
                "segments": {
                    "data": [
                        {
                            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T19:05-0",
                            "type": "segments"
                        },
                        {
                            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T19:05-1",
                            "type": "segments"
                        }
                    ]
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T12:00-2017-09-29T21:55",
            "type": "connections",
            "attributes": {
                "departure_time": "2017-09-29T12:00",
                "arrival_time": "2017-09-29T21:55",
                "duration": 35700,
                "cheapest_total_adult_price": 3800,
                "booked_out": false
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "marketing_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "marketing_carriers"
                    }
                },
                "segments": {
                    "data": [
                        {
                            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T12:00-2017-09-29T21:55-0",
                            "type": "segments"
                        },
                        {
                            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T12:00-2017-09-29T21:55-1",
                            "type": "segments"
                        }
                    ]
                }
            }
        }
    ],
    "included": [
        {
            "id": "FRLILBDT",
            "type": "stations",
            "attributes": {
                "code": "FRLILBDT",
                "name": "Lille Boulevard de Turin",
                "description": "The bus stop is located at the south side of Lille Europe station, right on the Boulevard de Turin.",
                "street_and_number": "Boulevard de Turin 179",
                "zip_code": "59800",
                "longitude": 3.07739100000003,
                "latitude": 50.6381531,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRLIL",
                        "type": "cities"
                    }
                }
            }
        },
        {
            "id": "FRLIL",
            "type": "cities",
            "attributes": {
                "name": "Lille"
            }
        },
        {
            "id": "FRLYSPER",
            "type": "stations",
            "attributes": {
                "code": "FRLYSPER",
                "name": "Lyon Perrache SNCF Train Station",
                "description": "The stop is located in front of Metro Station Perrache at Cours de Verdun Gensoul.",
                "street_and_number": "Cours de Verdun Gensoul 1 ,sous le pont de Perrache",
                "zip_code": "69002",
                "longitude": 4.82631130000004,
                "latitude": 45.7492462,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRLYS",
                        "type": "cities"
                    }
                }
            }
        },
        {
            "id": "FRLYS",
            "type": "cities",
            "attributes": {
                "name": "Lyon"
            }
        },
        {
            "id": "OUIB",
            "type": "marketing_carriers",
            "attributes": {
                "code": "OUIB",
                "trade_name": "Ouibus",
                "legal_name": "Ouibus SNCF C6",
                "booking_fee": 0
            },
            "relationships": {
                "passenger_types": {
                    "data": [
                        {
                            "id": "PADU",
                            "type": "passenger_types"
                        },
                        {
                            "id": "PBMD",
                            "type": "passenger_types"
                        },
                        {
                            "id": "PYOH",
                            "type": "passenger_types"
                        },
                        {
                            "id": "PYUT",
                            "type": "passenger_types"
                        },
                        {
                            "id": "PYUH",
                            "type": "passenger_types"
                        }
                    ]
                },
                "extra_types": {
                    "data": []
                }
            }
        },
        {
            "id": "PADU",
            "type": "passenger_types",
            "attributes": {
                "code": "PADU",
                "name": "Adults (18+)",
                "description": "Adults"
            }
        },
        {
            "id": "PBMD",
            "type": "passenger_types",
            "attributes": {
                "code": "PBMD",
                "name": "Baby (under 2 years)",
                "description": "Baby (under 2 years)"
            }
        },
        {
            "id": "PYOH",
            "type": "passenger_types",
            "attributes": {
                "code": "PYOH",
                "name": "Youth (2-11)",
                "description": null
            }
        },
        {
            "id": "PYUT",
            "type": "passenger_types",
            "attributes": {
                "code": "PYUT",
                "name": "Youth (12-15)",
                "description": null
            }
        },
        {
            "id": "PYUH",
            "type": "passenger_types",
            "attributes": {
                "code": "PYUH",
                "name": "Youth (16-17)",
                "description": null
            }
        },
        {

            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T19:05-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T06:30",
                "arrival_time": "2017-09-29T09:30",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "FRPARBER",
            "type": "stations",
            "attributes": {
                "code": "FRPARBER",
                "name": "Paris Bercy",
                "description": "The bus stop is located in front of the main entrance of the train station \"Paris Bercy\".",
                "street_and_number": "Boulevard de Bercy 48",
                "zip_code": "75012",
                "longitude": 2.38268140000002,
                "latitude": 48.8382267,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRPAR",
                        "type": "cities"
                    }
                }
            }
        },
        {
            "id": "FRPAR",
            "type": "cities",
            "attributes": {
                "name": "Paris"
            }
        },
        {
            "id": "OUIB",
            "type": "operating_carriers",
            "attributes": {
                "code": "OUIB",
                "trade_name": "Ouibus",
                "legal_name": "Ouibus SNCF C6"
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T19:05-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T12:30",
                "arrival_time": "2017-09-29T19:05",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T21:30-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T06:30",
                "arrival_time": "2017-09-29T09:30",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T06:30-2017-09-29T21:30-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T13:30",
                "arrival_time": "2017-09-29T21:30",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T07:30-2017-09-29T19:05-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T07:30",
                "arrival_time": "2017-09-29T10:30",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T07:30-2017-09-29T19:05-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T12:30",
                "arrival_time": "2017-09-29T19:05",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T07:30-2017-09-29T21:30-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T07:30",
                "arrival_time": "2017-09-29T10:30",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T07:30-2017-09-29T21:30-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T13:30",
                "arrival_time": "2017-09-29T21:30",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T12:00-2017-09-29T21:55-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T12:00",
                "arrival_time": "2017-09-29T14:55",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRLILBDT",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
            }
        },
        {
            "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T12:00-2017-09-29T21:55-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2017-09-29T16:00",
                "arrival_time": "2017-09-29T21:55",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARBER",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "FRLYSPER",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "OUIB",
                        "type": "operating_carriers"
                    }
                }
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

The endpoint searches for and delivers all the connections matching your query. The delivered set of objects will have all the necessary data for displaying on the search results page.

On our side we parallelize the outbound requests to the operating carrier integration systems to include as many connections as we're able to get from marketing carriers (excluding those which couldn't respond in time).


### HTTP Request

`GET https://api.distribusion.com/retailers/v4/connections/find`

### Query Parameters

Parameter               | Mandatory | Description
----------------------- | --------- | -----------
`departure_stations[]`  | true      | 8- or 9-letter alphanumeric uppercase code, available codes can be obtained from `GET /stations`.
`arrival_stations[]`    | true      | 8- or 9-letter alphanumeric uppercase code, available codes can be obtained from `GET /stations`.
`departure_date`        | true      | Departure date in ISO 8601 format.
`pax`                   | true      | Number of passengers - Integer in a range of 1..9.
`locale`                | true      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard .
`currency`              | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.

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
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/connections/vacancy?marketing_carrier=OUIB&departure_station=FRLILBDT&arrival_station=FRLYSPER&departure_time=2017-09-29T12%3A00&arrival_time=2017-09-29T21%3A55&currency=EUR&passengers%5B%5D%5Bpax%5D=1&passengers%5B%5D%5Btype%5D=PADU' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "OUIB-FRLILBDT-FRLYSPER-2017-09-29T12:00-2017-09-29T21:55",
        "type": "vacancies",
        "attributes": {
            "vacant": true,
            "total_price": 3800
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

This endpoint should be used during a booking to get a binding price and availability for a specified group of travellers. "Specified" is defined as having not only the right amount of passengers but also selected the passenger types for each passenger. The passenger types are marketing carrier specific (retrieved from connections#find or using #marketing_carriers). If you are looking into getting the general availability of a connection (true / false) please use the connections#find endpoint, which retrieve the availability directly from marketing carriers.

### HTTP Request

`GET api.distribusion.com/retailers/v4/connections/vacancy`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`marketing_carrier` | true      | 4-letter alphanumeric uppercase code.
`departure_station` | true      | 8 or 9-letter alphanumeric uppercase code.
`arrival_station`   | true      | 8 or 9-letter alphanumeric uppercase code.
`departure_time`    | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`      | true      | Arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`currency`          | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.
`discount_code`     | false     | Code consisting of minimum 3 alphanumeric characters.
                    |           |
`passengers`        | true      | Array
_`pax`            | true      | Number of passenger for a specific passenger type
_`type`           | true      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.
                    |           |
`extras`            | false     | Array
_`quantity`       | true      | Integer in a range of 1..999.
_`type`           | true      | Extra type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.


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
500.100.000 | Service Unavailable
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
600.400.000 | Marketing Carrier remote request invalid
600.500.000 | Marketing Carrier remote connection unknown error
600.600.000 | Marketing Carrier remote vacancy unknown error
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)
600.703.026 | Booking price unknown
