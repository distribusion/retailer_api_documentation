# Connections

## Find

```shell
curl -g -X GET \
  'https://api-demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=FRLILBDT&departure_stations[]=FRLILCSA&departure_stations[]=FRLILGEU&departure_stations[]=FRLILGFA&departure_stations[]=FRLILZOB&arrival_stations[]=FRLYSAIR&arrival_stations[]=FRLYSDAR&arrival_stations[]=FRLYSIHO&arrival_stations[]=FRLYSPDB&arrival_stations[]=FRLYSPER&arrival_stations[]=FRLYSZOB&departure_date=2018-09-15&pax=1&locale=en&currency=EUR' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "meta": {
        "locale": "en",
        "currency": "EUR"
    },
    "jsonapi": {
        "version": "1.0"
    },
    "included": [
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T21:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T07:45",
                "arrival_time": "2018-09-15T10:40"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T21:15-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T14:30",
                "arrival_time": "2018-09-15T21:15"
            }
        },
        {
            "type": "marketing_carriers",
            "relationships": {
                "passenger_types": {
                    "data": [
                        {
                            "type": "passenger_types",
                            "id": "PADX"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PBAB"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PCIN"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PEPE"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PYPO"
                        }
                    ]
                },
                "extra_types": {
                    "data": []
                }
            },
            "id": "EUSA",
            "attributes": {
                "trade_name": "Eurolines SA",
                "legal_name": "Eurolines SA",
                "code": "EUSA",
                "booking_fee": 0
            }
        },
        {
            "type": "operating_carriers",
            "id": "ISIL",
            "attributes": {
                "trade_name": "Isilines",
                "legal_name": "Isilines",
                "code": "ISIL"
            }
        },
        {
            "type": "operating_carriers",
            "id": "EUSA",
            "attributes": {
                "trade_name": "Eurolines SA",
                "legal_name": "Eurolines SA",
                "code": "EUSA"
            }
        },
        {
            "type": "passenger_types",
            "id": "PADX",
            "attributes": {
                "name": "Adults 26-59",
                "description": "",
                "code": "PADX"
            }
        },
        {
            "type": "passenger_types",
            "id": "PBAB",
            "attributes": {
                "name": "Children 0-4",
                "description": "",
                "code": "PBAB"
            }
        },
        {
            "type": "passenger_types",
            "id": "PCIN",
            "attributes": {
                "name": "Children 4-11",
                "description": "",
                "code": "PCIN"
            }
        },
        {
            "type": "passenger_types",
            "id": "PEPE",
            "attributes": {
                "name": "Seniors over 60",
                "description": "",
                "code": "PEPE"
            }
        },
        {
            "type": "passenger_types",
            "id": "PYPO",
            "attributes": {
                "name": "Youths 12-25",
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
                        "id": "FRLIL"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "FRLILBDT",
            "attributes": {
                "zip_code": "59800",
                "time_zone": "Europe/Paris",
                "street_and_number": "Boulevard de Turin",
                "name": "Lille Boulevard de Turin",
                "longitude": 3.076675,
                "latitude": 50.638756,
                "description": "The bus stop is located at the south side of Lille Europe station, right on the Boulevard de Turin, near \"Suite Novotel\".",
                "code": "FRLILBDT"
            }
        },
        {
            "type": "cities",
            "id": "FRLIL",
            "attributes": {
                "name": "Lille",
                "code": "FRLIL"
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
            "id": "FRPARGBA",
            "attributes": {
                "zip_code": "93170",
                "time_zone": "Europe/Paris",
                "street_and_number": "Av. du Général de Gaulle 28",
                "name": "Paris Gallieni (Bagnolet)",
                "longitude": 2.414311,
                "latitude": 48.865442,
                "description": "Paris's internation bus station is located in the eastern part of the city, and is connected to the metro line M3. At the station, there is a taxi stand, a snack bar, and parking areas.",
                "code": "FRPARGBA"
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
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "FRLYS"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "FRLYSPER",
            "attributes": {
                "zip_code": "69002",
                "time_zone": "Europe/Paris",
                "street_and_number": "Cours de Verdun Gensoul 14",
                "name": "Lyon Perrache SNCF Train Station",
                "longitude": 4.826788,
                "latitude": 45.749711,
                "description": "Central bus station of the center exchange of Lyon Perrache on the 1st floor Rhône Est side. Access to the platforms via Gallery D. Warning: Every departure between 12:30 a.m. and 4:45 a.m will take place at 30 Cours de Verdun Perrache 69002 Lyon in front of the \"Brasserie Georges\", less than 5 min walking from the bus station of Perrache, which is closed during this period.",
                "code": "FRLYSPER"
            }
        },
        {
            "type": "cities",
            "id": "FRLYS",
            "attributes": {
                "name": "Lyon",
                "code": "FRLYS"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T23:45-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T12:00",
                "arrival_time": "2018-09-15T14:50"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T23:45-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T17:00",
                "arrival_time": "2018-09-15T23:45"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T22:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T13:00",
                "arrival_time": "2018-09-15T15:30"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T22:15-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T16:30",
                "arrival_time": "2018-09-15T22:15"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T23:45-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T13:00",
                "arrival_time": "2018-09-15T15:30"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T23:45-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T17:00",
                "arrival_time": "2018-09-15T23:45"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRDIJHBF"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T16:00-2018-09-16T05:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T16:00",
                "arrival_time": "2018-09-15T22:40"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRDIJHBF"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T16:00-2018-09-16T05:15-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-16T02:50",
                "arrival_time": "2018-09-16T05:15"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "FRDIJ"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "FRDIJHBF",
            "attributes": {
                "zip_code": "21000",
                "time_zone": "Europe/Paris",
                "street_and_number": "Cour de la gare",
                "name": "Dijon Main Train Station",
                "longitude": 5.02808070000003,
                "latitude": 47.3236042,
                "description": "The bus stops on the parking lot in front of main train station. Near the parking lot there are cash mashine and car rental facilities.",
                "code": "FRDIJHBF"
            }
        },
        {
            "type": "cities",
            "id": "FRDIJ",
            "attributes": {
                "name": "Dijon",
                "code": "FRDIJ"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T19:30-2018-09-16T05:40-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T19:30",
                "arrival_time": "2018-09-15T22:45"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T19:30-2018-09-16T05:40-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T23:30",
                "arrival_time": "2018-09-16T05:40"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T19:55-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T07:45",
                "arrival_time": "2018-09-15T10:40"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T19:55-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T13:00",
                "arrival_time": "2018-09-15T19:55"
            }
        },
        {
            "type": "marketing_carriers",
            "relationships": {
                "passenger_types": {
                    "data": [
                        {
                            "type": "passenger_types",
                            "id": "PADX"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PBAB"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PCIN"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PEPE"
                        },
                        {
                            "type": "passenger_types",
                            "id": "PYPO"
                        }
                    ]
                },
                "extra_types": {
                    "data": []
                }
            },
            "id": "ISIL",
            "attributes": {
                "trade_name": "Isilines",
                "legal_name": "Isilines",
                "code": "ISIL",
                "booking_fee": 0
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T22:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T12:00",
                "arrival_time": "2018-09-15T14:50"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T22:15-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T16:30",
                "arrival_time": "2018-09-15T22:15"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T17:00-2018-09-16T05:40-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T17:00",
                "arrival_time": "2018-09-15T20:05"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T17:00-2018-09-16T05:40-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T23:30",
                "arrival_time": "2018-09-16T05:40"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T19:00-2018-09-16T05:40-0",
            "attributes": {
                "index": 0,
                "departure_time": "2018-09-15T19:00",
                "arrival_time": "2018-09-15T21:30"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRPARGBA"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T19:00-2018-09-16T05:40-1",
            "attributes": {
                "index": 1,
                "departure_time": "2018-09-15T23:30",
                "arrival_time": "2018-09-16T05:40"
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
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T21:15-0"
                        },
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T21:15-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T21:15",
            "attributes": {
                "duration": 48600,
                "departure_time": "2018-09-15T07:45",
                "cheapest_total_adult_price": 3100,
                "booked_out": false,
                "arrival_time": "2018-09-15T21:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T23:45-0"
                        },
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T23:45-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T23:45",
            "attributes": {
                "duration": 42300,
                "departure_time": "2018-09-15T12:00",
                "cheapest_total_adult_price": 3900,
                "booked_out": false,
                "arrival_time": "2018-09-15T23:45"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T22:15-0"
                        },
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T22:15-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T22:15",
            "attributes": {
                "duration": 33300,
                "departure_time": "2018-09-15T13:00",
                "cheapest_total_adult_price": 2900,
                "booked_out": false,
                "arrival_time": "2018-09-15T22:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T23:45-0"
                        },
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T23:45-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T23:45",
            "attributes": {
                "duration": 38700,
                "departure_time": "2018-09-15T13:00",
                "cheapest_total_adult_price": 4600,
                "booked_out": false,
                "arrival_time": "2018-09-15T23:45"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T16:00-2018-09-16T05:15-0"
                        },
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T16:00-2018-09-16T05:15-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T16:00-2018-09-16T05:15",
            "attributes": {
                "duration": 47700,
                "departure_time": "2018-09-15T16:00",
                "cheapest_total_adult_price": 2200,
                "booked_out": false,
                "arrival_time": "2018-09-16T05:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T19:30-2018-09-16T05:40-0"
                        },
                        {
                            "type": "segments",
                            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T19:30-2018-09-16T05:40-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "EUSA"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T19:30-2018-09-16T05:40",
            "attributes": {
                "duration": 36600,
                "departure_time": "2018-09-15T19:30",
                "cheapest_total_adult_price": 2400,
                "booked_out": false,
                "arrival_time": "2018-09-16T05:40"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T19:55-0"
                        },
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T19:55-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T07:45-2018-09-15T19:55",
            "attributes": {
                "duration": 43800,
                "departure_time": "2018-09-15T07:45",
                "cheapest_total_adult_price": 2200,
                "booked_out": false,
                "arrival_time": "2018-09-15T19:55"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T22:15-0"
                        },
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T22:15-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T12:00-2018-09-15T22:15",
            "attributes": {
                "duration": 36900,
                "departure_time": "2018-09-15T12:00",
                "cheapest_total_adult_price": 2200,
                "booked_out": false,
                "arrival_time": "2018-09-15T22:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T17:00-2018-09-16T05:40-0"
                        },
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T17:00-2018-09-16T05:40-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T17:00-2018-09-16T05:40",
            "attributes": {
                "duration": 45600,
                "departure_time": "2018-09-15T17:00",
                "cheapest_total_adult_price": 2000,
                "booked_out": false,
                "arrival_time": "2018-09-16T05:40"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T19:00-2018-09-16T05:40-0"
                        },
                        {
                            "type": "segments",
                            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T19:00-2018-09-16T05:40-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "ISIL"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLILBDT"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "FRLYSPER"
                    }
                }
            },
            "id": "ISIL-FRLILBDT-FRLYSPER-2018-09-15T19:00-2018-09-16T05:40",
            "attributes": {
                "duration": 38400,
                "departure_time": "2018-09-15T19:00",
                "cheapest_total_adult_price": 2000,
                "booked_out": false,
                "arrival_time": "2018-09-16T05:40"
            }
        }
    ]
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
`departure_start_time`  | false     | String, `HH:MM:SS`, defaults to `00:00:00`
`departure_end_time`    | false     | String, `HH:MM:SS`, defaults to `23:59:59`

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
  'https://api-demo.distribusion.com/retailers/v4/connections/vacancy?marketing_carrier=EUSA&departure_station=FRLILBDT&arrival_station=FRLYSPER&departure_time=2018-09-15T13:00&arrival_time=2018-09-15T22:15&passengers[][type]=PADX&passengers[][pax]=1&currency=EUR' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "EUSA-FRLILBDT-FRLYSPER-2018-09-15T13:00-2018-09-15T22:15",
        "type": "vacancies",
        "attributes": {
            "vacant": true,
            "total_price": 2900
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
_`pax`              | true      | Number of passenger for a specific passenger type
_`type`             | true      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.
                    |           |
`extras`            | false     | Array
_`quantity`         | true      | Integer in a range of 1..999.
_`type`             | true      | Extra type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.


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
