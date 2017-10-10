# Bookings

## Form Schema

```shell
curl -X GET \
  'https://api-demo.distribusion.com/retailers/v4/bookings/form_schema?marketing_carrier=OUIB' \
  -H 'api-key: n7ATNr14tXYbC7A7i5MZnBaG40L2g0FOJuLfhyJE' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "$schema": "http://json-schema.org/draft-04/schema#",
    "type": "object",
    "properties": {
        "marketing_carrier": {
            "type": "string",
            "pattern": "^[A-Z]{4}$"
        },
        "departure_station": {
            "type": "string",
            "pattern": "^[A-Z]{8,9}$"
        },
        "arrival_station": {
            "type": "string",
            "pattern": "^[A-Z]{8,9}$"
        },
        "departure_time": {
            "type": "string",
            "pattern": "^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}$"
        },
        "arrival_time": {
            "type": "string",
            "pattern": "^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}$"
        },
        "retailer_partner_number": {
            "type": "string",
            "pattern": "^[0-9]{5,12}$"
        },
        "title": {
            "type": "string",
            "enum": [
                "mr",
                "mrs"
            ]
        },
        "first_name": {
            "type": "string",
            "minLength": 1,
            "maxLength": 50
        },
        "last_name": {
            "type": "string",
            "minLength": 1,
            "maxLength": 50
        },
        "street_and_number": {
            "type": "string",
            "minLength": 1
        },
        "zip_code": {
            "type": "string",
            "minLength": 1
        },
        "city": {
            "type": "string",
            "minLength": 1
        },
        "email": {
            "type": "string",
            "minLength": 1
        },
        "phone": {
            "type": "string",
            "minLength": 1
        },
        "execute_payment": {
            "type": "boolean"
        },
        "payment_method": {
            "type": "string",
            "enum": [
                "demand_note",
                "credit_card",
                "sepa_direct_debit",
                "paypal"
            ]
        },
        "payment_token": {
            "type": "string",
            "minLength": 1
        },
        "payer_id": {
            "type": "string",
            "minLength": 1
        },
        "total_price": {
            "type": "integer"
        },
        "discount_code": {
            "type": "string",
            "minLength": 3
        },
        "pax": {
            "type": "integer"
        },
        "flight_number": {
            "type": "string",
            "pattern": "^[0-9A-Z]{3,9}$"
        },
        "terms_accepted": {
            "type": "boolean"
        },
        "locale": {
            "type": "string",
            "pattern": "^[a-z]{2}$"
        },
        "currency": {
            "type": "string",
            "pattern": "^[A-Z]{3}$"
        },
        "send_customer_email": {
            "type": "boolean"
        },
        "agent_email": {
            "type": "string"
        },
        "passengers": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "first_name": {
                        "type": "string",
                        "minLength": 1
                    },
                    "last_name": {
                        "type": "string",
                        "minLength": 1
                    },
                    "type": {
                        "type": "string",
                        "pattern": "^[A-Z]{4}$"
                    }
                },
                "additionalProperties": false,
                "required": [
                    "first_name",
                    "last_name",
                    "type"
                ]
            }
        },
        "extras": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "quantity": {
                        "type": "integer"
                    },
                    "type": {
                        "type": "string",
                        "minLength": 1
                    }
                },
                "additionalProperties": false,
                "required": [
                    "quantity",
                    "type"
                ]
            }
        }
    },
    "additionalProperties": false,
    "required": [
        "marketing_carrier",
        "departure_station",
        "arrival_station",
        "departure_time",
        "arrival_time",
        "retailer_partner_number",
        "title",
        "first_name",
        "last_name",
        "street_and_number",
        "zip_code",
        "city",
        "email",
        "execute_payment",
        "payment_method",
        "total_price",
        "pax",
        "terms_accepted",
        "locale",
        "currency",
        "send_customer_email",
        "passengers"
    ]
}
```

To create a booking, you will need to retrieve specific information from the customer. In order to do so, you can render a booking form, which is specific to a certain connection and or marketing carrier. This endpoint will deliver you the JSON schema, describing the necessary parameters needed to perform a booking.

### HTTP Request

`GET api.distribusion.com/retailers/v4/bookings/form_schema`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`marketing_carrier` | true      | 4-letter alphanumeric uppercase code.

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.040 | Marketing carrier is invalid or missing
400.501.004 | Not implemented at Distribusion on bookings#form_schema
400.800.000 | Not Found
400.800.040 | Marketing carrier not found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable


## Create

```shell
curl -X POST \
  https://api-demo.distribusion.com/retailers/v4/bookings/create \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' \
  -d '{
       "marketing_carrier": "OUIB",
       "departure_station": "FRLILBDT",
       "arrival_station": "FRLYSPER",
       "departure_time": "2017-09-29T12:00",
       "arrival_time": "2017-09-29T21:55",
       "retailer_partner_number": "222222",
       "title": "mr",
       "first_name": "Balibalo",
       "last_name": "Bateau",
       "email": "quentin@mail.com",
       "phone": "4915237601929",
       "city": "Berlin",
       "zip_code": "10123",
       "street_and_number": "Berlinstr. 23",
       "execute_payment": false,
       "payment_method": "demand_note",
       "total_price": 3800,
       "pax": 1,
       "terms_accepted": true,
       "locale": "en",
       "currency": "EUR",
       "send_customer_email": false,
       "passengers":[
          { 
            "first_name": "Balibalo",
            "last_name": "Bateau",
            "type": "PADU"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "G0zphTalaiG8Ak4td82D2w",
        "type": "bookings",
        "attributes": {
            "departure_time": "2017-09-29T12:00",
            "arrival_time": "2017-09-29T21:55",
            "duration": 35700,
            "title": "mr",
            "first_name": "Balibalo",
            "last_name": "Bateau",
            "email": "quentin@mail.com",
            "phone": "4915237601929",
            "city": "Berlin",
            "zip_code": "10123",
            "street_and_number": "Berlinstr. 23",
            "execute_payment": false,
            "payment_method": "demand_note",
            "payment_token": null,
            "payer_id": null,
            "total_price": 3800,
            "pax": 1,
            "flight_number": null,
            "distribusion_booking_number": "86MMQA",
            "marketing_carrier_booking_number": "X8XTA9",
            "terms_accepted": true,
            "send_customer_email": false,
            "retailer_partner_number": "222222",
            "created_at": "2017-08-30T14:31"
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
            "cancellation": {
                "data": null
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
            },
            "passengers": {
                "data": [
                    {
                        "id": "PADU-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                ]
            },
            "extras": {
                "data": []
            }
        }
    },
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
                "address": "38 RUE DE SEINE",
                "phone": "0033601331661",
                "fax": null,
                "customer_service_phone": "+331 71 53 51 99",
                "email": null,
                "commercial_register": "Registre du commerce et des societes de Creteil",
                "commercial_register_number": null,
                "vat_no": "FR 38 51 90 37 147",
                "authorised_representative": "Monsieur Roland de Barbentane",
                "white_label_logo": "data:image/png;base64",
                "white_label_colour_code": null,
                "terms": "T&C",
                "flight_number_required": false,
                "booking_fee": 0,
                "cancellation_fee": 0,
                "cancellation_cutoff": 86400
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
        },
        {
            "id": "PADU-BATEAU-BALIBALO-1",
            "type": "passengers",
            "attributes": {
                "first_name": "Balibalo",
                "last_name": "Bateau",
                "type": "PADU"
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

Use this endpoint to conduct bookings. Bookings created in this way are the basis for invoicing. The endpoint currently supports one-way bookings only. It will also send out booking e-mails to customers. E-Mails are blocked on demo, so feel free to conduct tests bookings on our demo server (api-demo.distribusion.com).

Note: we currently support EUR, USD, GBP and CHF currencies.

### HTTP Request

`POST https://api.distribusion.com/retailers/v4/bookings/create`

### Query Parameters

Parameter                 | Mandatory | Description
------------------------- | :-------: | :----------
`marketing_carrier`       | true      | 4-letter alphanumeric uppercase code.
`departure_station`       | true      | 8- or 9-letter alphanumeric uppercase code.
`arrival_station`         | true      | 8- or 9-letter alphanumeric uppercase code.
`departure_time`          | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`            | true      | departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`retailer_partner_number` | true      | 5 - 12 digits number of retailer partner.
                          |           |
`title`                   | true      | Allowed values: "mr" or "mrs".
`first_name`              | true      | First name of the customer, 1-50-letter alphanumeric string.
`last_name`               | true      | Last name of the customer, 1-50-letter alphanumeric string.
`email`                   | true      | Email address of the customer.
`phone`                   | true      | Phone number of the customer, 8-20-number string.
`city`                    | true      | 1-50-letter alphanumeric string.
`zip_code`                | true      | 2-10-letter alphanumeric string.
`street_and_number`       | true      | 1-99-letter alphanumeric string.
                          |           |
`execute_payment`         | true      | Can be `true` or `false`. Flag signalling whether the payment transaction should be executed.
`payment_method`          | true      | Allowed value: `demand_note`, `credit_card`, `sepa_direct_debit`, `paypal`.
`payment_token`           | false     | Unique identifier supplied by the payment service provider.
`payer_id`                | false     | Unique identifier supplied by Paypal.
`total_price`             | true      | Total price of the requested passenger types and extras with added bus marketing carrier booking fee in fractional currency unit (if there is one, in cent) in requested currency. Minimum value - 0, maximum value - 9999900. Provided on successful vacancy request.
`pax`                     | true      | Number of passengers. Integer in a range of 1..9.
`discount_code`           | false     | Code consisting of minimum 3 alphanumeric characters. 
 `flight_number`          | false     | Required by marketing carriers in some cases. 3-9-letter alphanumeric uppercase code.
 `terms_accepted`         | true      | Flag signalling whether Terms & Conditions of the marketing carrier have been accepted. Can be `true` or `false`. 
`locale`                  | true      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard.
`currency`                | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.
`send_customer_email`     | true      | Flag for sending out (or preventing) of the customer confirmation email from Distribusion. Can be `true` or `false`.
                          |           |
`passengers`              | true      | Array
    `fist_name`           | true      | First name of the passenger, 1-50-letter alphanumeric string.
    `last_name`           | true      | Last name of the customer, 1-50-letter alphanumeric string.
    `type`                | true      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.
                          |           |
`extras`                  | false     | Array
    `quantity`            | true      | Integer in a range of 1..999.
    `type`                | true      | Extra type. 4-letter alphanumeric uppercase code, available codes can be obtained from `GET /marketing_carriers`.

<aside class="notice">
You must use your own <code>retailer_partner_number</code> to conduct booking.</aside>

<aside class="warning">When sending request to our production environment, ensure that you don't play around with creating bookings, as you will have to pay for them! </aside>

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.004 | Departure station is invalid or missing
400.101.005 | Arrival station is invalid or missing
400.101.007 | Departure time is invalid or missing
400.101.008 | Arrival time is invalid or missing
400.101.009 | PAX is invalid or missing
400.101.010 | Retailer partner number is invalid or missing
400.101.011 | Payment method is invalid or missing
400.101.012 | Payment token is invalid or missing
400.101.013 | Payer ID is invalid or missing
400.101.014 | Locale is invalid or missing
400.101.015 | Currency is invalid or missing
400.101.018 | Title is invalid or missing
400.101.019 | First name is invalid or missing
400.101.020 | Last name is invalid or missing
400.101.021 | Email is invalid or missing
400.101.022 | Phone is invalid or missing
400.101.023 | City is invalid or missing
400.101.024 | Zip code is invalid or missing
400.101.025 | Street and number is invalid or missing
400.101.026 | Total price is invalid or missing
400.101.027 | Customer currency is invalid or missing
400.101.029 | Send customer email is invalid or missing
400.101.030 | Passenger first name is invalid or missing
400.101.031 | Passenger last name is invalid or missing
400.101.032 | Passenger type is invalid or missing
400.101.033 | Passenger type pax is invalid or missing
400.101.034 | Passenger type code is missing or invalid
400.101.035 | Terms accepted is invalid or missing
400.101.036 | Flight number is invalid or missing
400.101.037 | Extra type is invalid or missing
400.101.038 | Extra quantity is invalid or missing
400.101.040 | Marketing carrier is invalid or missing
400.101.042 | Execute payment is invalid or missing
400.101.044 | Departure date is in the past
400.101.049 | Departure time must be before arrival time
400.101.050 | Extras are invalid or missing
400.101.051 | Passengers are invalid or missing
400.102.040 | Unknown marketing carrier
400.200.001 | API key is invalid or missing
400.501.003 | Not implemented at Distribusion on bookings#create
400.800.000 | Not Found
400.800.040 | Marketing carrier not found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
500.500.017 | Unique distribusion booking number cannot be generated
500.500.041 | Unique booking id cannot be generated
500.501.000 | Booking not vacant
500.502.026 | Booking price increased
500.502.026 | Booking price decreased
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
600.400.000 | Marketing Carrier remote request invalid
600.500.000 | Marketing Carrier remote connection unknown error
600.600.000 | Marketing Carrier remote vacancy unknown error
600.700.000 | Marketing Carrier remote booking failed error (general)
600.701.000 | Marketing Carrier remote booking capacity error
600.702.000 | Marketing Carrier remote booking price change error
600.703.000 | Marketing Carrier remote booking tariff unavailable error
600.705.000 | Marketing Carrier remote booking vacancy unknown error
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)
600.703.026 | Booking price unknown

## Redirect for Affiliates

```curl
https://belladonna-demo.distribusion.com/bookings/checkout?departure_station_code=ITCASCNA&arrival_station_code=ITROMRCA&departure_time=2017-10-21T14:25&arrival_time=2017-10-21T16:27&locale=en&currency=EUR&retailer_partner_number=222222&marketing_carrier_code=FEFR
```

Affiliates that do not use our [bookings#create](https://api-demo.distribusion.com/retailers/v4/docs/#create) endpoint, can redirect their customers to our booking page after searching connections on [connections#find](https://api-demo.distribusion.com/retailers/v4/docs/#find). The locale will be taken from the setting of the browser, which the customer is using. The currency can be set within the redirect link. 

We currently supports 7 currencies:

* EUR: Euro
* USD: US Dollar
* CHF: Swiss Franc
* GBP: British Pound
* MXN: Mexican Peso
* PLN: Polish Zloty
* CAD: Canadian Dollar

You can now retrieve a list of all your booking by calling the [bookings#index](https://api-demo.distribusion.com/retailers/v4/docs/#index).

### Checkout Link

`GET https://belladonna-demo.distribusion.com/bookings/checkout`

### URL Parameters

Parameter                 | Mandatory | Description
------------------------- | :-------: | :----------
`marketing_carrier`       | true      | 4-letter alphanumeric uppercase code.
`departure_station`       | true      | 8- or 9-letter alphanumeric uppercase code.
`arrival_station`         | true      | 8- or 9-letter alphanumeric uppercase code.
`departure_time`          | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`            | true      | departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`retailer_partner_number` | true      | 5 - 12 digits number of retailer partner.
`currency`                | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Index

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/bookings/ \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
  "data": [
    {
      "id": "qxYan0wvPw4Xh9bUOwd6fg",
      "type": "bookings",
      "attributes": {
        "departure_time": "2017-07-14T14:00",
        "last_name": "Smith",
        "total_price": 15000,
        "pax": 2,
        "distribusion_booking_number": "ZN8FX2",
        "created_at": "2017-07-05T15:31"
      },
      "relationships": {
        "departure_station": {
          "data": {
            "id": "DEBERCBS",
            "type": "stations"
          }
        },
        "arrival_station": {
          "data": {
            "id": "UAIEVZOB",
            "type": "stations"
          }
        },
        "marketing_carrier": {
          "data": {
            "id": "AKKM",
            "type": "marketing_carriers"
          }
        },
        "cancellation": {
          "data": {
            "id": "7Zr0AWGXiL-pCAb14d-9tA",
            "type": "cancellations"
          }
        }
      }
    }
  ],

  -------

  "included": [
    {
      "id": "AKKM",
      "type": "marketing_carriers",
      "attributes": {
        "trade_name": "AS Karpaten & Krim Tours (Schevschenko)"
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

You can now retrieve a list of all your booking by calling the [bookings#index](https://api-demo.distribusion.com/retailers/v4/docs/#index).

### HTTP Request

`GET api.distribusion.com/retailers/v4/bookings`

### Errors

Error Code  | Meaning
----------- | -------
400.200.001 | API key is invalid or missing
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Show

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/bookings/G0zphTalaiG8Ak4td82D2w \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "G0zphTalaiG8Ak4td82D2w",
        "type": "bookings",
        "attributes": {
            "departure_time": "2017-09-29T12:00",
            "arrival_time": "2017-09-29T21:55",
            "duration": 35700,
            "title": "mr",
            "first_name": "Balibalo",
            "last_name": "Bateau",
            "email": "quentin@mail.com",
            "phone": "4915237601929",
            "city": "Berlin",
            "zip_code": "10123",
            "street_and_number": "Berlinstr. 23",
            "execute_payment": false,
            "payment_method": "demand_note",
            "payment_token": null,
            "payer_id": null,
            "total_price": 3800,
            "pax": 1,
            "flight_number": null,
            "distribusion_booking_number": "86MMQA",
            "marketing_carrier_booking_number": "X8XTA9",
            "terms_accepted": true,
            "send_customer_email": false,
            "retailer_partner_number": "222222",
            "created_at": "2017-08-30T14:31"
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
            "cancellation": {
                "data": null
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
            },
            "passengers": {
                "data": [
                    {
                        "id": "PADU-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                ]
            },
            "extras": {
                "data": []
            }
        }
    },
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
                "address": "38 RUE DE SEINE",
                "phone": "0033601331661",
                "fax": null,
                "customer_service_phone": "+331 71 53 51 99",
                "email": null,
                "commercial_register": "Registre du commerce et des societes de Creteil",
                "commercial_register_number": null,
                "vat_no": "FR 38 51 90 37 147",
                "authorised_representative": "Monsieur Roland de Barbentane",
                "white_label_logo": "data:image/png;base64",
                "white_label_colour_code": null,
                "terms": "T&C",
                "flight_number_required": false,
                "booking_fee": 0,
                "cancellation_fee": 0,
                "cancellation_cutoff": 86400
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
        },
        {
            "id": "PADU-BATEAU-BALIBALO-1",
            "type": "passengers",
            "attributes": {
                "first_name": "Balibalo",
                "last_name": "Bateau",
                "type": "PADU"
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

To review data of a booking at a later stage without copying it into your system, you can use our [bookings#show](https://api-demo.distribusion.com/retailers/v4/docs/#show) endpoint to retrieve it and show its data.

### HTTP Request

`GET api.distribusion.com/retailers/v4/bookings/`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`booking`           | true      | 22-letter alphanumeric lowercase code, provided on successful booking.

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.100.041 | Booking is invalid or missing
400.200.001 | API key is invalid or missing
400.800.000 | Not Found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
400.501.005 | Not implemented at Distribusion on bookings#show
400.800.041 | Booking not found

## Tickets

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/bookings/G0zphTalaiG8Ak4td82D2w/tickets \
  -H 'Api-Key: H4gtqUn04qDh7mmZpFJYmmcW7JVw7hMIaCUcdWhZ' \
  -H 'Content-Type: application/json'
```

This endpoint is dedicated to retailers sending their own confirmation email. If you have set `send_customer_email` to `true`, you do not need this endpoint. The ticket either has one page containing the information of all the passengers, or it consists of one page per passenger (in PDF format).

### HTTP Request

`GET api.distribusion.com/retailers/v4/bookings/{id}/tickets`

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.100.041 | Booking is invalid or missing
400.200.001 | API key is invalid or missing
400.800.000 | Not Found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
400.501.006 | Not implemented at Distribusion on bookings#ticket
400.800.041 | Booking not found
