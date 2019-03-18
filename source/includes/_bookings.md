# Bookings

## Create Orders

```shell
curl -X POST \
  https://api-demo.distribusion.com/retailers/v4/orders/create \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' \
  -d '{
       "marketing_carrier": "ISIL",
       "departure_station": "FRLILBDT",
       "arrival_station": "FRLYSPER",
       "departure_time": "2019-01-15T17:00",
       "arrival_time": "2019-01-16T05:40",
       "retailer_partner_number": "{number}",
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
       "total_price": 4000,
       "pax": 2,
       "terms_accepted": true,
       "locale": "en",
       "currency": "EUR",
       "send_customer_email": false,
       "passengers":[
          { 
            "first_name": "Balibalo",
            "last_name": "Bateau",
            "type": "PADX"
          },
          { 
            "first_name": "Bilou",
            "last_name": "Bateau",
            "type": "PADX"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "ISIL-60a4ec9b-a021-4a07-b720-947b813956f0",
        "type": "orders",
        "attributes": {
            "state": "created",
            "created_at": "2018-10-11T14:27"
        }
    },
    "jsonapi": {
        "version": "1.0"
    }
}
```

Use this endpoint to conduct an order. Orders created in this way are not a booking per se, but a confirmation that your booking have been successfully taken in account by our platform. In order to retrieve the status of your booking, please call [orders/{:id}] (https://api-demo.distribusion.com/retailers/v4/docs/#orders-status). 

The endpoint currently supports one-way bookings only. It will also send out booking e-mails to customers. E-Mails are blocked on demo, so feel free to conduct tests bookings on our demo server (api-demo.distribusion.com).

Note: we currently support EUR, USD, GBP and CHF currencies.

### HTTP Request

`POST https://api.distribusion.com/retailers/v4/orders/create`

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
400.101.052 | Discount code is invalid or missing
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

## Orders Status

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/orders/ISIL-60a4ec9b-a021-4a07-b720-947b813956f0 \
  -H 'Cache-Control: no-cache' \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "ISIL-60a4ec9b-a021-4a07-b720-947b813956f0",
        "type": "orders",
        "attributes": {
            "state": "executed",
            "executed_at": "2018-10-11T14:27"
        },
        "relationships": {
            "booking": {
                "data": {
                    "id": "6RazURqZbL-9arqdIV5sAg",
                    "type": "bookings"
                }
            }
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "locale": "en",
        "currency": "EUR"
    },
    "included": [
        {
            "id": "6RazURqZbL-9arqdIV5sAg",
            "type": "bookings",
            "attributes": {
                "departure_time": "2019-01-15T17:00",
                "arrival_time": "2019-01-16T05:40",
                "duration": 45600,
                "total_price": 4000,
                "pax": 2,
                "flight_number": null,
                "distribusion_booking_number": "SRZ5EB",
                "marketing_carrier_booking_number": "181011380125",
                "connection_reference": null,
                "created_at": "2018-10-11T14:27"
            },
            "relationships": {
                "segments": {
                    "data": [
                        {
                            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
                            "type": "segments"
                        },
                        {
                            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
                            "type": "segments"
                        }
                    ]
                },
                "passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-0",
                            "type": "passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-0",
                            "type": "passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-01-15T17:00",
                "arrival_time": "2019-01-15T20:05",
                "index": 0
            },
            "relationships": {
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-0",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-01-15T23:30",
                "arrival_time": "2019-01-16T05:40",
                "index": 1
            },
            "relationships": {
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-1",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-1",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1-0",
            "type": "passengers",
            "attributes": {
                "first_name": "Balibalo",
                "last_name": "Bateau",
                "serial_code": "00000000181011952873         Bateau       Balibalo19920101000000FA011A000000000000",
                "type": "PADX"
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-0",
            "type": "passengers",
            "attributes": {
                "first_name": "Bilou",
                "last_name": "Bateau",
                "serial_code": "00000000181011755484         Bateau          Bilou19920101000000FA011A000000000000",
                "type": "PADX"
            }
        }
    ]
}
```

Use this endpoint to retrieve the status of your order. The state can have one of three values:

- `created`: you order have been taken in account successfully and will be processed soon 
- `executed`: your order have been successfully conducted at our partner's remote system
- `failed`: your order could not be executed at our partner's remote system

Once your order have been executed, you will also obtain a booking ID. This booking ID can be used to call our [bookings#show] (https://api.distribusion.com/retailers/v4/docs/#show) in order to get detailed information about the booking and [bookings/{:id}/tickets] (https://api.distribusion.com/retailers/v4/docs/#tickets) to retrieve the ticket in PDF or HTML format. 

### HTTP Request

`POST https://api.distribusion.com/retailers/v4/orders/:id`

### Query Parameters

Parameter                 | Mandatory | Description
------------------------- | :-------: | :----------
`OrderId`                 | true      | 41-letter alphanumeric code.

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
400.101.041 | ID is invalid or missing
400.101.042 | Execute payment is invalid or missing
400.101.044 | Departure date is in the past
400.101.049 | Departure time must be before arrival time
400.101.050 | Extras are invalid or missing
400.101.051 | Passengers are invalid or missing
400.101.052 | Discount code is invalid or missing
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

## Create

```shell
curl -X POST \
  https://api-demo.distribusion.com/retailers/v4/bookings/create \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' \
  -d '{
       "marketing_carrier": "ISIL",
       "departure_station": "FRLILBDT",
       "arrival_station": "FRLYSPER",
       "departure_time": "2019-01-15T17:00",
       "arrival_time": "2019-01-16T05:40",
       "retailer_partner_number": "{number}",
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
       "total_price": 4000,
       "pax": 2,
       "terms_accepted": true,
       "locale": "en",
       "currency": "EUR",
       "send_customer_email": false,
       "passengers":[
          { 
            "first_name": "Balibalo",
            "last_name": "Bateau",
            "type": "PADX"
          },
          { 
            "first_name": "Bilou",
            "last_name": "Bateau",
            "type": "PADX"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "9KRtPqq5YM5dKl9D6A_igA",
        "type": "bookings",
        "attributes": {
            "departure_time": "2019-01-15T17:00",
            "arrival_time": "2019-01-16T05:40",
            "duration": 45600,
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
            "total_price": 4000,
            "pax": 2,
            "flight_number": null,
            "distribusion_booking_number": "7P7JF8",
            "marketing_carrier_booking_number": "181011273961",
            "terms_accepted": true,
            "send_customer_email": false,
            "retailer_partner_number": "{number}",
            "connection_reference": null,
            "created_at": "2018-10-11T14:24"
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
                    "id": "ISIL",
                    "type": "marketing_carriers"
                }
            },
            "cancellation": {
                "data": null
            },
            "segments": {
                "data": [
                    {
                        "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
                        "type": "segments"
                    },
                    {
                        "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
                        "type": "segments"
                    }
                ]
            },
            "passengers": {
                "data": [
                    {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    },
                    {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                ]
            },
            "extras": {
                "data": []
            }
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "locale": "en",
        "currency": "EUR"
    },
    "included": [
        {
            "id": "FRLILBDT",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "FRLILBDT",
                "name": "Lille Boulevard de Turin",
                "description": "The bus stop is located at the south side of Lille Europe station, right on the Boulevard de Turin, near \"Suite Novotel\".",
                "street_and_number": "Boulevard de Turin",
                "zip_code": "59777",
                "longitude": 3.076675,
                "latitude": 50.638756,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRLIL",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "FRLIL",
            "type": "cities",
            "attributes": {
                "code": "FRLIL",
                "name": "Lille"
            }
        },
        {
            "id": "FRLYSPER",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "FRLYSPER",
                "name": "Lyon Perrache SNCF Train Station",
                "description": "Central bus station of the center exchange of Lyon Perrache on the 1st floor Rhône Est side. Access to the platforms via Gallery D. Warning: Every departure between 12:30 a.m. and 4:45 a.m will take place at 30 Cours de Verdun Perrache 69002 Lyon in front of the \"Brasserie Georges\", less than 5 min walking from the bus station of Perrache, which is closed during this period.",
                "street_and_number": "Cours de Verdun Gensoul 14",
                "zip_code": "69002",
                "longitude": 4.826788,
                "latitude": 45.749711,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRLYS",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "FRLYS",
            "type": "cities",
            "attributes": {
                "code": "FRLYS",
                "name": "Lyon"
            }
        },
        {
            "id": "ISIL",
            "type": "marketing_carriers",
            "attributes": {
                "code": "ISIL",
                "trade_name": "Isilines",
                "legal_name": "Isilines",
                "address": "215 avenue Georges Clemenceau, 92024 Nanterre cedex, France",
                "phone": "+33(0)157662830",
                "fax": "",
                "customer_service_phone": "",
                "email": "",
                "commercial_register": "Tribunal de Commerce de Nanterre",
                "commercial_register_number": "RCS:391144300",
                "vat_no": "FR50391144300",
                "authorised_representative": "Hugo Roncal",
                "white_label_logo": "data:image/png;base64",
                "white_label_colour_code": "",
                "terms": "T&Cs",
                "flight_number_required": false,
                "booking_fee": 0,
                "cancellation_fee": 0,
                "cancellation_cutoff": null
            }
        },
        {
            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-01-15T17:00",
                "arrival_time": "2019-01-15T20:05",
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
                        "id": "FRPARGBA",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "ISIL",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-0",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-01-15T23:30",
                "arrival_time": "2019-01-16T05:40",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARGBA",
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
                        "id": "ISIL",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-1",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-1",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "FRPARGBA",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "FRPARGBA",
                "name": "Paris Gallieni (Bagnolet)",
                "description": "Paris international bus station is located in the eastern part of the city, and is connected to the metro line M3. At the station, there is a taxi stand, a snack bar, and parking areas.",
                "street_and_number": "Av. du Général de Gaulle 28",
                "zip_code": "93170",
                "longitude": 2.414311,
                "latitude": 48.865442,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRPAR",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "FRPAR",
            "type": "cities",
            "attributes": {
                "code": "FRPAR",
                "name": "Paris"
            }
        },
        {
            "id": "ISIL",
            "type": "operating_carriers",
            "attributes": {
                "code": "ISIL",
                "trade_name": "Isilines",
                "legal_name": "Isilines"
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
            "type": "vehicles",
            "relationships": {
                "vehicle_type": {
                    "data": {
                        "id": "BUS",
                        "type": "vehicle_types"
                    }
                }
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
            "id": "PADX-BATEAU-BALIBALO-1-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
            "type": "vehicles",
            "relationships": {
                "vehicle_type": {
                    "data": {
                        "id": "BUS",
                        "type": "vehicle_types"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1",
            "type": "passengers",
            "attributes": {
                "first_name": "Balibalo",
                "last_name": "Bateau",
                "serial_code": "00000000181011477332         Bateau       Balibalo19920101000000FA011A000000000000",
                "type": "PADX"
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2",
            "type": "passengers",
            "attributes": {
                "first_name": "Bilou",
                "last_name": "Bateau",
                "serial_code": "00000000181011013117         Bateau          Bilou19920101000000FA011A000000000000",
                "type": "PADX"
            }
        }
    ]
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
400.101.052 | Discount code is invalid or missing
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
https://bustickets-demo.distribusion.com/redirect?marketing_carrier_code=ISIL&departure_station_code=FRLILBDT&arrival_station_code=FRLYSPER&departure_time=2019-01-15T17:00&arrival_time=2019-01-16T05:40&currency=EUR&retailer_partner_number=123456&locale=en
```

Affiliates that do not use our [bookings#create](https://api-demo.distribusion.com/retailers/v4/docs/#create) endpoint, can redirect their customers to our booking page after searching connections on [connections#find](https://api-demo.distribusion.com/retailers/v4/docs/#find). The locale will be taken from the setting of the browser, which the customer is using. Alternatively, you can overwrite this functionality by sending your own locale (the order of priority is: locale parameter in URL, then cached locale in browser, and finally the browser locale). The currency can be set within the redirect link.

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

`GET https://bustickets.distribusion.com/redirect`

### URL Parameters

Parameter                 | Mandatory | Description
------------------------- | :-------: | :----------
`marketing_carrier`       | true      | 4-letter alphanumeric uppercase code.
`departure_station_code`  | true      | 8- or 9-letter alphanumeric uppercase code.
`arrival_station_code`    | true      | 8- or 9-letter alphanumeric uppercase code.
`departure_time`          | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`            | true      | departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`retailer_partner_number` | true      | 5 - 12 digits number of retailer partner.
`currency`                | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.
`locale`                  | false     | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard.

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Index

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/bookings?created_at=2018-10-01 \
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
        "departure_time": "2018-10-10T14:00",
        "last_name": "Smith",
        "total_price": 15000,
        "pax": 2,
        "distribusion_booking_number": "ZN8FX2",
        "created_at": "2018-10-01T15:31"
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

You can now retrieve a list of all your booking by calling the [bookings#index](https://api-demo.distribusion.com/retailers/v4/docs/#index). Alternatively, you can filter your booking list for a specific day by using the parameter bellow:

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`created_at`        | false     | Departure date in ISO 8601 format.

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
  https://api-demo.distribusion.com/retailers/v4/bookings/9KRtPqq5YM5dKl9D6A_igA \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "9KRtPqq5YM5dKl9D6A_igA",
        "type": "bookings",
        "attributes": {
            "departure_time": "2019-01-15T17:00",
            "arrival_time": "2019-01-16T05:40",
            "duration": 45600,
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
            "total_price": 4000,
            "pax": 2,
            "flight_number": null,
            "distribusion_booking_number": "7P7JF8",
            "marketing_carrier_booking_number": "181011273961",
            "terms_accepted": true,
            "send_customer_email": false,
            "retailer_partner_number": "{number}",
            "connection_reference": null,
            "created_at": "2018-10-11T14:24"
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
                    "id": "ISIL",
                    "type": "marketing_carriers"
                }
            },
            "cancellation": {
                "data": null
            },
            "segments": {
                "data": [
                    {
                        "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
                        "type": "segments"
                    },
                    {
                        "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
                        "type": "segments"
                    }
                ]
            },
            "passengers": {
                "data": [
                    {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    },
                    {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                ]
            },
            "extras": {
                "data": []
            }
        }
    },
    "jsonapi": {
        "version": "1.0"
    },
    "meta": {
        "locale": "en",
        "currency": "EUR"
    },
    "included": [
        {
            "id": "FRLILBDT",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "FRLILBDT",
                "name": "Lille Boulevard de Turin",
                "description": "The bus stop is located at the south side of Lille Europe station, right on the Boulevard de Turin, near \"Suite Novotel\".",
                "street_and_number": "Boulevard de Turin",
                "zip_code": "59777",
                "longitude": 3.076675,
                "latitude": 50.638756,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRLIL",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "FRLIL",
            "type": "cities",
            "attributes": {
                "code": "FRLIL",
                "name": "Lille"
            }
        },
        {
            "id": "FRLYSPER",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "FRLYSPER",
                "name": "Lyon Perrache SNCF Train Station",
                "description": "Central bus station of the center exchange of Lyon Perrache on the 1st floor Rhône Est side. Access to the platforms via Gallery D. Warning: Every departure between 12:30 a.m. and 4:45 a.m will take place at 30 Cours de Verdun Perrache 69002 Lyon in front of the \"Brasserie Georges\", less than 5 min walking from the bus station of Perrache, which is closed during this period.",
                "street_and_number": "Cours de Verdun Gensoul 14",
                "zip_code": "69002",
                "longitude": 4.826788,
                "latitude": 45.749711,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRLYS",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "FRLYS",
            "type": "cities",
            "attributes": {
                "code": "FRLYS",
                "name": "Lyon"
            }
        },
        {
            "id": "ISIL",
            "type": "marketing_carriers",
            "attributes": {
                "code": "ISIL",
                "trade_name": "Isilines",
                "legal_name": "Isilines",
                "address": "215 avenue Georges Clemenceau, 92024 Nanterre cedex, France",
                "phone": "+33(0)157662830",
                "fax": "",
                "customer_service_phone": "",
                "email": "",
                "commercial_register": "Tribunal de Commerce de Nanterre",
                "commercial_register_number": "RCS:391144300",
                "vat_no": "FR50391144300",
                "authorised_representative": "Hugo Roncal",
                "white_label_logo": "data:image/png;base64",
                "white_label_colour_code": "",
                "terms": "T&Cs",
                "flight_number_required": false,
                "booking_fee": 0,
                "cancellation_fee": 0,
                "cancellation_cutoff": null
            }
        },
        {
            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-01-15T17:00",
                "arrival_time": "2019-01-15T20:05",
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
                        "id": "FRPARGBA",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "ISIL",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-0",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-01-15T23:30",
                "arrival_time": "2019-01-16T05:40",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "FRPARGBA",
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
                        "id": "ISIL",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PADX-BATEAU-BALIBALO-1-1",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PADX-BATEAU-BILOU-2-1",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "FRPARGBA",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "FRPARGBA",
                "name": "Paris Gallieni (Bagnolet)",
                "description": "Paris international bus station is located in the eastern part of the city, and is connected to the metro line M3. At the station, there is a taxi stand, a snack bar, and parking areas.",
                "street_and_number": "Av. du Général de Gaulle 28",
                "zip_code": "93170",
                "longitude": 2.414311,
                "latitude": 48.865442,
                "time_zone": "Europe/Paris"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "FRPAR",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "FRPAR",
            "type": "cities",
            "attributes": {
                "code": "FRPAR",
                "name": "Paris"
            }
        },
        {
            "id": "ISIL",
            "type": "operating_carriers",
            "attributes": {
                "code": "ISIL",
                "trade_name": "Isilines",
                "legal_name": "Isilines"
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-0",
            "type": "vehicles",
            "relationships": {
                "vehicle_type": {
                    "data": {
                        "id": "BUS",
                        "type": "vehicle_types"
                    }
                }
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
            "id": "PADX-BATEAU-BALIBALO-1-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BALIBALO-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PADX-BATEAU-BILOU-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-ISIL-FRLILBDT-FRLYSPER-2019-01-15T17:00-2019-01-16T05:40-1",
            "type": "vehicles",
            "relationships": {
                "vehicle_type": {
                    "data": {
                        "id": "BUS",
                        "type": "vehicle_types"
                    }
                }
            }
        },
        {
            "id": "PADX-BATEAU-BALIBALO-1",
            "type": "passengers",
            "attributes": {
                "first_name": "Balibalo",
                "last_name": "Bateau",
                "serial_code": "00000000181011477332         Bateau       Balibalo19920101000000FA011A000000000000",
                "type": "PADX"
            }
        },
        {
            "id": "PADX-BATEAU-BILOU-2",
            "type": "passengers",
            "attributes": {
                "first_name": "Bilou",
                "last_name": "Bateau",
                "serial_code": "00000000181011013117         Bateau          Bilou19920101000000FA011A000000000000",
                "type": "PADX"
            }
        }
    ]
}
```

To review data of a booking at a later stage without saving all information into your system, you can use our [bookings#show](https://api-demo.distribusion.com/retailers/v4/docs/#show) endpoint to retrieve it and show its data.

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
400.101.041 | Booking is invalid or missing
400.200.001 | API key is invalid or missing
400.800.000 | Not Found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
400.501.005 | Not implemented at Distribusion on bookings#show
400.800.041 | Booking not found

## Tickets

```shell
curl -X GET \
  https://api-demo.distribusion.com/retailers/v4/bookings/9KRtPqq5YM5dKl9D6A_igA/tickets \
  -H 'Api-Key: H4gtqUn04qDh7mmZpFJYmmcW7JVw7hMIaCUcdWhZ' \
  -H 'Content-Type: application/json'
```

This endpoint is dedicated to retailers sending their own confirmation email. If you have set `send_customer_email` to `true`, you do not need this endpoint. 

The ticket either has one page containing the information of all the passengers, or it consists of one page per passenger (in PDF format). You can also retrieve your ticket in HTML, or in mobile format by adding the `type` parameter.

Note: Not all carriers support mobile tickets. To know if a specific marketing carrier supports mobile ticket, call [marketing_carriers#show](https://docs.distribusion.com/#show30) and look for `has_mobile_tickets` parameter.  

<aside class="notice">When retrieving the ticket in .pkpass format, you will be provided with a link to download the mobile ticket from AWS.</aside>

![alt text](/images/tickets_7P7JF8.png)

### HTTP Request

`GET api.distribusion.com/retailers/v4/bookings/{id}/tickets`

### URL Parameters

Parameter           | Mandatory | Description
------------------- | --------- | -----------
`type`              | false     | Allowed value: html, pkpass

### Errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.041 | Booking is invalid or missing
400.200.001 | API key is invalid or missing
400.800.000 | Not Found
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
400.501.006 | Not implemented at Distribusion on bookings#ticket
400.800.041 | Booking not found
