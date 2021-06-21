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

<details>
  <summary>Table of supported station types</summary>
  
<table>
  <tr>
    <th>Station type name</th>
    <th>Distribusion station type code</th>
  </tr>
  <tr>
    <td>Bus station</td>
    <td>bus_station</td>
  </tr>
  <tr>
    <td>Train station</td>
    <td>train_station</td>
  </tr>
  <tr>
    <td>Ferry station</td>
    <td>ferry_station</td>
  </tr>
  <tr>
    <td>Tram station</td>
    <td>tram_station</td>
  </tr>
</table>
  
</details>

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

<details>
  <summary>Table of supported passenger types</summary>
  
| Passenger type name  |  Distribusion passenger type code |
|---|---|
| Infant | PINT |
| Child | PCIL |
| Youth | PYPO |
| Adult | PNOS |
| Senior | PSOE |
</details>

**! Note:** To start trading, at minimum the Adult passenger type (PNOS) must be integrated. However, it means that not all possible passenger discounts can be applied.

## Fare Classes

The Distribusion API supports multiple fare classes to ensure that complete parity to the carrier’s full offering can be provided. In case a marketing carrier offers various fare classes such as Economy and Business or Sleeper (Leito) and Conventional (Convencional) then they are provided in the API. Each fare class is defined by its price, fare features (amenities and cancellation policy), journey type, ticket validity rules, and passenger group rules.

The [connections#find](https://docs.distribusion.com/#find) endpoint response includes the price for each fare class available per trip under "type": "fares". In case only one fare class is available for a specific trip, only one fare class will be provided.

The [marketing_carriers#show](https://docs.distribusion.com/#show34) endpoint response includes all fare classes that the requested marketing carrier supports. Each fare class is described using the following parameters: 

- "journey_type"
- "fare_features"
- “ticket_validity_rules"
- "passenger_group_rules"

<details>
  <summary>Table of supported journey types</summary>
  
| Journey type name  |  Distribusion journey type code | Description |
|---|---|---|
| Single | single | Travel is supported only one way |
| Open return | open_return | Travel is supported both ways with inbound trip having an open date  |
| Fixed return| fixed_return | Travel is supported both ways with inbound trip having an exact travel date |
</details>

<details>
  <summary>Table of ticket validity rules parameters</summary>
  
| Ticket validity parameter  |  Possible values | Description |
|---|---|---|
| Type | outbound; inbound | The rule for outbound or outbound trip  |
| Use type | once; multiple | Ticket can be used for a single or the multiple trips |
| Reference time| departure_time; beginning of departure day; purchase_time; beginning_of_purchase_day; outbound_voucher_redemption; inbound_voucher_redemption| Defined time from which ticket validity starts |
| Offset | minutes; hours; days; months | |
| Duration | minutes; hours; days; months |  |
</details>

## Return Trip

The Distribusion API supports single, open return and fixed return trips.

A single trip is defined as a one-way trip between a departure and arrival station, on a specific date.

An open return trip is defined as a return trip between a departure and arrival station with a specific date for the outbound trip and no fixed date for the inbound trip. Marketing carriers that support open return trips also define the timeframe within which return trip is valid. This information is provided in the marketing_carriers/show endpoint under fare classes -> open return fare class -> ticket validity.

A fixed return trip is defined as a return trip between a departure and arrival station with a specific date of both the outbound and the inbound trip. 

In case a marketing carrier does not support return trips in its API or system, the Distribusion API still allows you to book a fixed return ticket by placing and combining two single trip bookings in the carrier’s system.

## Currencies

The Distribusion API supports the majority of global currencies, including EUR, USD, GBP SEK, MYR, PLN, CHF, BRL and CAD currencies.

<details>
  <summary>Table of supported currencies</summary>
  
|Distribusion currency code| Currency name|
|--- |--- |
|AED|United Arab Emirates Dirham|
|AFN|Afghan Afghani|
|ALL|Albanian Lek|
|AMD|Armenian Dram|
|ANG|Netherlands Antillean Guilder|
|AOA|Angolan Kwanza|
|ARS|Argentine Peso|
|AUD|Australian Dollar|
|AWG|Aruban Florin|
|AZN|Azerbaijani Manat|
|BAM|Bosnia-Herzegovina Convertible Mark|
|BBD|Barbadian Dollar|
|BDT|Bangladeshi Taka|
|BGN|Bulgarian Lev|
|BHD|Bahraini Dinar|
|BIF|Burundian Franc|
|BMD|Bermudan Dollar|
|BND|Brunei Dollar|
|BOB|Bolivian Boliviano|
|BRL|Brazilian Real|
|BSD|Bahamian Dollar|
|BTC|Bitcoin|
|BTN|Bhutanese Ngultrum|
|BWP|Botswanan Pula|
|BYN|Belarusian Ruble|
|BYR|Belarusian Ruble|
|BZD|Belize Dollar|
|CAD|Canadian Dollar|
|CDF|Congolese Franc|
|CHF|Swiss Franc|
|CLF|Chilean Unit of Account (UF)|
|CLP|Chilean Peso|
|CNY|Chinese Yuan|
|COP|Colombian Peso|
|CRC|Costa Rican Colón|
|CUC|Cuban Convertible Peso|
|CUP|Cuban Peso|
|CVE|Cape Verdean Escudo|
|CZK|Czech Republic Koruna|
|DJF|Djiboutian Franc|
|DKK|Danish Krone|
|DOP|Dominican Peso|
|DZD|Algerian Dinar|
|EEK|Estonian Kroon|
|EGP|Egyptian Pound|
|ERN|Eritrean Nakfa|
|ETB|Ethiopian Birr|
|EUR|Euro|
|FJD|Fijian Dollar|
|FKP|Falkland Islands Pound|
|GBP|British Pound Sterling|
|GEL|Georgian Lari|
|GGP|Guernsey Pound|
|GHS|Ghanaian Cedi|
|GIP|Gibraltar Pound|
|GMD|Gambian Dalasi|
|GNF|Guinean Franc|
|GTQ|Guatemalan Quetzal|
|GYD|Guyanaese Dollar|
|HKD|Hong Kong Dollar|
|HNL|Honduran Lempira|
|HRK|Croatian Kuna|
|HTG|Haitian Gourde|
|HUF|Hungarian Forint|
|IDR|Indonesian Rupiah|
|ILS|Israeli New Sheqel|
|IMP|Manx pound|
|INR|Indian Rupee|
|IQD|Iraqi Dinar|
|IRR|Iranian Rial|
|ISK|Icelandic Króna|
|JEP|Jersey Pound|
|JMD|Jamaican Dollar|
|JOD|Jordanian Dinar|
|JPY|Japanese Yen|
|KES|Kenyan Shilling|
|KGS|Kyrgystani Som|
|KHR|Cambodian Riel|
|KMF|Comorian Franc|
|KPW|North Korean Won|
|KRW|South Korean Won|
|KWD|Kuwaiti Dinar|
|KYD|Cayman Islands Dollar|
|KZT|Kazakhstani Tenge|
|LAK|Laotian Kip|
|LBP|Lebanese Pound|
|LKR|Sri Lankan Rupee|
|LRD|Liberian Dollar|
|LSL|Lesotho Loti|
|LTL|Lithuanian Litas|
|LVL|Latvian Lats|
|LYD|Libyan Dinar|
|MAD|Moroccan Dirham|
|MDL|Moldovan Leu|
|MGA|Malagasy Ariary|
|MKD|Macedonian Denar|
|MMK|Myanma Kyat|
|MNT|Mongolian Tugrik|
|MOP|Macanese Pataca|
|MRO|Mauritanian Ouguiya|
|MUR|Mauritian Rupee|
|MVR|Maldivian Rufiyaa|
|MWK|Malawian Kwacha|
|MXN|Mexican Peso|
|MYR|Malaysian Ringgit|
|MZN|Mozambican Metical|
|NAD|Namibian Dollar|
|NGN|Nigerian Naira|
|NIO|Nicaraguan Córdoba|
|NOK|Norwegian Krone|
|NPR|Nepalese Rupee|
|NZD|New Zealand Dollar|
|OMR|Omani Rial|
|PAB|Panamanian Balboa|
|PEN|Peruvian Nuevo Sol|
|PGK|Papua New Guinean Kina|
|PHP|Philippine Peso|
|PKR|Pakistani Rupee|
|PLN|Polish Zloty|
|PYG|Paraguayan Guarani|
|QAR|Qatari Rial|
|RON|Romanian Leu|
|RSD|Serbian Dinar|
|RUB|Russian Ruble|
|RWF|Rwandan Franc|
|SAR|Saudi Riyal|
|SBD|Solomon Islands Dollar|
|SCR|Seychellois Rupee|
|SDG|Sudanese Pound|
|SEK|Swedish Krona|
|SGD|Singapore Dollar|
|SHP|Saint Helena Pound|
|SLL|Sierra Leonean Leone|
|SOS|Somali Shilling|
|SRD|Surinamese Dollar|
|STD|São Tomé and Príncipe Dobra|
|SVC|Salvadoran Colón|
|SYP|Syrian Pound|
|SZL|Swazi Lilangeni|
|THB|Thai Baht|
|TJS|Tajikistani Somoni|
|TMT|Turkmenistani Manat|
|TND|Tunisian Dinar|
|TOP|Tongan Paʻanga|
|TRY|Turkish Lira|
|TTD|Trinidad and Tobago Dollar|
|TWD|New Taiwan Dollar|
|TZS|Tanzanian Shilling|
|UAH|Ukrainian Hryvnia|
|UGX|Ugandan Shilling|
|USD|United States Dollar|
|UYU|Uruguayan Peso|
|UZS|Uzbekistan Som|
|VEF|Venezuelan Bolívar Fuerte|
|VND|Vietnamese Dong|
|VUV|Vanuatu Vatu|
|WST|Samoan Tala|
|XAF|CFA Franc BEAC|
|XAG|Silver (troy ounce)|
|XAU|Gold (troy ounce)|
|XCD|East Caribbean Dollar|
|XDR|Special Drawing Rights|
|XOF|CFA Franc BCEAO|
|XPF|CFP Franc|
|YER|Yemeni Rial|
|ZAR|South African Rand|
|ZMK|Zambian Kwacha (pre-2013)|
|ZMW|Zambian Kwacha|
|ZWL|Zimbabwean Dollar|
</details>

## Locales

Currently Distribusion API offers translation to various languages for 

- station name and description
- amenities
- cancellation policy

<details>
  <summary>Table of supported languages</summary>
  
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
</details>

## Real and Virtual carriers

Distribusion demo environment offers both real and virtual carriers to intehrate against. As marketing carriers do not always have reliable and stable testing environments to integrate and test the booking flow, Distribusion has introduced virtual carriers that simulate the capabilities & characteristics of marketing carriers and can be used for onboarding purposes.

<details>
  <summary>Table of virtual carriers</summary>
  
|Carrier code|Carrier name|Departure station|Arrival Station|
|---|---|---|---|
|VICA|Virtual Carrier European intercity bus|DEBERCBS|FRPARPGB|
|VCBA|Virtual Carrier Brazilian intercity bus|BRSAOSPB|BRLZSRDJ|
|VCAI|Virtual Carrier Airport shuttle|GBLONLTH|GBLONLHB|
|VCFE|Virtual Carrier Ferry|GBCAICHA|GBPMEPHA|
</details>

## Postman

Here’s a collection of sample queries in Postman that’ll help you get up to speed with our API faster.

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/4b85e2eca75d5ec340dc)
