# Stations

```shell
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/stations?locale=en' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
  "data": [
    {
      "id": "DEEIBUFE",
      "type": "stations",
      "attributes": {
        "code": "DEEIBUFE",
        "name": "Eisenach Uferstraße",
        "description": "Bus station is located at the intersection of Schillerstrasse and Gabelsberger Strasse, roughly 100 metres north-west of the Deutsche Bahn train station",
        "street_and_number": "Uferstraße 40",
        "zip_code": "99817",
        "longitude": 10.327165,
        "latitude": 50.978095,
        "time_zone": "Europe/Berlin"
      },
      "relationships": {
        "city": {
          "data": {
            "id": "DEEIB",
            "type": "cities"
          }
        }
      }
    },
    {
      "id": "DEBHEZOB",
      "type": "stations",
      "attributes": {
        "code": "DEBHEZOB",
        "name": "Bad Hersfeld ZOB",
        "description": "Bus station is located on the courtyard south-west of the Deutsche Bahn train station.",
        "street_and_number": "Bahnhofstraße 20",
        "zip_code": "36251",
        "longitude": 9.715529,
        "latitude": 50.868954,
        "time_zone": "Europe/Berlin"
      },
      "relationships": {
        "city": {
          "data": {
            "id": "DEBHE",
            "type": "cities"
          }
        }
      }
    },
    {
      "id": "DEBERBZO",
      "type": "stations",
      "attributes": {
        "code": "DEBERBZO",
        "name": "Berlin Bhf Zoo",
        "description": "The bus stop for Berlin Zoo Train Station is located right at Berlin's Zoological Gardens, at Hardenbergplatz 11, and is the departure point for numerous intercity buses. The stop is thus located slightly beyond the stops serviced by the Berlin Transit Corporation, which are nevertheless also accessible when exiting the station towards Hardenbergplatz. The proximity to the Zoo Train Station, as well as to S-Bahn lines (S5, S7, S75), U-Bahn lines (U2, U9), and regional trains is a major plus for all travellers hoping to reach other areas of Berlin.",
        "street_and_number": "Hardenbergplatz 15",
        "zip_code": "10623",
        "longitude": 13.33371,
        "latitude": 52.508425,
        "time_zone": "Europe/Berlin"
      },
      "relationships": {
        "city": {
          "data": {
            "id": "DEBER",
            "type": "cities"
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

This endpoint enable users to retrieve detailed information about stations, such as name, id, GPS location, address and description.


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
