# Connections

## Find

```shell
curl -g -X GET \
  'https://api-demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=GBXVHPET&arrival_stations[]=GBCBGCAM&arrival_stations[]=GBCBGCCE&arrival_stations[]=GBCBGCMA&arrival_stations[]=GBCBGCPR&arrival_stations[]=GBCBGTPR&arrival_stations[]=GBCBGTRU&departure_date=2019-12-15&pax=1&locale=en&currency=EUR' \
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
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T02:25-2019-12-15T03:15-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T02:25-2019-12-15T03:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T02:25",
                "arrival_time": "2019-12-15T03:15"
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
                        }
                    ]
                },
                "fare_classes": {
                    "data": [
                        {
                            "type": "fare_classes",
                            "id": "FARE-1"
                        },
                        {
                            "type": "fare_classes",
                            "id": "FARE-2"
                        },
                        {
                            "type": "fare_classes",
                            "id": "FARE-3"
                        }
                    ]
                },
                "extra_types": {
                    "data": []
                }
            },
            "id": "NEXP",
            "attributes": {
                "trade_name": "National Express",
                "legal_name": "National Express Limited",
                "code": "NEXP",
                "booking_fee": 100
            }
        },
        {
            "type": "operating_carriers",
            "id": "NEXP",
            "attributes": {
                "trade_name": "National Express",
                "legal_name": "National Express Limited",
                "code": "NEXP"
            }
        },
        {
            "type": "passenger_types",
            "id": "PNOS",
            "attributes": {
                "name": "Adult",
                "min_age": 0,
                "max_age": 99,
                "description": "",
                "code": "PNOS"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "GBXVH"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "GBXVHPET",
            "attributes": {
                "zip_code": "PE1 1NL",
                "time_zone": "Europe/London",
                "street_and_number": "Westgate",
                "name": "Peterborough",
                "longitude": -0.24632,
                "latitude": 52.57511,
                "description": "The bus stop is located near Peterborough Station.",
                "code": "GBXVHPET"
            }
        },
        {
            "type": "cities",
            "id": "GBXVH",
            "attributes": {
                "name": "Peterborough",
                "code": "GBXVH"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "GBCBG"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "GBCBGCCE",
            "attributes": {
                "zip_code": "CB1 1JE",
                "time_zone": "Europe/London",
                "street_and_number": "Parkside 32",
                "name": "Cambridge City Centre",
                "longitude": 0.12938269999995,
                "latitude": 52.2032877,
                "description": "The bus stop is located in front of Parkers Piece park. For National Express passengers, from 18/03/2019 - 22/03/2019 from 9pm - 6am the stop will be East Rd, Fire Station; 05/05/2019, the bus will stop at Trumpington Park & Ride, Hauxton Rd.",
                "code": "GBCBGCCE"
            }
        },
        {
            "type": "cities",
            "id": "GBCBG",
            "attributes": {
                "name": "Cambridge",
                "code": "GBCBG"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T02:25-2019-12-15T03:15-0"
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
                            "id": "ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "ALRO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NREF"
                        },
                        {
                            "type": "fare_features",
                            "id": "AMEN"
                        },
                        {
                            "type": "fare_features",
                            "id": "WIFI"
                        },
                        {
                            "type": "fare_features",
                            "id": "MSYS"
                        },
                        {
                            "type": "fare_features",
                            "id": "UCHA"
                        },
                        {
                            "type": "fare_features",
                            "id": "AAFO"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLUG"
                        },
                        {
                            "type": "fare_features",
                            "id": "AAFR"
                        }
                    ]
                }
            },
            "id": "FARE-1",
            "attributes": {
                "name": "Standard",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-1"
            }
        },
        {
            "type": "fare_features",
            "id": "ACON",
            "attributes": {
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation.",
                "code": "ACON"
            }
        },
        {
            "type": "fare_features",
            "id": "TOIL",
            "attributes": {
                "name": "Toilet",
                "description": "A toilet is available on board.",
                "code": "TOIL"
            }
        },
        {
            "type": "fare_features",
            "id": "ALRO",
            "attributes": {
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space.",
                "code": "ALRO"
            }
        },
        {
            "type": "fare_features",
            "id": "NREF",
            "attributes": {
                "name": "Non-refundable ",
                "description": "The ticket cannot be refunded.",
                "code": "NREF"
            }
        },
        {
            "type": "fare_features",
            "id": "AMEN",
            "attributes": {
                "name": "Amendable",
                "description": "The ticket is amendable. Please contact the carrier for further steps. A £5 amendment fee is applicable. ",
                "code": "AMEN"
            }
        },
        {
            "type": "fare_features",
            "id": "WIFI",
            "attributes": {
                "name": "Wifi",
                "description": "Free wifi is available on board.",
                "code": "WIFI"
            }
        },
        {
            "type": "fare_features",
            "id": "MSYS",
            "attributes": {
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet.",
                "code": "MSYS"
            }
        },
        {
            "type": "fare_features",
            "id": "UCHA",
            "attributes": {
                "name": "USB charger",
                "description": "USB plug is available at each seat. ",
                "code": "UCHA"
            }
        },
        {
            "type": "fare_features",
            "id": "AAFO",
            "attributes": {
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike.",
                "code": "AAFO"
            }
        },
        {
            "type": "fare_features",
            "id": "BLUG",
            "attributes": {
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge.",
                "code": "BLUG"
            }
        },
        {
            "type": "fare_features",
            "id": "AAFR",
            "attributes": {
                "name": "Accessible area for wheelchairs",
                "description": "Fully collapsible wheelchairs and fully collapsible pushchairs may be stowed free of charge. Passenger have to contact bus operator 36 hours before the departure.",
                "code": "AAFR"
            }
        },
        {
            "type": "fare_classes",
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "type": "fare_features",
                            "id": "ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "ALRO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NAME"
                        },
                        {
                            "type": "fare_features",
                            "id": "NREF"
                        },
                        {
                            "type": "fare_features",
                            "id": "WIFI"
                        },
                        {
                            "type": "fare_features",
                            "id": "MSYS"
                        },
                        {
                            "type": "fare_features",
                            "id": "UCHA"
                        },
                        {
                            "type": "fare_features",
                            "id": "AAFO"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLUG"
                        },
                        {
                            "type": "fare_features",
                            "id": "AAFR"
                        }
                    ]
                }
            },
            "id": "FARE-2",
            "attributes": {
                "name": "Restricted",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-2"
            }
        },
        {
            "type": "fare_features",
            "id": "NAME",
            "attributes": {
                "name": "Non-amendable",
                "description": "The ticket is not amendable.",
                "code": "NAME"
            }
        },
        {
            "type": "fare_classes",
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "type": "fare_features",
                            "id": "ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "ALRO"
                        },
                        {
                            "type": "fare_features",
                            "id": "REFU"
                        },
                        {
                            "type": "fare_features",
                            "id": "AMEN"
                        },
                        {
                            "type": "fare_features",
                            "id": "WIFI"
                        },
                        {
                            "type": "fare_features",
                            "id": "MSYS"
                        },
                        {
                            "type": "fare_features",
                            "id": "UCHA"
                        },
                        {
                            "type": "fare_features",
                            "id": "AAFO"
                        },
                        {
                            "type": "fare_features",
                            "id": "BLUG"
                        },
                        {
                            "type": "fare_features",
                            "id": "AAFR"
                        }
                    ]
                }
            },
            "id": "FARE-3",
            "attributes": {
                "name": "Fully Flexible",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-3"
            }
        },
        {
            "type": "fare_features",
            "id": "REFU",
            "attributes": {
                "name": "Refundable",
                "description": "The ticket is refundable and can be cancelled no less than 72 hours in advance of travel. Please contact the carrier for further steps. ",
                "code": "REFU"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T07:15",
                "arrival_time": "2019-12-15T08:25"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGTPR"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
            "attributes": {
                "index": 1,
                "departure_time": "2019-12-15T09:05",
                "arrival_time": "2019-12-15T09:15"
            }
        },
        {
            "type": "stations",
            "relationships": {
                "city": {
                    "data": {
                        "type": "cities",
                        "id": "GBCBG"
                    }
                },
                "area": {
                    "data": null
                }
            },
            "id": "GBCBGTPR",
            "attributes": {
                "zip_code": "CB2 9FT",
                "time_zone": "Europe/London",
                "street_and_number": "Hauxton Rd",
                "name": "Cambridge Trumpington P+R",
                "longitude": 0.10806,
                "latitude": 52.16772,
                "description": "The bus stop is inside Trumpington Park & Ride. From 43 Hauxton Rd, follow the sign \"park & ride\" to reach the parking lot. There is bus lane and bus sign.",
                "code": "GBCBGTPR"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:15-2019-12-15T08:25-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:15-2019-12-15T08:25-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T07:15",
                "arrival_time": "2019-12-15T08:25"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:15-2019-12-15T08:25-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T20:30-2019-12-15T21:20-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T20:30-2019-12-15T21:20-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T20:30",
                "arrival_time": "2019-12-15T21:20"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T20:30-2019-12-15T21:20-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:00-2019-12-15T08:10-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:00-2019-12-15T08:10-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T07:00",
                "arrival_time": "2019-12-15T08:10"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:00-2019-12-15T08:10-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T09:20-2019-12-15T10:15-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T09:20-2019-12-15T10:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T09:20",
                "arrival_time": "2019-12-15T10:15"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2019-12-15T09:20-2019-12-15T10:15-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T09:20",
                "arrival_time": "2019-12-15T10:15"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-1"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGTPR"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-1",
            "attributes": {
                "index": 1,
                "departure_time": "2019-12-15T11:20",
                "arrival_time": "2019-12-15T11:30"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-0"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-1"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-0"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-0",
            "attributes": {
                "index": 0,
                "departure_time": "2019-12-15T02:25",
                "arrival_time": "2019-12-15T03:15"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-1"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "type": "operating_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGTPR"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-1",
            "attributes": {
                "index": 1,
                "departure_time": "2019-12-15T04:05",
                "arrival_time": "2019-12-15T04:20"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-0"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-1"
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
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T02:25-2019-12-15T03:15-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T02:25-2019-12-15T03:15",
            "attributes": {
                "duration": 3000,
                "departure_time": "2019-12-15T02:25",
                "cheapest_total_adult_price": 998,
                "booked_out": false,
                "arrival_time": "2019-12-15T03:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0"
                        },
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGTPR"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15",
            "attributes": {
                "duration": 7200,
                "departure_time": "2019-12-15T07:15",
                "cheapest_total_adult_price": 1206,
                "booked_out": false,
                "arrival_time": "2019-12-15T09:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:15-2019-12-15T08:25-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:15-2019-12-15T08:25",
            "attributes": {
                "duration": 4200,
                "departure_time": "2019-12-15T07:15",
                "cheapest_total_adult_price": 987,
                "booked_out": false,
                "arrival_time": "2019-12-15T08:25"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T20:30-2019-12-15T21:20-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T20:30-2019-12-15T21:20",
            "attributes": {
                "duration": 3000,
                "departure_time": "2019-12-15T20:30",
                "cheapest_total_adult_price": 987,
                "booked_out": false,
                "arrival_time": "2019-12-15T21:20"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:00-2019-12-15T08:10-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T07:00-2019-12-15T08:10",
            "attributes": {
                "duration": 4200,
                "departure_time": "2019-12-15T07:00",
                "cheapest_total_adult_price": 987,
                "booked_out": false,
                "arrival_time": "2019-12-15T08:10"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T09:20-2019-12-15T10:15-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGCCE"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGCCE-2019-12-15T09:20-2019-12-15T10:15",
            "attributes": {
                "duration": 3300,
                "departure_time": "2019-12-15T09:20",
                "cheapest_total_adult_price": 998,
                "booked_out": false,
                "arrival_time": "2019-12-15T10:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-0"
                        },
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGTPR"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T09:20-2019-12-15T11:30",
            "attributes": {
                "duration": 7800,
                "departure_time": "2019-12-15T09:20",
                "cheapest_total_adult_price": 1217,
                "booked_out": false,
                "arrival_time": "2019-12-15T11:30"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-0"
                        },
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "departure_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBXVHPET"
                    }
                },
                "arrival_station": {
                    "data": {
                        "type": "stations",
                        "id": "GBCBGTPR"
                    }
                }
            },
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T02:25-2019-12-15T04:20",
            "attributes": {
                "duration": 6900,
                "departure_time": "2019-12-15T02:25",
                "cheapest_total_adult_price": 1217,
                "booked_out": false,
                "arrival_time": "2019-12-15T04:20"
            }
        }
    ]
}        
```

The endpoint searches for and delivers all the connections matching your query. The delivered set of objects will have all the necessary data for displaying on the search results page.

On our side we parallelize the outbound requests to the operating carrier integration systems to include as many connections as we're able to get from marketing carriers (excluding those which couldn't respond in time).

You can also add two optional parameters in the header:

- `accept-encoding` with `deflate, gzip` value in order to receive compressed responses, reducing network time.
- `collect_within` with an integer representing the maximum time (in seconds) allowed by our application to retrieve results from operators. This value can range from 1 to 10.

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
curl -g -X GET \
  'https://api-demo.distribusion.com/retailers/v4/connections/vacancy?marketing_carrier=NEXP&departure_station=GBXVHPET&arrival_station=GBCBGCCE&departure_time=2019-08-15T09:15&arrival_time=2019-08-15T10:15&currency=EUR&passengers[][pax]=2&passengers[][type]=PADV&fare_class=FARE-1' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "NEXP-GBXVHPET-GBCBGCCE-2019-08-15T09:15-2019-08-15T10:15",
        "type": "vacancies",
        "attributes": {
            "vacant": true,
            "total_price": 2020
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

This endpoint should be used during a booking to get a binding price and availability for a specified group of travellers. "Specified" is defined as having not only the right amount of passengers but also selected the passenger types for each passenger and the fare class. The passenger types can be used in two ways: standardised or specific to each marketing carrier. The fare class are marketing carrier specific (both can be retrieved from connections#find or using #marketing_carriers). If you are looking into getting the general availability of a connection (true / false) please use the connections#find endpoint, which also show the availability at the last point in time this connection was requested by our system.

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
`fare_class`        | false     | Code consisting of 6-7 alphanumerical characters.
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
