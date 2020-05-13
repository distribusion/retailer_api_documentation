# Connections

## Find

```shell
curl -g -X GET \
  'https://api-demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=GBXVHPET&arrival_stations[]=GBCBGCAM&arrival_stations[]=GBCBGCCE&arrival_stations[]=GBCBGCMA&arrival_stations[]=GBCBGCPR&arrival_stations[]=GBCBGTPR&arrival_stations[]=GBCBGTRU&departure_date=2020-06-15&pax=1&locale=en&currency=EUR' \
  -H 'api-key: {demo_api_key}' \
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
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T20:40-2020-06-15T21:30-0"
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T20:40-2020-06-15T21:30-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T20:40",
                "arrival_time": "2020-06-15T21:30"
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
                            "id": "PSOE"
                        }
                    ]
                },
                "fare_classes": {
                    "data": [
                        {
                            "type": "fare_classes",
                            "id": "NEXP-FARE-1"
                        },
                        {
                            "type": "fare_classes",
                            "id": "NEXP-FARE-2"
                        },
                        {
                            "type": "fare_classes",
                            "id": "NEXP-FARE-3"
                        },
                        {
                            "type": "fare_classes",
                            "id": "NEXP-FARE-4"
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
                "min_age": 16,
                "max_age": 59,
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
                "max_age": 15,
                "description": "",
                "code": "PCIL"
            }
        },
        {
            "type": "passenger_types",
            "id": "PSOE",
            "attributes": {
                "name": "Senior",
                "min_age": 60,
                "max_age": 99,
                "description": "",
                "code": "PSOE"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T20:40-2020-06-15T21:30-0"
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
                            "id": "NEXP-ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-ALRO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-NREF"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AMEN"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-WIFI"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-MSYS"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-UCHA"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AAFO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-BLUG"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AAFR"
                        }
                    ]
                }
            },
            "id": "NEXP-FARE-1",
            "attributes": {
                "name": "Standard",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-1"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-ACON",
            "attributes": {
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation.",
                "code": "ACON"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-TOIL",
            "attributes": {
                "name": "Toilet",
                "description": "A toilet is available on board.",
                "code": "TOIL"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-ALRO",
            "attributes": {
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space.",
                "code": "ALRO"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-NREF",
            "attributes": {
                "name": "Non-refundable ",
                "description": "The ticket cannot be refunded.",
                "code": "NREF"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-AMEN",
            "attributes": {
                "name": "Amendable",
                "description": "The ticket is amendable. Please proceed via the link https://coach.nationalexpress.com/nxbooking/mmb2ManageMyBooking. A £5 amendment fee is applicable. ",
                "code": "AMEN"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-WIFI",
            "attributes": {
                "name": "Wifi",
                "description": "Free wifi is available on board.",
                "code": "WIFI"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-MSYS",
            "attributes": {
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet.",
                "code": "MSYS"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-UCHA",
            "attributes": {
                "name": "USB charger",
                "description": "USB plug is available at each seat. ",
                "code": "UCHA"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-AAFO",
            "attributes": {
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike.",
                "code": "AAFO"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-BLUG",
            "attributes": {
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge.",
                "code": "BLUG"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-AAFR",
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
                            "id": "NEXP-ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-ALRO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-NAME"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-NREF"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-WIFI"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-MSYS"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-UCHA"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AAFO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-BLUG"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AAFR"
                        }
                    ]
                }
            },
            "id": "NEXP-FARE-2",
            "attributes": {
                "name": "Restricted",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-2"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-NAME",
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
                            "id": "NEXP-ACON"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-TOIL"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-ALRO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-REFU"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AMEN"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-WIFI"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-MSYS"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-UCHA"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AAFO"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-BLUG"
                        },
                        {
                            "type": "fare_features",
                            "id": "NEXP-AAFR"
                        }
                    ]
                }
            },
            "id": "NEXP-FARE-3",
            "attributes": {
                "name": "Fully Flexible",
                "journey_type": "single",
                "iata_category": null,
                "code": "FARE-3"
            }
        },
        {
            "type": "fare_features",
            "id": "NEXP-REFU",
            "attributes": {
                "name": "Refundable",
                "description": "The ticket is refundable and can be cancelled no less than 72 hours in advance of travel.",
                "code": "REFU"
            }
        },
        {
            "type": "fare_classes",
            "relationships": {
                "fare_features": {
                    "data": []
                }
            },
            "id": "NEXP-FARE-4",
            "attributes": {
                "name": "Open Return",
                "journey_type": "open_return",
                "iata_category": null,
                "code": "FARE-4"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T02:25-2020-06-15T03:15-0"
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T02:25-2020-06-15T03:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T02:25",
                "arrival_time": "2020-06-15T03:15"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T02:25-2020-06-15T03:15-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0"
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T06:05",
                "arrival_time": "2020-06-15T07:35"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-0"
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T06:05",
                "arrival_time": "2020-06-15T07:35"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-1"
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-1",
            "attributes": {
                "index": 1,
                "departure_time": "2020-06-15T09:05",
                "arrival_time": "2020-06-15T09:15"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-0"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-1"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-0"
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T09:15",
                "arrival_time": "2020-06-15T10:15"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-1"
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-1",
            "attributes": {
                "index": 1,
                "departure_time": "2020-06-15T11:20",
                "arrival_time": "2020-06-15T11:30"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-0"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-1"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T09:15-2020-06-15T10:15-0"
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T09:15-2020-06-15T10:15-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T09:15",
                "arrival_time": "2020-06-15T10:15"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGCCE-2020-06-15T09:15-2020-06-15T10:15-0"
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-0"
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-0",
            "attributes": {
                "index": 0,
                "departure_time": "2020-06-15T02:25",
                "arrival_time": "2020-06-15T03:15"
            }
        },
        {
            "type": "segments",
            "relationships": {
                "vehicle": {
                    "data": {
                        "type": "vehicles",
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-1"
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-1",
            "attributes": {
                "index": 1,
                "departure_time": "2020-06-15T04:05",
                "arrival_time": "2020-06-15T04:20"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-0"
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
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-1"
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
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T20:40-2020-06-15T21:30-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 1412,
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T20:40-2020-06-15T21:30-FARE-3",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-3",
                                "code": "FARE-3"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T20:40-2020-06-15T21:30",
            "attributes": {
                "duration": 3000,
                "departure_time": "2020-06-15T20:40",
                "cheapest_total_adult_price": 1240,
                "booked_out": false,
                "arrival_time": "2020-06-15T21:30"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T02:25-2020-06-15T03:15-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 1085,
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T02:25-2020-06-15T03:15-FARE-1",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-1",
                                "code": "FARE-1"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T02:25-2020-06-15T03:15",
            "attributes": {
                "duration": 3000,
                "departure_time": "2020-06-15T02:25",
                "cheapest_total_adult_price": 1085,
                "booked_out": false,
                "arrival_time": "2020-06-15T03:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 1073,
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-FARE-1",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-1",
                                "code": "FARE-1"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35",
            "attributes": {
                "duration": 5400,
                "departure_time": "2020-06-15T06:05",
                "cheapest_total_adult_price": 1073,
                "booked_out": false,
                "arrival_time": "2020-06-15T07:35"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-0"
                        },
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 1512,
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15-FARE-2",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-2",
                                "code": "FARE-2"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T06:05-2020-06-15T09:15",
            "attributes": {
                "duration": 11400,
                "departure_time": "2020-06-15T06:05",
                "cheapest_total_adult_price": 1312,
                "booked_out": false,
                "arrival_time": "2020-06-15T09:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-0"
                        },
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 2500,
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30-FARE-3",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-3",
                                "code": "FARE-3"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T09:15-2020-06-15T11:30",
            "attributes": {
                "duration": 8100,
                "departure_time": "2020-06-15T09:15",
                "cheapest_total_adult_price": 1324,
                "booked_out": false,
                "arrival_time": "2020-06-15T11:30"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T09:15-2020-06-15T10:15-0"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 1032,
                            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T09:15-2020-06-15T10:15-FARE-1",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-1",
                                "code": "FARE-1"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T09:15-2020-06-15T10:15",
            "attributes": {
                "duration": 3600,
                "departure_time": "2020-06-15T09:15",
                "cheapest_total_adult_price": 1085,
                "booked_out": false,
                "arrival_time": "2020-06-15T10:15"
            }
        },
        {
            "type": "connections",
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-0"
                        },
                        {
                            "type": "segments",
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-1"
                        }
                    ]
                },
                "marketing_carrier": {
                    "data": {
                        "type": "marketing_carriers",
                        "id": "NEXP"
                    }
                },
                "fares": {
                    "data": [
                        {
                            "type": "fares",
                            "price": 1025,
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20-FARE-1",
                            "fare_class": {
                                "type": "fare_classes",
                                "id": "NEXP-FARE-1",
                                "code": "FARE-1"
                            }
                        }
                    ]
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
            "id": "NEXP-GBXVHPET-GBCBGTPR-2020-06-15T02:25-2020-06-15T04:20",
            "attributes": {
                "duration": 6900,
                "departure_time": "2020-06-15T02:25",
                "cheapest_total_adult_price": 1324,
                "booked_out": false,
                "arrival_time": "2020-06-15T04:20"
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
`return_date`           | false     | Departure date for the inbound trip (ISO 8601 format).
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
  'https://api-demo.distribusion.com/retailers/v4/connections/vacancy?departure_station=GBXVHPET&arrival_station=GBCBGCCE&departure_time=2020-06-15T06:05&arrival_time=2020-06-15T07:35&currency=EUR&passengers[][pax]=1&passengers[][type]=PNOS&passengers[][pax]=1&passengers[][type]=PCIL&marketing_carrier=NEXP&fare_class=FARE-3' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "NEXP-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35",
        "type": "vacancies",
        "attributes": {
            "vacant": true,
            "total_price": 2266
        },
        "relationships": {
            "fees": {
                "data": []
            }
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "currency": "EUR"
    },
    "included": []
}
```

This endpoint checks the availability and price for the specific number and type of passengers for the selected trip. The trip is defined as a ride from one station to another at a particular day and time.

In parallel, we send the outbound requests to the operating carrier integration systems to retrieve the latest prices and vacant seats information.

### HTTP Request

`GET api.distribusion.com/retailers/v4/connections/vacancy`

### URL Parameters

Parameter              | Mandatory | Description
---------------------- | --------- | -----------
`marketing_carrier`    | true      | 4-letter alphanumeric uppercase code.
`departure_station`    | true      | 8 or 9-letter alphanumeric uppercase code.
`arrival_station`      | true      | 8 or 9-letter alphanumeric uppercase code.
`departure_time`       | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`         | true      | Arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`currency`             | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.
`discount_code`        | false     | Code consisting of minimum 3 alphanumeric characters.
`fare_class`           | false     | Code consisting of 6-7 alphanumerical characters.
`return_departure_time`| false     | Return departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`return_arrival_time`  | false     | Return arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`passengers`           | true      | Array
_`pax`                 | true      | Number of passengers for a specific passenger type
_`type`                | true      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained     from `GET /marketing_carriers/{code}`.
`extras`               | false     | Array
_`quantity`            | true      | Integer in a range of 1..999.
_`type`                | true      | Extra type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.


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
  'https://api-demo.distribusion.com/retailers/v4/connections/seats?departure_station=BRABMSLR&arrival_station=BRGELSAB&departure_time=2020-05-20T22:10&arrival_time=2020-05-21T05:55&marketing_carrier=VOEP' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-SEAT-LAYOUT",
            "type": "seat_layouts",
            "relationships": {
                "segment": {
                    "data": {
                        "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0",
                        "type": "segments"
                    }
                },
                "cars": {
                    "data": [
                        {
                            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-0",
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
            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0",
            "type": "segments",
            "attributes": {
                "index": 0,
                "departure_time": "2020-05-20T22:10",
                "arrival_time": "2020-05-21T05:55"
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "BRABMSLR",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BRGELSAB",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "BRABMSLR",
            "type": "stations",
            "attributes": {
                "code": "BRABMSLR"
            }
        },
        {
            "id": "BRGELSAB",
            "type": "stations",
            "attributes": {
                "code": "BRGELSAB"
            }
        },
        {
            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-0",
            "type": "cars",
            "attributes": {
                "index": 0
            },
            "relationships": {
                "seats": {
                    "data": [
                        {
                            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-0-21",
                            "type": "seats"
                        },
                        {
                            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-0-23",
                            "type": "seats"
                        }
                    ]
                }
            }
        },
        {
            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-0-21",
            "type": "seats",
            "attributes": {
                "code": "21",
                "label": "21",
                "fare_class": "FARE-4",
                "vacant": true,
                "coordinates": {
                    "x": 5,
                    "y": 0,
                    "z": 0
                }
            }
        },
        {
            "id": "VOEP-BRABMSLR-BRGELSAB-2020-05-20T22:10-2020-05-21T05:55-0-0-23",
            "type": "seats",
            "attributes": {
                "code": "23",
                "label": "23",
                "fare_class": "FARE-4",
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

This endpoint checks and provides the data on the seats availability for the selected trip. The trip is defined as a ride from one station to another at a particular day and time.

In parallel, we send the outbound request to the operating carrier integration systems to retrieve the latest available seats information.

### HTTP Request

`GET api.distribusion.com/retailers/v4/connections/seats`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`marketing_carrier` | true      | 4-letter alphanumeric uppercase code.
`departure_station` | true      | 8 or 9-letter alphanumeric uppercase code.
`arrival_station`   | true      | 8 or 9-letter alphanumeric uppercase code.
`departure_time`    | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`      | true      | Arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.

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
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
