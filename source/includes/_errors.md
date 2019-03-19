# Errors

We have developed a set of error codes, destined to provide you with helpful information when integrating Distribusion API. We categorised them into three main types:

- `400` - [Client errors](https://api-demo.distribusion.com/retailers/v3/docs/#client-errors)

- `500` - [Server errors](https://api-demo.distribusion.com/retailers/v3/docs/#server-errors)

- `600` - [Remote server errors](https://api-demo.distribusion.com/retailers/v3/docs/#remote-server-errors).



## Client errors

Error Code  | Meaning
----------- | -------
400.000.000 | The provided json is invalid
400.100.000 | Request invalid
400.101.002 | Departure stations are invalid or missing
400.101.003 | Arrival stations are invalid or missing
400.101.004 | Departure station is invalid or missing
400.101.005 | Arrival station is invalid or missing
400.101.006 | Departure date is invalid or missing
400.101.007 | Departure time is invalid or missing
400.101.008 | Arrival time is invalid or missing
400.101.009 | PAX is invalid or missing
400.101.010 | Retailer partner number is invalid or missing
400.101.011 | Payment method is invalid or missing
400.101.012 | Payment token is invalid or missing
400.101.013 | Payer ID is invalid or missing
400.101.014 | Locale is invalid or missing
400.101.015 | Currency is invalid or missing
400.101.016 | Operating carrier is invalid or missing
400.101.017 | Distribusion booking number is invalid or missing
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
400.101.039 | Marketing carrier booking number is invalid or missing
400.101.040 | Marketing carrier is invalid or missing
400.101.041 | Booking is invalid or missing
400.101.042 | Execute payment is invalid or missing
400.101.044 | Departure date is in the past
400.101.049 | Departure time must be before arrival time
400.101.050 | Extras are invalid or missing
400.101.051 | Passengers are invalid or missing
400.101.052 | Discount code is invalid or missing
400.101.053 | Bus Number is missing or invalid
400.102.040 | Unknown marketing carrier
400.200.001 | API key is invalid or missing
400.500.041 | Cancellation is not allowed
400.502.041 | Booking already cancelled
400.800.000 | Not Found
400.800.040 | Marketing carrier not found
400.800.041 | Booking not found
429.000.000 | Too Many Requests

Error Code  | Meaning
----------- | -------
400.501.000 | Not implemented at Distribusion on connections#find
400.501.001 | Not implemented on connections#redirect_to_checkout
400.501.002 | Not implemented at Distribusion on connections#vacancy
400.501.003 | Not implemented at Distribusion on bookings#create
400.501.004 | Not implemented at Distribusion on bookings#form_schema
400.501.005 | Not implemented at Distribusion on bookings#show
400.501.006 | Not implemented at Distribusion on bookings#tickets
400.501.007 | Not implemented at Distribusion on cancellations#conditions
400.501.008 | Not implemented at Distribusion on cancellations#create
400.501.009 | Not implemented at Distribusion on marketing_carriers#index
400.501.010 | Not implemented at Distribusion on marketing_carriers#show
400.501.011 | Not implemented at Distribusion on stations#index


## Server errors

Error Code  | Meaning
----------- | -------
500.000.000 | Internal Server Error
500.100.000 | Service Unavailable
500.500.017 | Unique distribusion booking number cannot be generated
500.500.041 | Unique booking id cannot be generated
500.501.000 | Booking not vacant
500.502.026 | Booking price increased
500.502.026 | Booking price decreased
500.600.041 | Unique cancellation id cannot be generated

## Remote server errors

Error Code  | Meaning
----------- | -------
600.000.000 | Marketing Carrier remote system unavailable
600.100.000 | Marketing Carrier remote system time-out
600.400.000 | Marketing Carrier remote request invalid
600.500.000 | Marketing Carrier remote connection unknown error
600.600.000 | Marketing Carrier remote vacancy unknown error
600.700.000 | Marketing Carrier remote booking failed error (general)
600.701.000 | Marketing Carrier remote booking capacity error
600.702.000 | Marketing Carrier remote booking price change error
600.703.000 | Marketing Carrier remote booking tariff unavailable error
600.704.000 | Marketing Carrier remote booking already cancelled error
600.705.000 | Marketing Carrier remote booking vacancy unknown error
600.900.000 | Response received from a remote server technically cannot be processed
600.901.000 | Response from remote server logically cannot be processed (is invalid)
600.703.026 | Booking price unknown

