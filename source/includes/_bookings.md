# Bookings

## Create Orders

```shell
curl -X POST \
  https://api-demo.distribusion.com/retailers/v4/orders/create \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' \
  -d '{
       "marketing_carrier": "NEXP",
       "departure_station": "GBXVHPET",
       "departure_time": "2019-12-15T07:15",
       "arrival_time": "2019-12-15T09:15",
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
       "total_price": 2303,
       "pax": 2,
       "terms_accepted": true,
       "locale": "en",
       "currency": "EUR",
       "send_customer_email": false,
       "fare_class": "FARE-1",
       "passengers":[
          { 
            "first_name": "Charlotte",
            "last_name": "Bateau",
            "type": "PNOS"
          },
          { 
            "first_name": "Paul",
            "last_name": "Bateau",
            "type": "PNOS"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "NEXP-c43f6865-e83e-489c-9a81-c5fa4627c54d",
        "type": "orders",
        "attributes": {
            "state": "created",
            "created_at": "2019-08-08T14:29"
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
`fare_class`              | false     | Code consisting of 6-7 alphanumerical characters.
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
  https://api-demo.distribusion.com/retailers/v4/orders/NEXP-43927b28-ed74-4cf1-b454-b7b687a2db95 \
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "NEXP-c43f6865-e83e-489c-9a81-c5fa4627c54d",
        "type": "orders",
        "attributes": {
            "state": "executed",
            "executed_at": "2019-08-08T14:29"
        },
        "relationships": {
            "booking": {
                "data": {
                    "id": "trw04U2Jewyk5lkvw_PR6A",
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
            "id": "trw04U2Jewyk5lkvw_PR6A",
            "type": "bookings",
            "attributes": {
                "departure_time": "2019-12-15T07:15",
                "arrival_time": "2019-12-15T09:15",
                "duration": 7200,
                "total_price": 2275,
                "pax": 2,
                "flight_number": null,
                "distribusion_booking_number": "CC23P6",
                "marketing_carrier_booking_number": "P3BA9508",
                "connection_reference": null,
                "created_at": "2019-08-08T14:29"
            },
            "relationships": {
                "fare_class": {
                    "data": {
                        "id": "FARE-1",
                        "type": "fare_classes"
                    }
                },
                "segments": {
                    "data": [
                        {
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
                            "type": "segments"
                        },
                        {
                            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
                            "type": "segments"
                        }
                    ]
                },
                "passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
                            "type": "passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-0",
                            "type": "passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-12-15T07:15",
                "arrival_time": "2019-12-15T08:25",
                "index": 0
            },
            "relationships": {
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-12-15T09:05",
                "arrival_time": "2019-12-15T09:15",
                "index": 1
            },
            "relationships": {
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-1",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-1",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-PAUL-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-CHARLOTTE-1-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-PAUL-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
            "type": "passengers",
            "attributes": {
                "first_name": "Charlotte",
                "last_name": "Bateau",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-0",
            "type": "passengers",
            "attributes": {
                "first_name": "Paul",
                "last_name": "Bateau",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Standard",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NREF",
                            "type": "fare_features"
                        },
                        {
                            "id": "AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "NREF",
            "type": "fare_features",
            "attributes": {
                "code": "NREF",
                "name": "Non-refundable ",
                "description": "The ticket cannot be refunded."
            }
        },
        {
            "id": "AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please contact the carrier for further steps. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "AAFR",
            "type": "fare_features",
            "attributes": {
                "code": "AAFR",
                "name": "Accessible area for wheelchairs",
                "description": "Fully collapsible wheelchairs and fully collapsible pushchairs may be stowed free of charge. Passenger have to contact bus operator 36 hours before the departure."
            }
        }
    ]
}
```

Use this endpoint to retrieve the status of your order. The state can have one of the three values:

- `created`: you order has been taken in account successfully and will be processed soon 
- `executed`: your order has been successfully conducted at our partner's remote system
- `failed`: your order could not be executed at our partner's remote system

Once your order has been executed, you will also obtain a booking ID. This booking ID can be used to call our [bookings#show] (https://api.distribusion.com/retailers/v4/docs/#show) in order to get detailed information about the booking and [bookings/{:id}/tickets] (https://api.distribusion.com/retailers/v4/docs/#tickets) to retrieve the ticket in PDF, HTML or pkpass format. 

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
       "marketing_carrier": "NEXP",
       "departure_station": "GBXVHPET",
       "arrival_station": "GBCBGTPR",
       "departure_time": "2019-12-15T07:15",
       "arrival_time": "22019-12-15T09:15",
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
       "total_price": 2303,
       "pax": 2,
       "terms_accepted": true,
       "locale": "en",
       "currency": "EUR",
       "send_customer_email": false,
       "fare_class": "FARE-1",
       "passengers":[
          { 
            "first_name": "Charlotte",
            "last_name": "Bateau",
            "type": "PNOS"
          },
          { 
            "first_name": "Paul",
            "last_name": "Bateau",
            "type": "PNOS"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "fvfzaqggr6ugqCKFr6cBQA",
        "type": "bookings",
        "attributes": {
            "departure_time": "2019-12-15T07:15",
            "arrival_time": "2019-12-15T09:15",
            "duration": 7200,
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
            "total_price": 2275,
            "pax": 2,
            "flight_number": null,
            "distribusion_booking_number": "1Z5IZR",
            "marketing_carrier_booking_number": "P3BA9507",
            "terms_accepted": true,
            "send_customer_email": false,
            "send_marketing_emails": null,
            "retailer_partner_number": "779629",
            "connection_reference": null,
            "created_at": "2019-08-08T14:24"
        },
        "relationships": {
            "departure_station": {
                "data": {
                    "id": "GBXVHPET",
                    "type": "stations"
                }
            },
            "arrival_station": {
                "data": {
                    "id": "GBCBGTPR",
                    "type": "stations"
                }
            },
            "marketing_carrier": {
                "data": {
                    "id": "NEXP",
                    "type": "marketing_carriers"
                }
            },
            "cancellation": {
                "data": null
            },
            "fare_class": {
                "data": {
                    "id": "FARE-1",
                    "type": "fare_classes"
                }
            },
            "segments": {
                "data": [
                    {
                        "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
                        "type": "segments"
                    },
                    {
                        "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
                        "type": "segments"
                    }
                ]
            },
            "passengers": {
                "data": [
                    {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    },
                    {
                        "id": "PNOS-BATEAU-PAUL-2",
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
            "id": "GBXVHPET",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBXVHPET",
                "name": "Peterborough",
                "description": "The bus stop is located near Peterborough Station.",
                "street_and_number": "Westgate",
                "zip_code": "PE1 1NL",
                "longitude": -0.24632,
                "latitude": 52.57511,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBXVH",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "GBXVH",
            "type": "cities",
            "attributes": {
                "code": "GBXVH",
                "name": "Peterborough"
            }
        },
        {
            "id": "GBCBGTPR",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBCBGTPR",
                "name": "Cambridge Trumpington P+R",
                "description": "The bus stop is inside Trumpington Park & Ride. From 43 Hauxton Rd, follow the sign \"park & ride\" to reach the parking lot. There is bus lane and bus sign.",
                "street_and_number": "Hauxton Rd",
                "zip_code": "CB2 9FT",
                "longitude": 0.10806,
                "latitude": 52.16772,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBCBG",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "GBCBG",
            "type": "cities",
            "attributes": {
                "code": "GBCBG",
                "name": "Cambridge"
            }
        },
        {
            "id": "NEXP",
            "type": "marketing_carriers",
            "attributes": {
                "code": "NEXP",
                "trade_name": "National Express",
                "legal_name": "National Express Limited",
                "address": "Birmingham Coach Station, Mill Lane, Birmingham B5 6DD, United Kingdom",
                "phone": "+44 (0)3717 818181",
                "fax": "",
                "customer_service_phone": "+44 (0)3717 818181",
                "email": "customerrelations@nationalexpress.com",
                "commercial_register": "",
                "commercial_register_number": "0023767",
                "vat_no": "GB487038714",
                "authorised_representative": "Tom Stables",
                "white_label_logo": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUcAAAA3CAIAAAAQfh9JAAAAAXNSR0IArs4c\n6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAt8SURB\nVHhe7Zy/r11HEcfhj8lfEVHwD1BR8jdQgegsCgQNFaIxRSoUpXNhN5YSyUVi\n5MICiqAgJQi5sFEiOYle8izbGPN5d/ZNxjO7e/buudG9One+GkXv7c7+mM18\ndvece59/8DqVSm1LSXUqtTUl1anU1pRUp1JbU1KdSm1NSXUqtTUl1anU1pRU\np1Jb03aofvz08uFnTzF+KEVv6tMnF+Jw8exlKdq6zjDkFNoI1aTvD395T41f\nS8W17jx8rLVv3fiwlG5a73706NxCTok2QjXHkWYwxq+l4lp/+uDf1qGUblpn\nGHJKlFRvVkn12epcqL738edaeybX0aT6bHUuVCN9nXYmr46S6rPVGVF9bkqq\nz1ZJ9WaVVJ+tkurNKqk+WyXVm1VSfbY6GNX3Pv78j3c/+9nNv1kjsSgvHku6\nePYSZ5q4TjB6vvPwcetLY8hRbdvSIQ6fPrn41Xt/lxJ6k1ZV0VWcA02Y216v\n2XBmzjqoGp3HL8m0RMh0EhcWkzXpTImB7JqU0mH975tvX3xw7/LmOxc//4Ua\nv1JIVXEKevGPf4pnxycKZ5p89ZOfPr//oBTVROeXf35P+lejhPLiURN9iuc3\nv/7tf/91lQwuNMrF02oufKf6hHedvHzyn+LUEA6Xt25/+/s/2Lb8uhgvWks1\nWUX2vHXjQ5tAzt7+3V/w6eSfIOdaVY1srp7DjmpnOIykOD5M1bo5I0zmucg2\nKC6Gw0AwWRrUREQE61pVjbGqazJNNflE9nz5ox93DAchxIoSyBQHUvD5l1+V\niq4Eae05piwOpLL2XDVq8anyZt0EDFsiZgedDt8KbvsTxq6WqLaL0bNdkKp1\n4kWrqOb46vNsjTxunVGD6auGv0NrJdWfPPpifA6E3AHy3Y8eja8Jg7YuIPuu\nCUe3W5M5qskVl0Ad49gpzXbi0LO1pObisQb5LoP5tdTtBGOLeKjhGWFzPlVT\nqteEr3Lr0LfS5lpsB86hY8y2NHtT81ST2TZpRox0r17IXf6NGHuETeIO1QyK\nQyfF2WvGOVSrgj1447DG0NXNbqIrNoKnX3+3R0xQvXhGRbPokuWxtnNi09Ah\n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\n",
                "white_label_colour_code": "",
                "terms": "Issued subject to National Express Conditions of Carriage, which can be viewed at \r\n<a href=\"https://www.nationalexpress.com/en/help/conditions-of-carriage\" target=\"blank\">https://www.nationalexpress.com/en/help/conditions-of-carriage</a>",
                "flight_number_required": false,
                "cancellation_type": "no_cancellation",
                "booking_fee": 108,
                "cancellation_fee": 0,
                "cancellation_cutoff": null
            }
        },
        {
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-12-15T07:15",
                "arrival_time": "2019-12-15T08:25",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "GBXVHPET",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "GBCBGCCE",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "NEXP",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-12-15T09:05",
                "arrival_time": "2019-12-15T09:15",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "GBCBGCCE",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "GBCBGTPR",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "NEXP",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-1",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-1",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "GBCBGCCE",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBCBGCCE",
                "name": "Cambridge City Centre",
                "description": "The bus stop is located in front of Parkers Piece park. For National Express passengers, from 18/03/2019 - 22/03/2019 from 9pm - 6am the stop will be East Rd, Fire Station; 05/05/2019, the bus will stop at Trumpington Park & Ride, Hauxton Rd.",
                "street_and_number": "Parkside 32",
                "zip_code": "CB1 1JE",
                "longitude": 0.12938269999995,
                "latitude": 52.2032877,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBCBG",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "NEXP",
            "type": "operating_carriers",
            "attributes": {
                "code": "NEXP",
                "trade_name": "National Express",
                "legal_name": "National Express Limited"
            }
        },
        {
            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-PAUL-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
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
            "id": "PNOS-BATEAU-CHARLOTTE-1-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-PAUL-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
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
            "id": "PNOS-BATEAU-CHARLOTTE-1",
            "type": "passengers",
            "attributes": {
                "first_name": "Charlotte",
                "last_name": "Bateau",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2",
            "type": "passengers",
            "attributes": {
                "first_name": "Paul",
                "last_name": "Bateau",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Standard",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NREF",
                            "type": "fare_features"
                        },
                        {
                            "id": "AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "NREF",
            "type": "fare_features",
            "attributes": {
                "code": "NREF",
                "name": "Non-refundable ",
                "description": "The ticket cannot be refunded."
            }
        },
        {
            "id": "AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please contact the carrier for further steps. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "AAFR",
            "type": "fare_features",
            "attributes": {
                "code": "AAFR",
                "name": "Accessible area for wheelchairs",
                "description": "Fully collapsible wheelchairs and fully collapsible pushchairs may be stowed free of charge. Passenger have to contact bus operator 36 hours before the departure."
            }
        }
    ]
}
```

Use this endpoint to conduct bookings. Bookings created in this way are the basis for invoicing. The endpoint currently supports one-way bookings only. It will also send out booking e-mails to customers. E-Mails are blocked on demo, so feel free to conduct test bookings on our demo server (api-demo.distribusion.com).

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
`fare_class`              | false     | Code consisting of 6-7 alphanumerical characters.
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
https://bustickets-demo.distribusion.com/redirect?marketing_carrier_code=NEXP&departure_station_code=GBXVHPET&arrival_station_code=GBCBGTPR&departure_time=2019-12-15T07:15&arrival_time=2019-12-15T09:15&currency=EUR&retailer_partner_number={number}&locale=en&pax=1
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

You can now retrieve a list of all your bookings by calling the [bookings#index](https://api-demo.distribusion.com/retailers/v4/docs/#index). 

### Checkout Link

`GET https://bustickets.distribusion.com/redirect`

### URL Parameters

Parameter                 | Mandatory | Description
------------------------- | :-------: | :----------
`marketing_carrier_code`  | true      | 4-letter alphanumeric uppercase code.
`departure_station_code`  | true      | 8- or 9-letter alphanumeric uppercase code.
`arrival_station_code`    | true      | 8- or 9-letter alphanumeric uppercase code.
`departure_time`          | true      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`arrival_time`            | true      | departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`retailer_partner_number` | true      | 5 - 12 digits number of retailer partner.
`currency`                | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.
`locale`                  | false     | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard.
`pax`                     | false     | Number of passengers - Integer in a range of 1..9.

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

You can now retrieve a list of all your bookings by calling the [bookings#index](https://api-demo.distribusion.com/retailers/v4/docs/#index). Alternatively, you can filter your booking list for a specific day by using the parameter bellow:

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
  https://api-demo.distribusion.com/retailers/v4/bookings/fvfzaqggr6ugqCKFr6cBQA \
  -H 'api-key: AIzaSyBGEpZdxbufTSpcIxWXoRjSdKu6ZctiuyI' \
  -H 'content-type: application/json' 
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "fvfzaqggr6ugqCKFr6cBQA",
        "type": "bookings",
        "attributes": {
            "departure_time": "2019-12-15T07:15",
            "arrival_time": "2019-12-15T09:15",
            "duration": 7200,
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
            "total_price": 2275,
            "pax": 2,
            "flight_number": null,
            "distribusion_booking_number": "1Z5IZR",
            "marketing_carrier_booking_number": "P3BA9507",
            "terms_accepted": true,
            "send_customer_email": false,
            "send_marketing_emails": null,
            "retailer_partner_number": "779629",
            "connection_reference": null,
            "created_at": "2019-08-08T14:24"
        },
        "relationships": {
            "departure_station": {
                "data": {
                    "id": "GBXVHPET",
                    "type": "stations"
                }
            },
            "arrival_station": {
                "data": {
                    "id": "GBCBGTPR",
                    "type": "stations"
                }
            },
            "marketing_carrier": {
                "data": {
                    "id": "NEXP",
                    "type": "marketing_carriers"
                }
            },
            "cancellation": {
                "data": null
            },
            "fare_class": {
                "data": {
                    "id": "FARE-1",
                    "type": "fare_classes"
                }
            },
            "segments": {
                "data": [
                    {
                        "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
                        "type": "segments"
                    },
                    {
                        "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
                        "type": "segments"
                    }
                ]
            },
            "passengers": {
                "data": [
                    {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    },
                    {
                        "id": "PNOS-BATEAU-PAUL-2",
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
            "id": "GBXVHPET",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBXVHPET",
                "name": "Peterborough",
                "description": "The bus stop is located near Peterborough Station.",
                "street_and_number": "Westgate",
                "zip_code": "PE1 1NL",
                "longitude": -0.24632,
                "latitude": 52.57511,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBXVH",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "GBXVH",
            "type": "cities",
            "attributes": {
                "code": "GBXVH",
                "name": "Peterborough"
            }
        },
        {
            "id": "GBCBGTPR",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBCBGTPR",
                "name": "Cambridge Trumpington P+R",
                "description": "The bus stop is inside Trumpington Park & Ride. From 43 Hauxton Rd, follow the sign \"park & ride\" to reach the parking lot. There is bus lane and bus sign.",
                "street_and_number": "Hauxton Rd",
                "zip_code": "CB2 9FT",
                "longitude": 0.10806,
                "latitude": 52.16772,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBCBG",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "GBCBG",
            "type": "cities",
            "attributes": {
                "code": "GBCBG",
                "name": "Cambridge"
            }
        },
        {
            "id": "NEXP",
            "type": "marketing_carriers",
            "attributes": {
                "code": "NEXP",
                "trade_name": "National Express",
                "legal_name": "National Express Limited",
                "address": "Birmingham Coach Station, Mill Lane, Birmingham B5 6DD, United Kingdom",
                "phone": "+44 (0)3717 818181",
                "fax": "",
                "customer_service_phone": "+44 (0)3717 818181",
                "email": "customerrelations@nationalexpress.com",
                "commercial_register": "",
                "commercial_register_number": "0023767",
                "vat_no": "GB487038714",
                "authorised_representative": "Tom Stables",
                "white_label_logo": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUcAAAA3CAIAAAAQfh9JAAAAAXNSR0IArs4c\n6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAt8SURB\nVHhe7Zy/r11HEcfhj8lfEVHwD1BR8jdQgegsCgQNFaIxRSoUpXNhN5YSyUVi\n5MICiqAgJQi5sFEiOYle8izbGPN5d/ZNxjO7e/buudG9One+GkXv7c7+mM18\ndvece59/8DqVSm1LSXUqtTUl1anU1pRUp1JbU1KdSm1NSXUqtTUl1anU1pRU\np1Jb03aofvz08uFnTzF+KEVv6tMnF+Jw8exlKdq6zjDkFNoI1aTvD395T41f\nS8W17jx8rLVv3fiwlG5a73706NxCTok2QjXHkWYwxq+l4lp/+uDf1qGUblpn\nGHJKlFRvVkn12epcqL738edaeybX0aT6bHUuVCN9nXYmr46S6rPVGVF9bkqq\nz1ZJ9WaVVJ+tkurNKqk+WyXVm1VSfbY6GNX3Pv78j3c/+9nNv1kjsSgvHku6\nePYSZ5q4TjB6vvPwcetLY8hRbdvSIQ6fPrn41Xt/lxJ6k1ZV0VWcA02Y216v\n2XBmzjqoGp3HL8m0RMh0EhcWkzXpTImB7JqU0mH975tvX3xw7/LmOxc//4Ua\nv1JIVXEKevGPf4pnxycKZ5p89ZOfPr//oBTVROeXf35P+lejhPLiURN9iuc3\nv/7tf/91lQwuNMrF02oufKf6hHedvHzyn+LUEA6Xt25/+/s/2Lb8uhgvWks1\nWUX2vHXjQ5tAzt7+3V/w6eSfIOdaVY1srp7DjmpnOIykOD5M1bo5I0zmucg2\nKC6Gw0AwWRrUREQE61pVjbGqazJNNflE9nz5ox93DAchxIoSyBQHUvD5l1+V\niq4Eae05piwOpLL2XDVq8anyZt0EDFsiZgedDt8KbvsTxq6WqLaL0bNdkKp1\n4kWrqOb46vNsjTxunVGD6auGv0NrJdWfPPpifA6E3AHy3Y8eja8Jg7YuIPuu\nCUe3W5M5qskVl0Ad49gpzXbi0LO1pObisQb5LoP5tdTtBGOLeKjhGWFzPlVT\nqteEr3Lr0LfS5lpsB86hY8y2NHtT81ST2TZpRox0r17IXf6NGHuETeIO1QyK\nQyfF2WvGOVSrgj1447DG0NXNbqIrNoKnX3+3R0xQvXhGRbPokuWxtnNi09Ah\n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\n",
                "white_label_colour_code": "",
                "terms": "Issued subject to National Express Conditions of Carriage, which can be viewed at \r\n<a href=\"https://www.nationalexpress.com/en/help/conditions-of-carriage\" target=\"blank\">https://www.nationalexpress.com/en/help/conditions-of-carriage</a>",
                "flight_number_required": false,
                "cancellation_type": "no_cancellation",
                "booking_fee": 108,
                "cancellation_fee": 0,
                "cancellation_cutoff": null
            }
        },
        {
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-12-15T07:15",
                "arrival_time": "2019-12-15T08:25",
                "index": 0
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "GBXVHPET",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "GBCBGCCE",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "NEXP",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
            "type": "segments",
            "attributes": {
                "departure_time": "2019-12-15T09:05",
                "arrival_time": "2019-12-15T09:15",
                "index": 1
            },
            "relationships": {
                "departure_station": {
                    "data": {
                        "id": "GBCBGCCE",
                        "type": "stations"
                    }
                },
                "arrival_station": {
                    "data": {
                        "id": "GBCBGTPR",
                        "type": "stations"
                    }
                },
                "operating_carrier": {
                    "data": {
                        "id": "NEXP",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-BATEAU-CHARLOTTE-1-1",
                            "type": "segment_passengers"
                        },
                        {
                            "id": "PNOS-BATEAU-PAUL-2-1",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "GBCBGCCE",
            "type": "stations",
            "attributes": {
                "station_type": "bus_station",
                "code": "GBCBGCCE",
                "name": "Cambridge City Centre",
                "description": "The bus stop is located in front of Parkers Piece park. For National Express passengers, from 18/03/2019 - 22/03/2019 from 9pm - 6am the stop will be East Rd, Fire Station; 05/05/2019, the bus will stop at Trumpington Park & Ride, Hauxton Rd.",
                "street_and_number": "Parkside 32",
                "zip_code": "CB1 1JE",
                "longitude": 0.12938269999995,
                "latitude": 52.2032877,
                "time_zone": "Europe/London"
            },
            "relationships": {
                "city": {
                    "data": {
                        "id": "GBCBG",
                        "type": "cities"
                    }
                },
                "area": {
                    "data": null
                }
            }
        },
        {
            "id": "NEXP",
            "type": "operating_carriers",
            "attributes": {
                "code": "NEXP",
                "trade_name": "National Express",
                "legal_name": "National Express Limited"
            }
        },
        {
            "id": "PNOS-BATEAU-CHARLOTTE-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-PAUL-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-0",
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
            "id": "PNOS-BATEAU-CHARLOTTE-1-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-CHARLOTTE-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2-1",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-BATEAU-PAUL-2",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-NEXP-GBXVHPET-GBCBGTPR-2019-12-15T07:15-2019-12-15T09:15-1",
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
            "id": "PNOS-BATEAU-CHARLOTTE-1",
            "type": "passengers",
            "attributes": {
                "first_name": "Charlotte",
                "last_name": "Bateau",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "PNOS-BATEAU-PAUL-2",
            "type": "passengers",
            "attributes": {
                "first_name": "Paul",
                "last_name": "Bateau",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Standard",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "NREF",
                            "type": "fare_features"
                        },
                        {
                            "id": "AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "NREF",
            "type": "fare_features",
            "attributes": {
                "code": "NREF",
                "name": "Non-refundable ",
                "description": "The ticket cannot be refunded."
            }
        },
        {
            "id": "AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please contact the carrier for further steps. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "AAFR",
            "type": "fare_features",
            "attributes": {
                "code": "AAFR",
                "name": "Accessible area for wheelchairs",
                "description": "Fully collapsible wheelchairs and fully collapsible pushchairs may be stowed free of charge. Passenger have to contact bus operator 36 hours before the departure."
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
  https://api-demo.distribusion.com/retailers/v4/bookings/fvfzaqggr6ugqCKFr6cBQA/tickets \
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
