# Stations

```shell
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/stations?locale=en' \
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
        }
      .....
  ],
  "jsonapi": {
    "version": "1.0"
  },
  "meta": {
    "locale": "en"
  }
}
```

This endpoint enables users to retrieve detailed information about stations, such as name, id, GPS location, address and description.


### HTTP Request

`GET api.distribusion.com/retailers/v4/stations`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`locale`            | true      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard.

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.014 | Locale is invalid or missing
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
