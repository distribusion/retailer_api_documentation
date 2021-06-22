# Introduction

![alt text](/images/bus-picture.png)

You can use our API to access Distribusion content and book ground transportation rides. We have put a lot of thought into making it as easy as possible to integrate with us. Have fun and share your feedback with us!

**When integrating and testing our API, please use the following URL:**

[https://api-demo.distribusion.com/retailers/v4](https://api-demo.distribusion.com/retailers/v4)

## Deprecated API

[Retailer API v2](https://api-demo.distribusion.com/reseller/v2/docs)

# Key Concepts

## Authentication

Distribusion uses API keys to enable access to the API content and perform requests. Distribusion expects for the API key to be included in all API requests to the server in the header of the request. Moreover, each retail partner is assigned with a unique retailer_partner_number that is expected to be passed in the body of each [bookings#create](https://docs.distribusion.com/#create) or [orders#create](https://docs.distribusion.com/#create-orders) request.


## Stations, Cities, and Areas

The [#stations](https://docs.distribusion.com/#stations7) endpoint returns all the stations available in the Distribusion API, as well as detailed information for each, including: 
- type
- name
- address
- description
- latitude/longitude
- time zone
- city
- area

Table of supported station types
  
|Station type name|Distribusion station type code|
|--- |--- |
|Bus station|bus_station|
|Train station|train_station|
|Ferry station|ferry_station|
|Tram station|tram_station|

Distribusion aims to standardize station codes across the entire ground transportation industry, the same way IATA does so in the flight industry. Our station codes are designed to represent specific locations using a set of 8 capital letters. The construction of such code follow a simple logic:

- The first two letters represent the country in which the station is located
- The next three represent the city in which the station is located
- The last three letters more precisely represent the location of the station

**Example**

**GB**(Great Britain) + **LON**(London) + **VSA**(Victoria station) = **GBLONVSA**

Besides city grouping, there is also an area grouping that unites all the stations that belong to one airport. The area has a 7 letter code

**Example**

Area: London Heathrow Airport (GBLONLA)
Stations: 
London Heathrow Airport Terminal 3 (GBLONAHT)
London Heathrow Airport Terminal 4 (GBLONHAI)
London Heathrow Airport Terminal 5 (GBLONHAR)

**!Note:** as Distribusion updates stations weekly, in order to always have the full content it is recommended to update stations on a weekly basis as well.

## Marketing Carriers

In order to retrieve all marketing carriers available for your API credentials, please use the [marketing_carriers#index](https://docs.distribusion.com/#index33) endpoint. After receiving the full list of offered marketing carriers, you can collect the specific information for each carrier through [marketing_carriers#show](https://docs.distribusion.com/#show34) endpoint. It includes the basic information required for the initial integration of a carrier such as its logo, terms and conditions, vehicle type, operating status, customer support contacts, etc.

## Passengers

The Distribusion API offers 5 various passenger types: 
- Infant
- Child
- Youth
- Adult
- Senior

The existence and age range for each passenger type is dependent upon the respective marketing carrier’s policies. While keeping the age range carrier-specific, Distribusion has standardised passenger type codes across all the suppliers.

Table of supported passenger types
  
| Passenger type name  |  Distribusion passenger type code |
|---|---|
| Infant | PINT |
| Child | PCIL |
| Youth | PYPO |
| Adult | PNOS |
| Senior | PSOE |

**! Note:** To start trading, at minimum the Adult passenger type (PNOS) must be integrated. However, it means that not all possible passenger discounts can be applied.

## Fare Classes

The Distribusion API supports multiple fare classes to ensure that complete parity to the carrier’s full offering can be provided. In case a marketing carrier offers various fare classes such as Economy and Business or Sleeper (Leito) and Conventional (Convencional) then they are provided in the API. Each fare class is defined by its price, fare features (amenities and cancellation policy), journey type, ticket validity rules, and passenger group rules.

The [connections#find](https://docs.distribusion.com/#find) endpoint response includes the price for each fare class available per trip under "type": "fares". In case only one fare class is available for a specific trip, only one fare class will be provided.

The [marketing_carriers#show](https://docs.distribusion.com/#show34) endpoint response includes all fare classes that the requested marketing carrier supports. Each fare class is described using the following parameters: 

- "journey_type"
- "fare_features"
- “ticket_validity_rules"
- "passenger_group_rules"

Table of supported journey types
  
| Journey type name  |  Distribusion journey type code | Description |
|---|---|---|
| Single | single | Travel is supported only one way |
| Open return | open_return | Travel is supported both ways with inbound trip having an open date  |
| Fixed return| fixed_return | Travel is supported both ways with inbound trip having an exact travel date |

Table of ticket validity rules parameters
  
| Ticket validity parameter  |  Possible values | Description |
|---|---|---|
| Type | outbound; inbound | The rule for outbound or outbound trip  |
| Use type | once; multiple | Ticket can be used for a single or the multiple trips |
| Reference time| departure_time; beginning of departure day; purchase_time; beginning_of_purchase_day; outbound_voucher_redemption; inbound_voucher_redemption| Defined time from which ticket validity starts |
| Offset | minutes; hours; days; months | |
| Duration | minutes; hours; days; months |  |

## Return Trip

The Distribusion API supports single, open return and fixed return trips.

A single trip is defined as a one-way trip between a departure and arrival station, on a specific date.

An open return trip is defined as a return trip between a departure and arrival station with a specific date for the outbound trip and no fixed date for the inbound trip. Marketing carriers that support open return trips also define the timeframe within which return trip is valid. This information is provided in the marketing_carriers/show endpoint under fare classes -> open return fare class -> ticket validity.

A fixed return trip is defined as a return trip between a departure and arrival station with a specific date of both the outbound and the inbound trip. 

In case a marketing carrier does not support return trips in its API or system, the Distribusion API still allows you to book a fixed return ticket by placing and combining two single trip bookings in the carrier’s system.

## Currencies

The Distribusion API supports the majority of global currencies, including EUR, USD, GBP SEK, MYR, PLN, CHF, BRL and CAD currencies.

## Locales

Currently Distribusion API offers translation to various languages for 

- station name and description
- amenities
- cancellation policy

Table of supported languages
  
| Distribusion locale code  | Locale name|
|---|---|
|de|German|
|en|English|
|bg|Bulgarian|
|cs|Czech|
|da|Danish|
|es|Spanish|
|fr|French|
|hr|Croatian|
|it|Italian|
|nl|Dutch|
|pl|Polish|
|pt|Portuguese|        
|ru|Russian|
|sv|Swedish|
|tr|Turkish|
|zh|Chinese|

## Real and Virtual carriers

Distribusion demo environment offers both real and virtual carriers to intehrate against. As marketing carriers do not always have reliable and stable testing environments to integrate and test the booking flow, Distribusion has introduced virtual carriers that simulate the capabilities & characteristics of marketing carriers and can be used for onboarding purposes.

Table of virtual carriers
  
|Carrier code|Carrier name|Departure station|Arrival Station|
|---|---|---|---|
|VICA|Virtual Carrier European intercity bus|DEBERCBS|FRPARPGB|
|VCBA|Virtual Carrier Brazilian intercity bus|BRSAOSPB|BRLZSRDJ|
|VCAI|Virtual Carrier Airport shuttle|GBLONLTH|GBLONLHB|
|VCFE|Virtual Carrier Ferry|GBCAICHA|GBPMEPHA|

## Postman

Here’s a collection of sample queries in Postman that’ll help you get up to speed with our API faster.

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/4b85e2eca75d5ec340dc)
