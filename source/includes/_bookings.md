# Bookings

## Bookings Create

```shell
curl -X POST \
  https://api.demo.distribusion.com/retailers/v4/bookings/create \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' \
  -d '{
       "marketing_carrier": "VICA",
       "departure_station": "DEBERCBS",
       "arrival_station": "FRPARPGB",
       "departure_time": "2021-07-20T13:20",
       "arrival_time": "2021-07-20T15:40",
       "retailer_partner_number": "000000",
       "title": "mr",
       "first_name": "Test",
       "last_name": "Test",
       "email": "test.test@gmail.com",
       "phone": "4915237601929",
       "city": "Berlin",
       "zip_code": "10123",
       "street_and_number": "Berlinstr. 23",
       "execute_payment": false,
       "payment_method": "demand_note",
       "total_price": 2148,
       "pax": 1,
       "terms_accepted": true,
       "locale": "en",
       "currency": "GBP",
       "send_customer_email": true,
       "fare_class": "FARE-1",
       "passengers":[
          { 
            "first_name": "Test",
            "last_name": "Test",
            "type": "PNOS"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "VICA-37de14da-6169-4afd-9d68-e90be76b51a1",
        "type": "orders",
        "attributes": {
            "state": "executed",
            "executed_at": "2021-06-20T09:10"
        },
        "relationships": {
            "booking": {
                "data": {
                    "id": "Cb3bK2CeS1y-l_Jq_nB9KQ",
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
        "currency": "GBP"
    },
    "included": [
        {
            "id": "Cb3bK2CeS1y-l_Jq_nB9KQ",
            "type": "bookings",
            "attributes": {
                "departure_time": "2021-07-20T13:20",
                "arrival_time": "2021-07-20T15:40",
                "duration": 5400,
                "total_price": 2148,
                "pax": 2,
                "flight_number": null,
                "distribusion_booking_number": "DQ8KS4",
                "marketing_carrier_booking_number": "P3BB2227",
                "connection_reference": null,
                "created_at": "2021-06-20T09:10"
            },
            "relationships": {
                "fare_class": {
                    "data": {
                        "id": "VICA-FARE-1",
                        "type": "fare_classes"
                    }
                },
                "segments": {
                    "data": [
                        {
                            "id": "VICA-DEBERCBS-FRPARPGB-2021-07-20T13:20-2021-07-20T15:40-0",
                            "type": "segments"
                        }
                    ]
                },
                "passengers": {
                    "data": [
                        {
                            "id": "PNOS-TEST-TESTS-OUTBOUND-1-0",
                            "type": "passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "VICA-DEBERCBS-FRPARPGB-2021-07-20T13:20-2021-07-20T15:40-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2021-07-20T13:20",
                "arrival_time": "2021-07-20T15:40",
                "index": 0
            },
            "relationships": {
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-TEST-TEST-OUTBOUND-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
            "type": "passengers",
            "attributes": {
                "first_name": "TEST",
                "last_name": "TEST",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "VICA-FARE-1",
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
                            "id": "VICA-ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-REFU",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "VICA-ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "VICA-TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "VICA-ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "VICA-REFU",
            "type": "fare_features",
            "attributes": {
                "code": "REFU",
                "name": "Refundable",
                "description": "The ticket is refundable and can be cancelled no less than 72 hours in advance of travel."
            }
        },
        {
            "id": "VICA-AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please proceed via the link https://coach.nationalexpress.com/nxbooking/mmb2ManageMyBooking. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "VICA-WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "VICA-MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "VICA-UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "VICA-AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "VICA-BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "VICA-AAFR",
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

This endpoint is used to conduct a booking.

### HTTP Request

- Prod: `POST https://api.distribusion.com/retailers/v4/bookings/create`
- Demo: `POST https://api.demo.distribusion.com/retailers/v4/bookings/create`

### Body Parameters

| Parameter               | Mandatory | Description                                                                                                                                                                                                                                                 | Example             |
|-------------------------|-----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| marketing_carrier       | TRUE      | 4-letter alphanumeric uppercase code                                                                                                                                                                                                                        | VICA                |
| departure_station       | TRUE      | 8- or 9-letter alphanumeric uppercase code                                                                                                                                                                                                                  | DEBERCBS            |
| arrival_station         | TRUE      | 8- or 9-letter alphanumeric uppercase code                                                                                                                                                                                                                  | FRPARPGB            |
| departure_time          | TRUE      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                         | 2021-07-20T13:20    |
| arrival_time            | TRUE      | Arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                           | 2021-07-20T15:40    |
| return_departure_time   | FALSE     | Inbound departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                 | 2021-07-25T13:20    |
| return_arrival_time     | FALSE     | Inbound arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                   | 2021-07-25T15:40    |
| retailer_partner_number | TRUE      | 5 - 12 digits number of retailer partner, unique to every retail partner                                                                                                                                                                                    | 111111              |
| title                   | TRUE      | Title of passenger (e.g. “Mr.” or “Mrs.”)                                                                                                                                                                                                                   | mr                  |
| first_name              | TRUE      | First name of the customer, 1-50-letter alphanumeric string                                                                                                                                                                                                 | John                |
| last_name               | TRUE      | Last name of the customer, 1-50-letter alphanumeric string                                                                                                                                                                                                  | Snow                |
| email                   | TRUE      | Email address of the customer                                                                                                                                                                                                                               | john.snow@gmail.com |
| phone                   | TRUE      | Phone number of the customer, 8-20-number string                                                                                                                                                                                                            | 123243545           |
| city                    | TRUE      | 1-50-letter alphanumeric string                                                                                                                                                                                                                             | Berlin              |
| zip_code                | TRUE      | 2-10-letter alphanumeric string                                                                                                                                                                                                                             | 134345              |
| street_and_number       | TRUE      | 1-99-letter alphanumeric string                                                                                                                                                                                                                             | Street 1            |
| execute_payment         | TRUE      | Can be true or false. Flag signalling whether the payment transaction should be executed                                                                                                                                                                    | FALSE               |
| payment_method          | TRUE      | Allowed value: demand_note, credit_card, sepa_direct_debit, paypal                                                                                                                                                                                          | demand_note         |
| total_price             | TRUE      | Total price of the requested passenger types and extras with added bus marketing carrier booking fee in fractional currency unit (if there is one, in cent) in requested currency. Minimum value - 0, maximum value - 9999900. Provided in vacancy response | 1000                |
| pax                     | TRUE      | Number of passengers. Integer in a range of 1 - 9                                                                                                                                                                                                           | 2                   |
| terms_accepted          | TRUE      | Flag signalling whether Terms & Conditions of the marketing carrier have been accepted. Can be true or false                                                                                                                                                | TRUE                |
| locale                  | TRUE      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard                                                                                                                                                                                       | en                  |
| currency                | TRUE      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard                                                                                                                                                                                        | EUR                 |
| send_customer_email     | TRUE      | Flag for sending out (or preventing) of the customer confirmation email from Distribusion. Can be true or false                                                                                                                                             | FALSE               |
| fare_class              | FALSE     | Code consisting of 6-7 alphanumeric characters                                                                                                                                                                                                              | FARE-1              |
| passengers              | TRUE      | Array                                                                                                                                                                                                                                                       |                     |
| first_name              | TRUE      | First name of the passenger, 1-50-letter alphanumeric string                                                                                                                                                                                                | John                |
| last_name               | TRUE      | Last name of the customer, 1-50-letter alphanumeric string                                                                                                                                                                                                  | Snow                |
| type                    | TRUE      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained from GET /marketing_carriers/{code}                                                                                                                                   | PNOS                |
| government_id_type      | FALSE     | Allowed value: national_id, passport_id, drivers_license, tax_number                                                                                                                                                                                        | national_id         |
| government_id           | FALSE     | Alphanumeric lowercase code, according to ISO 639-1 standard                                                                                                                                                                                                | 1234567             |
| nationality             | FALSE     | 2 letter country code; ISO 3166-1 alpha-2                                                                                                                                                                                                                   | DE                  |
| birthdate               | FALSE     | yyyy-mm-dd                                                                                                                                                                                                                                                  | 1990-10-02          |
| seats                   | FALSE     | Array                                                                                                                                                                                                                                                       |                     |
| seat_code               | FALSE     | 1 or 2 digit seat number                                                                                                                                                                                                                                    | 22                  |
| segment_index           | FALSE     | 1 digit segment number                                                                                                                                                                                                                                      | 0                   |

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
400.101.065 | Passenger government ID is invalid or missing
400.101.066 | Passenger government ID type is invalid or missing
400.101.067 | Passenger seat segment index is invalid or missing
400.101.068 | Passenger seat code is invalid or missing
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
600.706.000 | Remote booking seat not available error
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)
600.703.026 | Booking price unknown

## Orders Create

```shell
curl -X POST \
  https://api.demo.distribusion.com/retailers/v4/orders/create \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json' \
  -d '{
       "marketing_carrier": "VICA",
       "departure_station": "DEBERCBS",
       "arrival_station": "FRPARPGB",
       "departure_time": "2021-07-20T13:20",
       "arrival_time": "2021-07-20T15:40",
       "retailer_partner_number": "000000",
       "title": "mr",
       "first_name": "Test",
       "last_name": "Test",
       "email": "test.test@gmail.com",
       "phone": "4915237601929",
       "city": "Berlin",
       "zip_code": "10123",
       "street_and_number": "Berlinstr. 23",
       "execute_payment": false,
       "payment_method": "demand_note",
       "total_price": 2148,
       "pax": 1,
       "terms_accepted": true,
       "locale": "en",
       "currency": "GBP",
       "send_customer_email": true,
       "fare_class": "FARE-1",
       "passengers":[
          { 
            "first_name": "Test",
            "last_name": "Test",
            "type": "PNOS"
          }
        ]
    }'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "VICA-37de14da-6169-4afd-9d68-e90be76b51a1",
        "type": "orders",
        "attributes": {
            "state": "created",
            "created_at": "2021-06-20T09:09"
        }
    },
    "jsonapi": {
        "version": "1.0"
    }
}
```

Use this endpoint to conduct an order. Orders created in this way are not a booking per se, but a confirmation that your booking request has been successfully taken into account by our platform. In order to retrieve the status of your booking, please call [orders/{:id}] (https://api-demo.distribusion.com/retailers/v4/docs/#orders-status).

### HTTP Request

- Prod: `POST https://api.distribusion.com/retailers/v4/orders/create`
- Demo: `POST https://api.demo.distribusion.com/retailers/v4/orders/create`

### Body Parameters

| Parameter               | Mandatory | Description                                                                                                                                                                                                                                                 | Example             |
|-------------------------|-----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| marketing_carrier       | TRUE      | 4-letter alphanumeric uppercase code                                                                                                                                                                                                                        | VICA                |
| departure_station       | TRUE      | 8- or 9-letter alphanumeric uppercase code                                                                                                                                                                                                                  | DEBERCBS            |
| arrival_station         | TRUE      | 8- or 9-letter alphanumeric uppercase code                                                                                                                                                                                                                  | FRPARPGB            |
| departure_time          | TRUE      | Departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                         | 2021-07-20T13:20    |
| arrival_time            | TRUE      | Arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                           | 2021-07-20T15:40    |
| return_departure_time   | FALSE     | Inbound departure time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                 | 2021-07-25T13:20    |
| return_arrival_time     | FALSE     | Inbound arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm                                                                                                                                                                                   | 2021-07-25T15:40    |
| retailer_partner_number | TRUE      | 5 - 12 digits number of retailer partner, unique to every retail partner                                                                                                                                                                                    | 111111              |
| title                   | TRUE      | Title of passenger (e.g. “Mr.” or “Mrs.”)                                                                                                                                                                                                                   | mr                  |
| first_name              | TRUE      | First name of the customer, 1-50-letter alphanumeric string                                                                                                                                                                                                 | John                |
| last_name               | TRUE      | Last name of the customer, 1-50-letter alphanumeric string                                                                                                                                                                                                  | Snow                |
| email                   | TRUE      | Email address of the customer                                                                                                                                                                                                                               | john.snow@gmail.com |
| phone                   | TRUE      | Phone number of the customer, 8-20-number string                                                                                                                                                                                                            | 123243545           |
| city                    | TRUE      | 1-50-letter alphanumeric string                                                                                                                                                                                                                             | Berlin              |
| zip_code                | TRUE      | 2-10-letter alphanumeric string                                                                                                                                                                                                                             | 134345              |
| street_and_number       | TRUE      | 1-99-letter alphanumeric string                                                                                                                                                                                                                             | Street 1            |
| execute_payment         | TRUE      | Can be true or false. Flag signalling whether the payment transaction should be executed                                                                                                                                                                    | FALSE               |
| payment_method          | TRUE      | Allowed value: demand_note, credit_card, sepa_direct_debit, paypal                                                                                                                                                                                          | demand_note         |
| total_price             | TRUE      | Total price of the requested passenger types and extras with added bus marketing carrier booking fee in fractional currency unit (if there is one, in cent) in requested currency. Minimum value - 0, maximum value - 9999900. Provided in vacancy response | 1000                |
| pax                     | TRUE      | Number of passengers. Integer in a range of 1 - 9                                                                                                                                                                                                           | 2                   |
| terms_accepted          | TRUE      | Flag signalling whether Terms & Conditions of the marketing carrier have been accepted. Can be true or false                                                                                                                                                | TRUE                |
| locale                  | TRUE      | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard                                                                                                                                                                                       | en                  |
| currency                | TRUE      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard                                                                                                                                                                                        | EUR                 |
| send_customer_email     | TRUE      | Flag for sending out (or preventing) of the customer confirmation email from Distribusion. Can be true or false                                                                                                                                             | FALSE               |
| fare_class              | FALSE     | Code consisting of 6-7 alphanumeric characters                                                                                                                                                                                                              | FARE-1              |
| passengers              | TRUE      | Array                                                                                                                                                                                                                                                       |                     |
| first_name              | TRUE      | First name of the passenger, 1-50-letter alphanumeric string                                                                                                                                                                                                | John                |
| last_name               | TRUE      | Last name of the customer, 1-50-letter alphanumeric string                                                                                                                                                                                                  | Snow                |
| type                    | TRUE      | Passenger type. 4-letter alphanumeric uppercase code, available codes can be obtained from GET /marketing_carriers/{code}                                                                                                                                   | PNOS                |
| government_id_type      | FALSE     | Allowed value: national_id, passport_id, drivers_license, tax_number                                                                                                                                                                                        | national_id         |
| government_id           | FALSE     | Alphanumeric lowercase code, according to ISO 639-1 standard                                                                                                                                                                                                | 1234567             |
| nationality             | FALSE     | 2 letter country code; ISO 3166-1 alpha-2                                                                                                                                                                                                                   | DE                  |
| birthdate               | FALSE     | yyyy-mm-dd                                                                                                                                                                                                                                                  | 1990-10-02          |
| seats                   | FALSE     | Array                                                                                                                                                                                                                                                       |                     |
| seat_code               | FALSE     | 1 or 2 digit seat number                                                                                                                                                                                                                                    | 22                  |
| segment_index           | FALSE     | 1 digit segment number                                                                                                                                                                                                                                      | 0                   |

<aside class="notice">
You must use your own <code>retailer_partner_number</code> to conduct booking.</aside>

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
400.101.065 | Passenger government ID is invalid or missing
400.101.066 | Passenger government ID type is invalid or missing
400.101.067 | Passenger seat segment index is invalid or missing
400.101.068 | Passenger seat code is invalid or missing
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
600.706.000 | Remote booking seat not available error
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)
600.703.026 | Booking price unknown

## Orders Status

```shell
curl -X GET \
  https://api.demo.distribusion.com/retailers/v4/orders/VICA-37de14da-6169-4afd-9d68-e90be76b51a1 \
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "VICA-37de14da-6169-4afd-9d68-e90be76b51a1",
        "type": "orders",
        "attributes": {
            "state": "executed",
            "executed_at": "2021-06-20T09:10"
        },
        "relationships": {
            "booking": {
                "data": {
                    "id": "Cb3bK2CeS1y-l_Jq_nB9KQ",
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
        "currency": "GBP"
    },
    "included": [
        {
            "id": "Cb3bK2CeS1y-l_Jq_nB9KQ",
            "type": "bookings",
            "attributes": {
                "departure_time": "2021-07-20T13:20",
                "arrival_time": "2021-07-20T15:40",
                "duration": 5400,
                "total_price": 2148,
                "pax": 2,
                "flight_number": null,
                "distribusion_booking_number": "DQ8KS4",
                "marketing_carrier_booking_number": "P3BB2227",
                "connection_reference": null,
                "created_at": "2021-06-20T09:10"
            },
            "relationships": {
                "fare_class": {
                    "data": {
                        "id": "VICA-FARE-1",
                        "type": "fare_classes"
                    }
                },
                "segments": {
                    "data": [
                        {
                            "id": "VICA-DEBERCBS-FRPARPGB-2021-07-20T13:20-2021-07-20T15:40-0",
                            "type": "segments"
                        }
                    ]
                },
                "passengers": {
                    "data": [
                        {
                            "id": "PNOS-TEST-TESTS-OUTBOUND-1-0",
                            "type": "passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "VICA-DEBERCBS-FRPARPGB-2021-07-20T13:20-2021-07-20T15:40-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2021-07-20T13:20",
                "arrival_time": "2021-07-20T15:40",
                "index": 0
            },
            "relationships": {
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-TEST-TEST-OUTBOUND-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
            "type": "passengers",
            "attributes": {
                "first_name": "TEST",
                "last_name": "TEST",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "VICA-FARE-1",
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
                            "id": "VICA-ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-REFU",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "VICA-ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "VICA-TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "VICA-ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "VICA-REFU",
            "type": "fare_features",
            "attributes": {
                "code": "REFU",
                "name": "Refundable",
                "description": "The ticket is refundable and can be cancelled no less than 72 hours in advance of travel."
            }
        },
        {
            "id": "VICA-AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please proceed via the link https://coach.nationalexpress.com/nxbooking/mmb2ManageMyBooking. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "VICA-WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "VICA-MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "VICA-UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "VICA-AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "VICA-BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "VICA-AAFR",
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

This endpoint can be used to confirm the status of the placed order.

Table of supported statuses

| Status   | Description                                                          |
|----------|----------------------------------------------------------------------|
| created  | Order has been successfully received and will be processed soon      |
| executed | Order has been successfully processed on the carrier’s remote system |
| failed   | Order could not be successfully executed by carrier’s remote system  |

Once your order has been executed, you will also obtain a booking ID. This booking ID can be used to call our [bookings#show] (https://api.distribusion.com/retailers/v4/docs/#show) in order to get detailed information about the booking and [bookings/{:id}/tickets] (https://api.distribusion.com/retailers/v4/docs/#tickets) to retrieve the ticket in various formats.

### HTTP Request

- Prod: `GET https://api.distribusion.com/retailers/v4/orders/:id`
- Demo: `GET https://api.demo.distribusion.com/retailers/v4/orders/:id`

### Query Parameters

Parameter                 | Mandatory | Description | Example |
------------------------- | :-------: | :---------- | :---------- |
`OrderId`                 | true      | 41-letter alphanumeric code | VICA-37de14da-6169-4afd-9d68-e90be76b51a1 |

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

## Redirect for Affiliates

```curl
https://bustickets-demo.distribusion.com/redirect?marketing_carrier_code=NEXP&departure_station_code=GBXVHPET&arrival_station_code=GBCBGCCE&departure_time=22020-06-15T06:05&arrival_time=2020-06-15T07:35&currency=EUR&retailer_partner_number={number}&locale=en&pax=1
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
`arrival_time`            | true      | Arrival time in ISO 8601 format without timezone yyyy-mm-ddThh:mm.
`retailer_partner_number` | true      | 6 digits number of retailer partner.
`currency`                | true      | 3-letter alphanumeric uppercase code, according to ISO 4217 standard.
`locale`                  | false     | 2-letter alphanumeric lowercase code, according to ISO 639-1 standard.
`pax`                     | false     | Number of passengers - Integer in a range of 1..9.

### Errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

# Postbooking

## Tickets

```shell
curl -X GET \
  https://api.demo.distribusion.com/retailers/v4/bookings/O9xf1EqAQfsuNcRdtum-2g/tickets \
  -H 'Api-Key: {demo_api_key}' \
  -H 'Content-Type: application/json'
```

This endpoint can be used to retrieve the ticket that must be passed along to the customer.

In case you opted for "send_customer_email": true in the bookings/create or orders/create request, Distribusion will send customer confirmation email including the attached ticket. In this case, there is no need to use this endpoint to separately retrieve the ticket.

Note: Not all carriers support mobile tickets. To know if a specific marketing carrier supports mobile ticket, call [marketing_carriers#show](https://docs.distribusion.com/#show30) and look for `has_mobile_tickets` parameter.

<a href="/images/Distribusion_Technologies_Tickets.zip" download>Click here to download ticket examples.</a>

![alt text](/images/tickets_7P7JF8.png)

### HTTP Request

- Prod: `GET api.distribusion.com/retailers/v4/bookings/:id/tickets`
- Demo: `GET api.demo.distribusion.com/retailers/v4/bookings/:id/tickets`

### URL Parameters

Parameter           | Mandatory | Description | Example |
------------------- | --------- | ----------- | ----------- |
`type`              | false     | This parameter defines the ticket type. Allowed values: pkpass, html. The default value is pdf | pkpass |

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

## Bookings Index

```shell
curl -X GET \
  https://api.demo.distribusion.com/retailers/v4/bookings?created_at=2021-02-14 \
  -H 'api-key: {demo_api_key}' \
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
        "departure_time": "2021-10-10T14:00",
        "last_name": "Smith",
        "total_price": 15000,
        "pax": 2,
        "distribusion_booking_number": "ZN8FX2",
        "created_at": "2021-02-14T15:31"
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

This endpoint can be used to retrieve all the bookings that have been placed by your API credentials on a specific date.

### URL Parameters

Parameter           | Mandatory | Description | Example |
------------------- | --------- | ----------- | ----------- |
`created_at`        | false     | Departure date in ISO 8601 format | 2021-05-07 |

### HTTP Request

- Prod: `GET api.distribusion.com/retailers/v4/bookings`
- Demo: `GET api.demo.distribusion.com/retailers/v4/bookings`

### Errors

Error Code  | Meaning
----------- | -------
400.200.001 | API key is invalid or missing
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable

## Bookings Show

```shell
curl -X GET \
  https://api.demo.distribusion.com/retailers/v4/bookings/O9xf1EqAQfsuNcRdtum-2g \
  -H 'api-key: {demo_api_key}' \
  -H 'content-type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "O9xf1EqAQfsuNcRdtum-2g",
        "type": "bookings",
        "attributes": {
            "departure_time": "2020-06-15T06:05",
            "arrival_time": "2020-06-15T07:35",
            "duration": 5400,
            "title": "mr",
            "first_name": "Test",
            "last_name": "Test",
            "email": "test.test@mail.com",
            "phone": "4915237601929",
            "city": "Berlin",
            "zip_code": "10123",
            "street_and_number": "Berlinstr. 23",
            "execute_payment": false,
            "payment_method": "demand_note",
            "payment_token": null,
            "payer_id": null,
            "total_price": 2266,
            "pax": 2,
            "flight_number": null,
            "distribusion_booking_number": "YXIGK7",
            "marketing_carrier_booking_number": "P3BB2228",
            "terms_accepted": true,
            "send_customer_email": false,
            "send_marketing_emails": null,
            "retailer_partner_number": "000000",
            "connection_reference": null,
            "created_at": "2020-02-13T09:23"
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
            "marketing_carrier": {
                "data": {
                    "id": "VICA",
                    "type": "marketing_carriers"
                }
            },
            "cancellation": {
                "data": null
            },
            "fare_class": {
                "data": {
                    "id": "VICA-FARE-1",
                    "type": "fare_classes"
                }
            },
            "outbound_connection": {
                "data": {
                    "id": "VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35",
                    "type": "connections"
                }
            },
            "inbound_connection": {
                "data": null
            },
            "fees": {
                "data": []
            },
            "segments": {
                "data": [
                    {
                        "id": "VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0",
                        "type": "segments"
                    }
                ]
            },
            "passengers": {
                "data": [
                    {
                        "id": "PNOS-TEST-TEST-OUTBOUND-1",
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
            "id": "GBCBG",
            "type": "cities",
            "attributes": {
                "code": "GBCBG",
                "name": "Cambridge"
            }
        },
        {
            "id": "VICA",
            "type": "marketing_carriers",
            "attributes": {
                "code": "VICA",
                "trade_name": "Virtual carrier Intercity Europe",
                "legal_name": "Virtual carrier Intercity Europe Limited",
                "address": "Birmingham Coach Station, Mill Lane, Birmingham B5 6DD, United Kingdom",
                "phone": "+44 (0)3717 818181",
                "fax": "",
                "customer_service_phone": "+44 (0)3717 818181",
                "customer_service_email": "customerrelations@nationalexpress.com",
                "email": "customerrelations@nationalexpress.com",
                "commercial_register": "",
                "commercial_register_number": "0023767",
                "vat_no": "GB487038714",
                "authorised_representative": "Tom Stables",
                "white_label_logo": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUcAAAA3CAIAAAAQfh9JAAAAAXNSR0IArs4c\n6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAt8SURB\nVHhe7Zy/r11HEcfhj8lfEVHwD1BR8jdQgegsCgQNFaIxRSoUpXNhN5YSyUVi\n5MICiqAgJQi5sFEiOYle8izbGPN5d/ZNxjO7e/buudG9One+GkXv7c7+mM18\ndvece59/8DqVSm1LSXUqtTUl1anU1pRUp1JbU1KdSm1NSXUqtTUl1anU1pRU\np1Jb03aofvz08uFnTzF+KEVv6tMnF+Jw8exlKdq6zjDkFNoI1aTvD395T41f\nS8W17jx8rLVv3fiwlG5a73706NxCTok2QjXHkWYwxq+l4lp/+uDf1qGUblpn\nGHJKlFRvVkn12epcqL738edaeybX0aT6bHUuVCN9nXYmr46S6rPVGVF9bkqq\nz1ZJ9WaVVJ+tkurNKqk+WyXVm1VSfbY6GNX3Pv78j3c/+9nNv1kjsSgvHku6\nePYSZ5q4TjB6vvPwcetLY8hRbdvSIQ6fPrn41Xt/lxJ6k1ZV0VWcA02Y216v\n2XBmzjqoGp3HL8m0RMh0EhcWkzXpTImB7JqU0mH975tvX3xw7/LmOxc//4Ua\nv1JIVXEKevGPf4pnxycKZ5p89ZOfPr//oBTVROeXf35P+lejhPLiURN9iuc3\nv/7tf/91lQwuNMrF02oufKf6hHedvHzyn+LUEA6Xt25/+/s/2Lb8uhgvWks1\nWUX2vHXjQ5tAzt7+3V/w6eSfIOdaVY1srp7DjmpnOIykOD5M1bo5I0zmucg2\nKC6Gw0AwWRrUREQE61pVjbGqazJNNflE9nz5ox93DAchxIoSyBQHUvD5l1+V\niq4Eae05piwOpLL2XDVq8anyZt0EDFsiZgedDt8KbvsTxq6WqLaL0bNdkKp1\n4kWrqOb46vNsjTxunVGD6auGv0NrJdWfPPpifA6E3AHy3Y8eja8Jg7YuIPuu\nCUe3W5M5qskVl0Ad49gpzXbi0LO1pObisQb5LoP5tdTtBGOLeKjhGWFzPlVT\nqteEr3Lr0LfS5lpsB86hY8y2NHtT81ST2TZpRox0r17IXf6NGHuETeIO1QyK\nQyfF2WvGOVSrgj1447DG0NXNbqIrNoKnX3+3R0xQvXhGRbPokuWxtnNi09Ah\njTGHV69eicNeKa5GK2kucrVVk71gZfiiuAh9K812YnNxtX3jil5avqlJqlsU\nARu5JVZFhcJ4OlFinW0nYlpljfLSPszHthX8WinuhlajUHtgPq5WzO1Q9q8p\nrC2uiduhRC6iwTVhLyjt96e6ldMcgOQu1jozaVi6qHUS814UT2nMdmXv89Z0\nPp0p2RPbVVmTTuTIPUj43CxcLa1w4FBV4yTXrmxbFA95SmxbpspMpIpOWleh\nSapjopNPEdfqAzMZWaqNIIRywGjdSIEzprIemI4BfpVyVSvFq9OLzZlV9ARR\npZEfHLH8yqAxHInUemLVF3gSMv+NzCMKqYr/I/Tk34vqeEqQNKQRaVo8dgJF\nCmN+2+fSiAeJ6E7s1ildqneKDqS4HUgEwBEG2pbqGtXUXt593yJxqPDd5YKB\nWuDhSVeu1rbF4tME4iJDOW2rtaIZqslLmy6kb8TAiuSz/lgL3UU5tPhVyueo\nZhq2ENNtoqp4V1d/d1DjVr1Xq8DY+ZeKPQXbbo8gUqnai2oHRicdUWSS5qVu\npwg2JGgWLp7SCGfn4O7VTvGursO5cgbSG77qUOEDmy1v3ZBbsm0ZopTurxmq\nXUb2SRC5DIOBUrG/7OlEQkvhHNVue6oemE6uiW4rDq3+NidyO9RIk6oA2/Yz\nR7U9f/iZxI2pbxUpKhXXaoEdkcAc0sjj0XgtZNVqYgsZuhqX9VkTviuPcfVl\n28o0SsWemqHaZvDgIdPKPCtOTminc3ceilEOdaS+HZ2fpe0c1a5w8AZR3Vaq\ns+prcc6IKTFJOuysCZcCW6hrWw25JZtPrVe76Pn9B2Sq3QLUYgpWwR5BGjlE\nR/IbH9ukRbUUOlmfufDFIT5Xc4x3rspO7srAQP0bSktrqR7MYKRNMM08EczH\np9YR09EPQrUULqoa/sSa9OcMz7bPcTsA1eFg7GSzWhW8CLazKtLIUV1Kl2Sb\nzFM9FX5xZea1d+C0pXwR7/jcgdGW0aufbLd0fKrjw+q46egboNo+lfBQM70m\nB6R6JJvFOudbB+wW0ugUqJ4OvxMyE6B/9xLOKt7t1QTv+L4w6shUr0Ea09E3\nQLWuiSvf17SfvaKz2cM9cDCb8SGhF/OsmuX6hqmqI1K9b/jVE/jy1u1+DwzR\nYpsOmafzt0bPz/763UeYUUem2nYlBuTcxnGwRkn8CAfT0bdEdYx0rzWhSvrh\nB1suhS25vOlbJ5ujuJlXc5ROOj0ckepFGwyfwC/vvt9hm6rOYzN7pXvMdkZt\n63XDMal2r3mknGds8Y8CA3ew6+iboTp+atj/vCDe1aUftFd0LmOqthfMohbS\nYh2wT5DqifBFNKFhC+/++7CrreHW7dYaUl59V39MqslIWzjycZfbCHT0zVDt\npgTk4txRtR+0V3QuXax1spknT+BpJXr1c2lnLbBPh+rp8KPwj8cv/beOXBHc\nIq7r1a2huikck2qXdp1T2qo6+kGoZsuQ8r7s2agTmFiTEarFc1G2ifSD9urK\n5QrWyWaR/RSHp8RSeq3qKY1bfMaugu2o7ue9CB/bZCXVK8PviKu1g3P84yti\ndAtYjeiEqB78uLg6+hzVrtVILFwobBP94srEmpwU1S7POFVKRUMRWvvOrP/t\nsRGwHdUAVirawueNJtff67KFLaoPG/6i3Itu3YAGZdueHNWt72l15EjQJnNU\ncztwD6V02LkyOKQxvSF/T1SPPJW4WUk/qBpyS/EE6B9TLqehQo/TmPGYO80W\nwXZUY/3Uj/76htkWVhlAMXxtHtUJnxCYSaetqEo1PbATLe4OuNm21YiOSTWH\nsy3EgKp1YgMb6esg1KSfoxq5cowhKLS3caZ0p/a3JTb2iTWpUh3fIHIdaK0J\n5XH+utG0Qq6KZLK5gpGp8Qp6lbW1pztFbuQ73qI+2JFSDAd4sMzwMyVxPjbX\nW+VWBwkf3rSK6FpsM5brQUjWuwaTbF0WGMI9mVfX9phUIzC25WJvh786xJwP\nBn56rk5TTQ/VzheN0T959EXp5XBUo+p84pq0Pup78eKF9LMX1UizKhp5FllV\nI8+kB3IuulXTTtQBu0r1oNGJJcpWtahG68PnpHVVtKJbYmHr4b/8HPthtrRl\nwrGcnq9a3bp9Zbs/4XQ+WPVsPzLVQFXNzhGz74enqUZPv977u5kg7V6tTaxJ\ni2p6dleSQXOz2pdqFDFbNFINmKX5xY3fuNoO0qIq2JRPU637gsrWdqhGK8Of\nm7NgyZxd+Yi1lvfIVCOukRNQuT8UW0M1YnOp3hqqxmztKS2aWJMW1WgC7LjR\nTFCNOBYAw2VPy8jj0mwnd9wtIi1yLMnRN0cI0MZ7r3MopQ2tCR9RMt4cT3vT\nBu94kness7zHp1pujJQM5nH12Xsl1SJY7bNNsG43Ua2n2r0YY6PhiXp8TfRh\nRDVHNQIMMqaTnVThEPmxN/BBpEUKNj1Lt47qxYyntvUsagNZpBpNhy9iEdga\nFvls9UCk/dExOq9evFUzVMtLGjF3PnREEksT0jemoIhLNQ7kKGA4I8UhqvXe\nCNGt9F8FjxH7DlY6VTUm1hkasQ7q3Pe0YibSpLUmFMqauNUQo5weWotpQ47b\n3IhIHegiyUgjjB/4tZ9PVzm9e4Asvw/r6vnz5jut26wUggHo6pTKfJb+Fd6r\nKHYPtDj3PZ0mwlfJ90Zkttw+bA8Uapgdyegyc7Gr0Qf+yWE0Q3Uq9X2LDI5U\npwaVVKdOUUn1GiXVqVNUUr1GSXXqFJVUr1FSnTpFJdVrlFSnTlFJ9Rol1alT\nVFK9Rkl16hSVVK9RUp06RT2//0CRvhj4QljKKqlOna72+ipYSpVUp1JbU1Kd\nSm1NSXUqtS29fv1/8fVgD8kkzOwAAAAASUVORK5CYII=\n",
                "white_label_colour_code": "",
                "terms": "Issued subject to National Express Conditions of Carriage, which can be viewed at \r\n<a href=\"https://www.nationalexpress.com/en/help/conditions-of-carriage\" target=\"blank\">https://www.nationalexpress.com/en/help/conditions-of-carriage</a>",
                "flight_number_required": false,
                "cancellation_type": "no_cancellation",
                "booking_fee": 119,
                "cancellation_fee": 0,
                "cancellation_cutoff": null
            }
        },
        {
            "id": "VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0",
            "type": "segments",
            "attributes": {
                "departure_time": "2020-06-15T06:05",
                "arrival_time": "2020-06-15T07:35",
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
                        "id": "VICA",
                        "type": "operating_carriers"
                    }
                },
                "vehicle": {
                    "data": {
                        "id": "BUS-VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0",
                        "type": "vehicles"
                    }
                },
                "segment_passengers": {
                    "data": [
                        {
                            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
                            "type": "segment_passengers"
                        }
                    ]
                }
            }
        },
        {
            "id": "VICA",
            "type": "operating_carriers",
            "attributes": {
                "code": "VICA",
                "trade_name": "Virtual carrier Intercity Europe",
                "legal_name": "Virtual carrier Intercity Europe Limited"
            }
        },
        {
            "id": "PNOS-TEST-TEST-OUTBOUND-1-0",
            "type": "segment_passengers",
            "attributes": {
                "seat_number": null
            },
            "relationships": {
                "passenger": {
                    "data": {
                        "id": "PNOS-TEST-TEST-OUTBOUND-1",
                        "type": "passengers"
                    }
                }
            }
        },
        {
            "id": "BUS-VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0",
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
            "id": "PNOS-TEST-TEST-OUTBOUND-1",
            "type": "passengers",
            "attributes": {
                "first_name": "TEST",
                "last_name": "TEST",
                "serial_code": null,
                "type": "PNOS"
            }
        },
        {
            "id": "VICA-FARE-1",
            "type": "fare_classes",
            "attributes": {
                "code": "FARE-1",
                "name": "Stnadard",
                "iata_category": null,
                "journey_type": "single"
            },
            "relationships": {
                "fare_features": {
                    "data": [
                        {
                            "id": "VICA-ACON",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-TOIL",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-ALRO",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-REFU",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AMEN",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-WIFI",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-MSYS",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-UCHA",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AAFO",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-BLUG",
                            "type": "fare_features"
                        },
                        {
                            "id": "VICA-AAFR",
                            "type": "fare_features"
                        }
                    ]
                }
            }
        },
        {
            "id": "VICA-ACON",
            "type": "fare_features",
            "attributes": {
                "code": "ACON",
                "name": "Air Conditioning",
                "description": "The bus has a cooling ventilation."
            }
        },
        {
            "id": "VICA-TOIL",
            "type": "fare_features",
            "attributes": {
                "code": "TOIL",
                "name": "Toilet",
                "description": "A toilet is available on board."
            }
        },
        {
            "id": "VICA-ALRO",
            "type": "fare_features",
            "attributes": {
                "code": "ALRO",
                "name": "Additional Leg Room",
                "description": "The seat has additional leg space."
            }
        },
        {
            "id": "VICA-REFU",
            "type": "fare_features",
            "attributes": {
                "code": "REFU",
                "name": "Refundable",
                "description": "The ticket is refundable and can be cancelled no less than 72 hours in advance of travel."
            }
        },
        {
            "id": "VICA-AMEN",
            "type": "fare_features",
            "attributes": {
                "code": "AMEN",
                "name": "Amendable",
                "description": "The ticket is amendable. Please proceed via the link https://coach.nationalexpress.com/nxbooking/mmb2ManageMyBooking. A £5 amendment fee is applicable. "
            }
        },
        {
            "id": "VICA-WIFI",
            "type": "fare_features",
            "attributes": {
                "code": "WIFI",
                "name": "Wifi",
                "description": "Free wifi is available on board."
            }
        },
        {
            "id": "VICA-MSYS",
            "type": "fare_features",
            "attributes": {
                "code": "MSYS",
                "name": "Media System",
                "description": "Free-of-charge infotainment system VUER. Travellers can download the VUER app, which allows them to stream films and TV shows on their own phone or tablet."
            }
        },
        {
            "id": "VICA-UCHA",
            "type": "fare_features",
            "attributes": {
                "code": "UCHA",
                "name": "USB charger",
                "description": "USB plug is available at each seat. "
            }
        },
        {
            "id": "VICA-AAFO",
            "type": "fare_features",
            "attributes": {
                "code": "AAFO",
                "name": "Accessible area for bicycles",
                "description": "Bicycles are allowed on board as long as they are designed to fold in half by means of a special link in the main frame and are carried in a proper protective carrying case. A passenger has to pay an extra fee for a bike."
            }
        },
        {
            "id": "VICA-BLUG",
            "type": "fare_features",
            "attributes": {
                "code": "BLUG",
                "name": "Bulky Luggage",
                "description": "Folding pushchairs/buggies will be carried free of charge in the hold, in addition to the standard luggage allowance. Except this National Express will accept bulky luggage for an extra charge."
            }
        },
        {
            "id": "VICA-AAFR",
            "type": "fare_features",
            "attributes": {
                "code": "AAFR",
                "name": "Accessible area for wheelchairs",
                "description": "Fully collapsible wheelchairs and fully collapsible pushchairs may be stowed free of charge. Passenger have to contact bus operator 36 hours before the departure."
            }
        },
        {
            "id": "VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35",
            "type": "connections",
            "attributes": {
                "departure_time": "2020-06-15T06:05",
                "arrival_time": "2020-06-15T07:35"
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
                "marketing_carrier": {
                    "data": {
                        "id": "VICA",
                        "type": "marketing_carriers"
                    }
                },
                "segments": {
                    "data": [
                        {
                            "id": "VICA-GBXVHPET-GBCBGCCE-2020-06-15T06:05-2020-06-15T07:35-0",
                            "type": "segments"
                        }
                    ]
                },
                "fees": {
                    "data": []
                }
            }
        }
    ]
}
```
This endpoint can be used to retrieve all details regarding a specific booking.

### HTTP Request

- Prod: `GET api.distribusion.com/retailers/v4/bookings/:id`
- Demo: `GET api.demo.distribusion.com/retailers/v4/bookings/:id`

### URL Parameters

Parameter           | Mandatory | Description | Example |
------------------- | --------- | ----------- | ----------- |
`booking`           | true      | 22-letter alphanumeric lowercase code, provided on successful booking | O9xf1EqAQfsuNcRdtum-2g |

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
