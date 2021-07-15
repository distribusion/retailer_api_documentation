# Stations

## Stations

```shell
curl -X GET \
  'https://api.demo.distribusion.com/retailers/v4/stations?locale=en' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "DEFAMFMH",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "DEFAMFMH",
                "name": "Frankfurt Main Central Train Station (Southside)",
                "description": "The bus stop on the south side of Frankfurt's central station is located between the train station building and the intersection of Mannheimer Strasse and Karlsruher Str. The stop is easily accessible from the station's southern exit.",
                "street_and_number": "Mannheimer Straße 2",
                "zip_code": "60327",
                "longitude": 8.663446,
                "latitude": 50.105608,
                "time_zone": "Europe/Berlin"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "DEFAM",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "DEQMZHBF",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "DEQMZHBF",
                "name": "Mainz Central Train Station",
                "description": "The intercity bus stop is located on Kaiser-Wilhelm-Ring, at Mainz Main Train Station. A discount grocery store is located directly opposite.",
                "street_and_number": "Kaiser-Wilhelm-Ring 8",
                "zip_code": "55118",
                "longitude": 8.257835,
                "latitude": 50.00314,
                "time_zone": "Europe/Berlin"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "DEQMZ",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "GBLONAHT",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBLONAHT",
                "name": "London Heathrow Airport T3",
                "description": "The bus stops in front of Terminal 3 at Heathrow Airport.",
                "street_and_number": "Cromer Rd W",
                "zip_code": "",
                "longitude": -0.45688680000001,
                "latitude": 51.47176109999999,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBLON",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": {
                        "id": "GBLONLA",
                        "type": "areas"
                    }
                }
            }
      .....
 ],
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "locale": "en"
    },
    "included": [
        {
            "id": "DEFAM",
            "type": "cities",
            "attributes": {
                "code": "DEFAM",
                "name": "Frankfurt am Main"
            }
        },
        {
            "id": "DEQMZ",
            "type": "cities",
            "attributes": {
                "code": "DEQMZ",
                "name": "Mainz"
            }
        },
        {
            "id": "DEROE",
            "type": "cities",
            "attributes": {
                "code": "DEROE",
                "name": "Rosenheim"
            }
        }
        .....
    ]
 }
```

This endpoint can be used to retrieve all stations available in the Distribusion API. The API provides the following information for each station:
- station type
- station name
- description
- address
- latitude/longitude
- time zone
- city
- area


### HTTP Request

- Prod: `GET api.distribusion.com/retailers/v4/stations`
- Demo: `GET api.demo.distribusion.com/retailers/v4/stations`

### URL Parameters

Parameter           | Mandatory | Description | Example |
------------------- | --------- | ----------- | --------- |
`locale`            | true      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard | en |

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.014 | Locale is invalid or missing
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Connected Stations

```shell
curl -X GET \
  'https://api.demo.distribusion.com/retailers/v4/connected_stations' \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "ADALVABU-ATVIEZOB",
            "type": "connected_stations",
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "ADALVABU",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "ATVIEZOB",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "ADALVABU-BAGRIBGC",
            "type": "connected_stations",
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "ADALVABU",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BAGRIBGC",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "ADALVABU-BEANREVS",
            "type": "connected_stations",
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "ADALVABU",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BEANREVS",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "ADALVABU-BEBRUBCG",
            "type": "connected_stations",
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "ADALVABU",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BEBRUBCG",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "ADALVABU-BEBRUBMO",
            "type": "connected_stations",
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "ADALVABU",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BEBRUBMO",
                        "type": "stations"
                    }
                }
            }
        },
        {
            "id": "ADALVABU-BEGHEGDA",
            "type": "connected_stations",
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "ADALVABU",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "BEGHEGDA",
                        "type": "stations"
                    }
                }
            }
        },
      .....
],
    "jsonapi": {
        "version": "1.0"
    },
    "links": {
        "next": "/connected_stations?page%5Bafter%5D=ADALVABU-BEGHEGDA"
    },
    "included": [
        {
            "id": "ADALVABU",
            "type": "stations",
            "attributes": {
                "code": "ADALVABU"
            }
        },
        {
            "id": "BEGHEGDA",
            "type": "stations",
            "attributes": {
                "code": "BRADTADT"
            }
        },
        .....
    ]
}
```

This endpoint can be used to retrieve all station pairs that are available in Distribusion’s database as bookable origin-destination combinations. Requests to this endpoint can be filtered to identify connected station pairs for one or multiple marketing carriers.

The pagination parameters can be used for scrolling when there are more than 10,000 results. The parameters support forward (page[after]) scrolling. This requires the request to be split into two or more requests.

a). First page (10 k results)

http://api.demo.distribusion.com/retailers/v4/connected_stations?filter[marketing_carrier_codes][]=NEXP

The response returns links.next which specifies the link that should be inserted in page[after] for the subsequent request to proceed to the next page.

b) Second page

http://api.demo.distribusion.com/retailers/v4/connected_stations?page[after]=GBLONLPB-GBLONLHT&filter[marketing_carrier_codes][]=NEXP


### HTTP Request

- Prod: `GET api.distribusion.com/retailers/v4/connected_stations`
- Demo: `GET api.demo.distribusion.com/retailers/v4/connected_stations`

### URL Parameters

Parameter           | Mandatory | Description | Example |
------------------- | --------- | ----------- | --------- |
page[size] | FALSE | Number, max 10.000 | 8000 |
page[after] | FALSE | Station pair, retrieved from links.next within initial response | GBLONLPB-GBLONLHT |
[marketing_carrier_codes][] | FALSE | 4-letter alphanumeric uppercase code| VICA |

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
