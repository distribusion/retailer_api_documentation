# Introduction

![alt text](/images/bus-picture.png)

You can use our API to access Distribusion content and book bus rides. We have put a lot of thought into making it as easy as possible to integrate with us. Have fun and share your feedback with us!

**When integrating and testing our API, please use the following URL:**

[https://api-demo.distribusion.com/retailers/v4](https://api-demo.distribusion.com/retailers/v4)

## Deprecated API

[Retailer API v2](https://api-demo.distribusion.com/reseller/v2/docs)

# Getting Started

When performing a booking through Distribusion API, there are multiple steps that are required. This section is dedicated to describe the standard flow, necessary for:

- Searching for connections
- Retrieving availability and prices
- Conducting bookings
- Retrieving tickets
- Retrieving cancellation conditions
- Performing cancellations

![alt text](/images/API_V4.0_workflow.png)

## Integration Workflow

1. _(1-4 weeks)_ **Integrate our API**, using this documentation. 
If you have any questions, do not hesitate to write us at [partner@distribusion.com](mailto:partner@distribusion.com)

2. _(Up to 1 week)_ In order to get access to our production environment, we will first test the integration logic (from search to booking, and if implemented, cancellations) and the data mapping logic (stations associations to cities and airports). For this, we will require **access to your demo environment**, with all the necessary information to perform bookings (test payment credentials, etc). 

3. _(Up to 2 week after launch)_ Once this is validated, we will provide you the production API key for you to start mapping stations on the production environment. A few weeks after your launch, we will have our customer experience team going through your integration and provide a **full report to improve data mapping and overall L/B ratio**. 

4. Later on, our team will get in touch with you in order to support your processes related to L/B ratio optimisation and overall customer journey: from searching to booking and after sales services. 

## Station Coding

Distribusion aims to standardize the station codes across the bus industry, the same way IATA did in the flight industry. Our station codes are designed to represent specific locations using a **set of 8 capital letters**. The construction of such code follow a simple logic:

- The first two letters represent the country
- The next three, the city in which the station is located
- The last three letters represent a more precise location

###Example

**GB**(Great Britain) + **LON**(London) + **VSA**(Victoria station) = **GBLONVSA**

## Importing Master Data

The first step in the booking process, is collecting the stations and marketing carriers available through our API. To do so, we provide the [#stations](https://docs.distribusion.com/#stations7) and [#marketing_carriers](https://docs.distribusion.com/#marketing-carriers) endpoints. To retrieve station codes, simply send a `GET` request to our [#stations](https://docs.distribusion.com/#stations7) endpoint, which will send you a list of the stations, with station codes and additional information concerning the stations (address, coordinates, associated city, etc). The [#marketing_carriers](https://docs.distribusion.com/#marketing-carriers) endpoint provides you with additional information related to a specific marketing carrier; such as logos, contact details, cancellation policy, as well as the terms and conditions.

Currently our content can be fetch in English, French, Italian, Spanish, Dutch, Swedish, Bulgarian and German, with the following locale values: en, fr, it, es, nl, sv, bg and de.

## Map Stations to Cities and Areas

```json
{
    "id": "ESBCNBFT",
    "type": "stations",
    "attributes": {
        "code": "ESBCNBFT",
        "name": "Barcelona Airport T1",
        "description": "The stop is located in front of Terminal 1. ",
        "street_and_number": null,
        "zip_code": null,
        "longitude": 2.084151,
        "latitude": 41.298291,
        "time_zone": "Europe/Madrid"
    },
    "relationships": {
        "city": {
            "data": {
                "id": "ESBCN",
                "type": "cities"
            }
        },
        "area": {
            "data": {
                "id": "ESBCNBA",
                "type": "areas"
            }
        }
    }
},
{
    "id": "ESBCNBFU",
    "type": "stations",
    "attributes": {
        "code": "ESBCNBFU",
        "name": "Barcelona Airport T2",
        "description": "The stop is located in front of Terminal 2. ",
        "street_and_number": "El Prat de Llobregat, Barcelona",
        "zip_code": "08820",
        "longitude": 2.083273,
        "latitude": 41.297614,
        "time_zone": "Europe/Madrid"
    },
    "relationships": {
        "city": {
            "data": {
                "id": "ESBCN",
                "type": "cities"
            }
        },
        "area": {
            "data": {
                "id": "ESBCNBA",
                "type": "areas"
            }
        }
    }
}
```

Our API maps stations to cities, allowing you to easily groupe stations together when they belong to the same city. This is to facilite city to city search.
We also recently introduced the notion of areas. An area is smaller than a city, represent multiple stations, and can only be attached to one city.

In the example bellow, Barcelona Airport is mapped with **"Barcelona Airport T1"** and **"Barcelona Airport T2"** stations, while the area and the stations are all mapped to Barcelona city. Bellow is an extract of our [#stations](https://docs.distribusion.com/#stations7) endpoint response:

Code description:

- **ESBCN**: Barcelona City
- **ESBCNBA**: Barcelona Airport

For example, while searching from Barcelona Airport to Barcelona City, you could perform the following request:

[https://api-demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=ESBCNBFT&departure_stations[]=ESBCNBFU&arrival_stations[]=ESBCNNOR&arrival_stations[]=ESBCNZOB&arrival_stations[]=ESBCNEDA&arrival_stations[]=ESBCNPCA&arrival_stations[]=ESBCNSUR&arrival_stations[]=ESBCNPES&arrival_stations[]=ESBCNGVU&arrival_stations[]=ESBCNPDU&arrival_stations[]=ESBCNBFT&arrival_stations[]=ESBCNBFU&departure_date=2019-03-29&pax=1&currency=EUR&locale=en](https://api-demo.distribusion.com/retailers/v4/connections/find?departure_stations[]=ESBCNBFT&departure_stations[]=ESBCNBFU&arrival_stations[]=ESBCNNOR&arrival_stations[]=ESBCNZOB&arrival_stations[]=ESBCNEDA&arrival_stations[]=ESBCNPCA&arrival_stations[]=ESBCNSUR&arrival_stations[]=ESBCNPES&arrival_stations[]=ESBCNGVU&arrival_stations[]=ESBCNPDU&arrival_stations[]=ESBCNBFT&arrival_stations[]=ESBCNBFU&departure_date=2019-03-29&pax=1&currency=EUR&locale=en)

## Find Connections

After retrieving station codes, you can now start searching for connections by sending us `GET` requests to [connections#find](https://docs.distribusion.com/#find). We do not provide pairs of stations in order to allow our engine to learn from the consumers demand. By doing so, if a specific ride is highly requested but currently unavailable, you can be assured that it will be soon delivered through our API.

<aside class="success">
Remember — in order to query information from our API, you need to get your own API key by submitting a request to <a href='mailto:partner@distribusion.com'>partner@distribusion.com</a>!
</aside>

## Passenger types

We also thrive to standardise passenger (ticket) types across multiple carriers. While booking through Distribusion API, you can choose the use the specific passenger types of the operator, or use Distribusion own standardise definition of an infant, child and adult. 

## Fare Classes

Operators are often providing different service class and features to their consumers. You will find the possibility to select each fare based on the operator offer. Fares classes are covering a large amount of features, such as 1st/2nd class, extra leg seats, drinks, cancellation policies, validity period, etc.


## Confirm Price and Availability

As [connections#find](https://docs.distribusion.com/#find) provides the cheapest adult price, it is some time necessary to confirm the price of specific passenger types by calling [connections#vacancy](https://docs.distribusion.com/#vacancy). This call is also recommended prior to performing a booking, in order to ensure the prices and availability are still up to date.

## Create an Order or a Booking

After gathering information on a specific connection and the passenger information, you can now send a booking request towards Distribusion's API on [bookings#create](https://docs.distribusion.com/#create). You can also perform an order, and later retrieve it status by calling our [orders#create](https://docs.distribusion.com/#create-orders) endpoint. The main difference between a booking and an order is the workflow. A booking is synchronous, while an order is asynchronous. In case any information is missing, the API will recognise it and inform you accordingly.

Note: we currently support *EUR*, *USD*, *GBP* *SEK*, *MYR*, *PLN* and *CHF* currencies. More can be enabled on demand.

## Manage your Bookings

Once you start making bookings, you will certainly want to monitor them and sometime, if need be, cancel them. For this, we created a new feature, allowing you to retrieve a full list of your bookings: [bookings#index](https://docs.distribusion.com/#index). Once you have this list, you can call [bookings#show](https://docs.distribusion.com/#show) for more details on a specific booking, or call [cancellations#conditions](https://docs.distribusion.com/#conditions) and [cancellations#create](https://docs.distribusion.com/#create27) to cancel a booking.

## Postman

Here’s a collection of sample queries in Postman that’ll help you get up to speed with our API faster.

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/4b85e2eca75d5ec340dc)
