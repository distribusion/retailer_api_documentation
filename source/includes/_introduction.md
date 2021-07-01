# Introduction

![alt text](/images/bus-picture.png)

You can use our API to access Distribusion content and book ground transportation rides. We have put a lot of thought into making it as easy as possible to integrate with us. Have fun and share your feedback with us!

**When integrating and testing our API, please use the following URL:**

[https://api.demo.distribusion.com/retailers/v4](https://api.demo.distribusion.com/retailers/v4)

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
  
<table>
   <thead>
      <tr>
         <th>Passenger type name</th>
         <th>Distribusion passenger type code</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>Infant</td>
         <td>PINT</td>
      </tr>
      <tr>
         <td>Child</td>
         <td>PCIL</td>
      </tr>
      <tr>
         <td>Youth</td>
         <td>PYPO</td>
      </tr>
      <tr>
         <td>Adult</td>
         <td>PNOS</td>
      </tr>
      <tr>
         <td>Senior</td>
         <td>PSOE</td>
      </tr>
   </tbody>
</table>
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
  
<table>
   <thead>
      <tr>
         <th>Journey type name</th>
         <th>Distribusion journey type code</th>
         <th>Description</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>Single</td>
         <td>single</td>
         <td>Travel is supported only one way</td>
      </tr>
      <tr>
         <td>Open return</td>
         <td>open_return</td>
         <td>Travel is supported both ways with inbound trip having an open date</td>
      </tr>
      <tr>
         <td>Fixed return</td>
         <td>fixed_return</td>
         <td>Travel is supported both ways with inbound trip having an exact travel date</td>
      </tr>
   </tbody>
</table>
</details>

<details>
  <summary>Table of ticket validity rules parameters</summary>
  
<table>
   <thead>
      <tr>
         <th>Ticket validity parameter</th>
         <th>Possible values</th>
         <th>Description</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>Type</td>
         <td>outbound; inbound</td>
         <td>The rule for outbound or outbound trip</td>
      </tr>
      <tr>
         <td>Use type</td>
         <td>once; multiple</td>
         <td>Ticket can be used for a single or the multiple trips</td>
      </tr>
      <tr>
         <td>Reference time</td>
         <td>departure_time; beginning of departure day; purchase_time; beginning_of_purchase_day; outbound_voucher_redemption; inbound_voucher_redemption</td>
         <td>Defined time from which ticket validity starts</td>
      </tr>
      <tr>
         <td>Offset</td>
         <td>minutes; hours; days; months</td>
         <td>Buffer between reference time and start of validity period</td>
      </tr>
      <tr>
         <td>Duration</td>
         <td>minutes; hours; days; months</td>
         <td>Time window of ticket validity</td>
      </tr>
   </tbody>
</table>
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
  
<table>
   <thead>
      <tr>
         <th>Distribusion currency code</th>
         <th>Currency name</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>AED</td>
         <td>United Arab Emirates Dirham</td>
      </tr>
      <tr>
         <td>AFN</td>
         <td>Afghan Afghani</td>
      </tr>
      <tr>
         <td>ALL</td>
         <td>Albanian Lek</td>
      </tr>
      <tr>
         <td>AMD</td>
         <td>Armenian Dram</td>
      </tr>
      <tr>
         <td>ANG</td>
         <td>Netherlands Antillean Guilder</td>
      </tr>
      <tr>
         <td>AOA</td>
         <td>Angolan Kwanza</td>
      </tr>
      <tr>
         <td>ARS</td>
         <td>Argentine Peso</td>
      </tr>
      <tr>
         <td>AUD</td>
         <td>Australian Dollar</td>
      </tr>
      <tr>
         <td>AWG</td>
         <td>Aruban Florin</td>
      </tr>
      <tr>
         <td>AZN</td>
         <td>Azerbaijani Manat</td>
      </tr>
      <tr>
         <td>BAM</td>
         <td>Bosnia-Herzegovina Convertible Mark</td>
      </tr>
      <tr>
         <td>BBD</td>
         <td>Barbadian Dollar</td>
      </tr>
      <tr>
         <td>BDT</td>
         <td>Bangladeshi Taka</td>
      </tr>
      <tr>
         <td>BGN</td>
         <td>Bulgarian Lev</td>
      </tr>
      <tr>
         <td>BHD</td>
         <td>Bahraini Dinar</td>
      </tr>
      <tr>
         <td>BIF</td>
         <td>Burundian Franc</td>
      </tr>
      <tr>
         <td>BMD</td>
         <td>Bermudan Dollar</td>
      </tr>
      <tr>
         <td>BND</td>
         <td>Brunei Dollar</td>
      </tr>
      <tr>
         <td>BOB</td>
         <td>Bolivian Boliviano</td>
      </tr>
      <tr>
         <td>BRL</td>
         <td>Brazilian Real</td>
      </tr>
      <tr>
         <td>BSD</td>
         <td>Bahamian Dollar</td>
      </tr>
      <tr>
         <td>BTC</td>
         <td>Bitcoin</td>
      </tr>
      <tr>
         <td>BTN</td>
         <td>Bhutanese Ngultrum</td>
      </tr>
      <tr>
         <td>BWP</td>
         <td>Botswanan Pula</td>
      </tr>
      <tr>
         <td>BYN</td>
         <td>Belarusian Ruble</td>
      </tr>
      <tr>
         <td>BYR</td>
         <td>Belarusian Ruble</td>
      </tr>
      <tr>
         <td>BZD</td>
         <td>Belize Dollar</td>
      </tr>
      <tr>
         <td>CAD</td>
         <td>Canadian Dollar</td>
      </tr>
      <tr>
         <td>CDF</td>
         <td>Congolese Franc</td>
      </tr>
      <tr>
         <td>CHF</td>
         <td>Swiss Franc</td>
      </tr>
      <tr>
         <td>CLF</td>
         <td>Chilean Unit of Account (UF)</td>
      </tr>
      <tr>
         <td>CLP</td>
         <td>Chilean Peso</td>
      </tr>
      <tr>
         <td>CNY</td>
         <td>Chinese Yuan</td>
      </tr>
      <tr>
         <td>COP</td>
         <td>Colombian Peso</td>
      </tr>
      <tr>
         <td>CRC</td>
         <td>Costa Rican Colón</td>
      </tr>
      <tr>
         <td>CUC</td>
         <td>Cuban Convertible Peso</td>
      </tr>
      <tr>
         <td>CUP</td>
         <td>Cuban Peso</td>
      </tr>
      <tr>
         <td>CVE</td>
         <td>Cape Verdean Escudo</td>
      </tr>
      <tr>
         <td>CZK</td>
         <td>Czech Republic Koruna</td>
      </tr>
      <tr>
         <td>DJF</td>
         <td>Djiboutian Franc</td>
      </tr>
      <tr>
         <td>DKK</td>
         <td>Danish Krone</td>
      </tr>
      <tr>
         <td>DOP</td>
         <td>Dominican Peso</td>
      </tr>
      <tr>
         <td>DZD</td>
         <td>Algerian Dinar</td>
      </tr>
      <tr>
         <td>EEK</td>
         <td>Estonian Kroon</td>
      </tr>
      <tr>
         <td>EGP</td>
         <td>Egyptian Pound</td>
      </tr>
      <tr>
         <td>ERN</td>
         <td>Eritrean Nakfa</td>
      </tr>
      <tr>
         <td>ETB</td>
         <td>Ethiopian Birr</td>
      </tr>
      <tr>
         <td>EUR</td>
         <td>Euro</td>
      </tr>
      <tr>
         <td>FJD</td>
         <td>Fijian Dollar</td>
      </tr>
      <tr>
         <td>FKP</td>
         <td>Falkland Islands Pound</td>
      </tr>
      <tr>
         <td>GBP</td>
         <td>British Pound Sterling</td>
      </tr>
      <tr>
         <td>GEL</td>
         <td>Georgian Lari</td>
      </tr>
      <tr>
         <td>GGP</td>
         <td>Guernsey Pound</td>
      </tr>
      <tr>
         <td>GHS</td>
         <td>Ghanaian Cedi</td>
      </tr>
      <tr>
         <td>GIP</td>
         <td>Gibraltar Pound</td>
      </tr>
      <tr>
         <td>GMD</td>
         <td>Gambian Dalasi</td>
      </tr>
      <tr>
         <td>GNF</td>
         <td>Guinean Franc</td>
      </tr>
      <tr>
         <td>GTQ</td>
         <td>Guatemalan Quetzal</td>
      </tr>
      <tr>
         <td>GYD</td>
         <td>Guyanaese Dollar</td>
      </tr>
      <tr>
         <td>HKD</td>
         <td>Hong Kong Dollar</td>
      </tr>
      <tr>
         <td>HNL</td>
         <td>Honduran Lempira</td>
      </tr>
      <tr>
         <td>HRK</td>
         <td>Croatian Kuna</td>
      </tr>
      <tr>
         <td>HTG</td>
         <td>Haitian Gourde</td>
      </tr>
      <tr>
         <td>HUF</td>
         <td>Hungarian Forint</td>
      </tr>
      <tr>
         <td>IDR</td>
         <td>Indonesian Rupiah</td>
      </tr>
      <tr>
         <td>ILS</td>
         <td>Israeli New Sheqel</td>
      </tr>
      <tr>
         <td>IMP</td>
         <td>Manx pound</td>
      </tr>
      <tr>
         <td>INR</td>
         <td>Indian Rupee</td>
      </tr>
      <tr>
         <td>IQD</td>
         <td>Iraqi Dinar</td>
      </tr>
      <tr>
         <td>IRR</td>
         <td>Iranian Rial</td>
      </tr>
      <tr>
         <td>ISK</td>
         <td>Icelandic Króna</td>
      </tr>
      <tr>
         <td>JEP</td>
         <td>Jersey Pound</td>
      </tr>
      <tr>
         <td>JMD</td>
         <td>Jamaican Dollar</td>
      </tr>
      <tr>
         <td>JOD</td>
         <td>Jordanian Dinar</td>
      </tr>
      <tr>
         <td>JPY</td>
         <td>Japanese Yen</td>
      </tr>
      <tr>
         <td>KES</td>
         <td>Kenyan Shilling</td>
      </tr>
      <tr>
         <td>KGS</td>
         <td>Kyrgystani Som</td>
      </tr>
      <tr>
         <td>KHR</td>
         <td>Cambodian Riel</td>
      </tr>
      <tr>
         <td>KMF</td>
         <td>Comorian Franc</td>
      </tr>
      <tr>
         <td>KPW</td>
         <td>North Korean Won</td>
      </tr>
      <tr>
         <td>KRW</td>
         <td>South Korean Won</td>
      </tr>
      <tr>
         <td>KWD</td>
         <td>Kuwaiti Dinar</td>
      </tr>
      <tr>
         <td>KYD</td>
         <td>Cayman Islands Dollar</td>
      </tr>
      <tr>
         <td>KZT</td>
         <td>Kazakhstani Tenge</td>
      </tr>
      <tr>
         <td>LAK</td>
         <td>Laotian Kip</td>
      </tr>
      <tr>
         <td>LBP</td>
         <td>Lebanese Pound</td>
      </tr>
      <tr>
         <td>LKR</td>
         <td>Sri Lankan Rupee</td>
      </tr>
      <tr>
         <td>LRD</td>
         <td>Liberian Dollar</td>
      </tr>
      <tr>
         <td>LSL</td>
         <td>Lesotho Loti</td>
      </tr>
      <tr>
         <td>LTL</td>
         <td>Lithuanian Litas</td>
      </tr>
      <tr>
         <td>LVL</td>
         <td>Latvian Lats</td>
      </tr>
      <tr>
         <td>LYD</td>
         <td>Libyan Dinar</td>
      </tr>
      <tr>
         <td>MAD</td>
         <td>Moroccan Dirham</td>
      </tr>
      <tr>
         <td>MDL</td>
         <td>Moldovan Leu</td>
      </tr>
      <tr>
         <td>MGA</td>
         <td>Malagasy Ariary</td>
      </tr>
      <tr>
         <td>MKD</td>
         <td>Macedonian Denar</td>
      </tr>
      <tr>
         <td>MMK</td>
         <td>Myanma Kyat</td>
      </tr>
      <tr>
         <td>MNT</td>
         <td>Mongolian Tugrik</td>
      </tr>
      <tr>
         <td>MOP</td>
         <td>Macanese Pataca</td>
      </tr>
      <tr>
         <td>MRO</td>
         <td>Mauritanian Ouguiya</td>
      </tr>
      <tr>
         <td>MUR</td>
         <td>Mauritian Rupee</td>
      </tr>
      <tr>
         <td>MVR</td>
         <td>Maldivian Rufiyaa</td>
      </tr>
      <tr>
         <td>MWK</td>
         <td>Malawian Kwacha</td>
      </tr>
      <tr>
         <td>MXN</td>
         <td>Mexican Peso</td>
      </tr>
      <tr>
         <td>MYR</td>
         <td>Malaysian Ringgit</td>
      </tr>
      <tr>
         <td>MZN</td>
         <td>Mozambican Metical</td>
      </tr>
      <tr>
         <td>NAD</td>
         <td>Namibian Dollar</td>
      </tr>
      <tr>
         <td>NGN</td>
         <td>Nigerian Naira</td>
      </tr>
      <tr>
         <td>NIO</td>
         <td>Nicaraguan Córdoba</td>
      </tr>
      <tr>
         <td>NOK</td>
         <td>Norwegian Krone</td>
      </tr>
      <tr>
         <td>NPR</td>
         <td>Nepalese Rupee</td>
      </tr>
      <tr>
         <td>NZD</td>
         <td>New Zealand Dollar</td>
      </tr>
      <tr>
         <td>OMR</td>
         <td>Omani Rial</td>
      </tr>
      <tr>
         <td>PAB</td>
         <td>Panamanian Balboa</td>
      </tr>
      <tr>
         <td>PEN</td>
         <td>Peruvian Nuevo Sol</td>
      </tr>
      <tr>
         <td>PGK</td>
         <td>Papua New Guinean Kina</td>
      </tr>
      <tr>
         <td>PHP</td>
         <td>Philippine Peso</td>
      </tr>
      <tr>
         <td>PKR</td>
         <td>Pakistani Rupee</td>
      </tr>
      <tr>
         <td>PLN</td>
         <td>Polish Zloty</td>
      </tr>
      <tr>
         <td>PYG</td>
         <td>Paraguayan Guarani</td>
      </tr>
      <tr>
         <td>QAR</td>
         <td>Qatari Rial</td>
      </tr>
      <tr>
         <td>RON</td>
         <td>Romanian Leu</td>
      </tr>
      <tr>
         <td>RSD</td>
         <td>Serbian Dinar</td>
      </tr>
      <tr>
         <td>RUB</td>
         <td>Russian Ruble</td>
      </tr>
      <tr>
         <td>RWF</td>
         <td>Rwandan Franc</td>
      </tr>
      <tr>
         <td>SAR</td>
         <td>Saudi Riyal</td>
      </tr>
      <tr>
         <td>SBD</td>
         <td>Solomon Islands Dollar</td>
      </tr>
      <tr>
         <td>SCR</td>
         <td>Seychellois Rupee</td>
      </tr>
      <tr>
         <td>SDG</td>
         <td>Sudanese Pound</td>
      </tr>
      <tr>
         <td>SEK</td>
         <td>Swedish Krona</td>
      </tr>
      <tr>
         <td>SGD</td>
         <td>Singapore Dollar</td>
      </tr>
      <tr>
         <td>SHP</td>
         <td>Saint Helena Pound</td>
      </tr>
      <tr>
         <td>SLL</td>
         <td>Sierra Leonean Leone</td>
      </tr>
      <tr>
         <td>SOS</td>
         <td>Somali Shilling</td>
      </tr>
      <tr>
         <td>SRD</td>
         <td>Surinamese Dollar</td>
      </tr>
      <tr>
         <td>STD</td>
         <td>São Tomé and Príncipe Dobra</td>
      </tr>
      <tr>
         <td>SVC</td>
         <td>Salvadoran Colón</td>
      </tr>
      <tr>
         <td>SYP</td>
         <td>Syrian Pound</td>
      </tr>
      <tr>
         <td>SZL</td>
         <td>Swazi Lilangeni</td>
      </tr>
      <tr>
         <td>THB</td>
         <td>Thai Baht</td>
      </tr>
      <tr>
         <td>TJS</td>
         <td>Tajikistani Somoni</td>
      </tr>
      <tr>
         <td>TMT</td>
         <td>Turkmenistani Manat</td>
      </tr>
      <tr>
         <td>TND</td>
         <td>Tunisian Dinar</td>
      </tr>
      <tr>
         <td>TOP</td>
         <td>Tongan Paʻanga</td>
      </tr>
      <tr>
         <td>TRY</td>
         <td>Turkish Lira</td>
      </tr>
      <tr>
         <td>TTD</td>
         <td>Trinidad and Tobago Dollar</td>
      </tr>
      <tr>
         <td>TWD</td>
         <td>New Taiwan Dollar</td>
      </tr>
      <tr>
         <td>TZS</td>
         <td>Tanzanian Shilling</td>
      </tr>
      <tr>
         <td>UAH</td>
         <td>Ukrainian Hryvnia</td>
      </tr>
      <tr>
         <td>UGX</td>
         <td>Ugandan Shilling</td>
      </tr>
      <tr>
         <td>USD</td>
         <td>United States Dollar</td>
      </tr>
      <tr>
         <td>UYU</td>
         <td>Uruguayan Peso</td>
      </tr>
      <tr>
         <td>UZS</td>
         <td>Uzbekistan Som</td>
      </tr>
      <tr>
         <td>VEF</td>
         <td>Venezuelan Bolívar Fuerte</td>
      </tr>
      <tr>
         <td>VND</td>
         <td>Vietnamese Dong</td>
      </tr>
      <tr>
         <td>VUV</td>
         <td>Vanuatu Vatu</td>
      </tr>
      <tr>
         <td>WST</td>
         <td>Samoan Tala</td>
      </tr>
      <tr>
         <td>XAF</td>
         <td>CFA Franc BEAC</td>
      </tr>
      <tr>
         <td>XAG</td>
         <td>Silver (troy ounce)</td>
      </tr>
      <tr>
         <td>XAU</td>
         <td>Gold (troy ounce)</td>
      </tr>
      <tr>
         <td>XCD</td>
         <td>East Caribbean Dollar</td>
      </tr>
      <tr>
         <td>XDR</td>
         <td>Special Drawing Rights</td>
      </tr>
      <tr>
         <td>XOF</td>
         <td>CFA Franc BCEAO</td>
      </tr>
      <tr>
         <td>XPF</td>
         <td>CFP Franc</td>
      </tr>
      <tr>
         <td>YER</td>
         <td>Yemeni Rial</td>
      </tr>
      <tr>
         <td>ZAR</td>
         <td>South African Rand</td>
      </tr>
      <tr>
         <td>ZMK</td>
         <td>Zambian Kwacha (pre-2013)</td>
      </tr>
      <tr>
         <td>ZMW</td>
         <td>Zambian Kwacha</td>
      </tr>
      <tr>
         <td>ZWL</td>
         <td>Zimbabwean Dollar</td>
      </tr>
   </tbody>
</table>
</details>

## Locales

Currently Distribusion API offers translation to various languages for 

- station name and description
- amenities
- cancellation policy

<details>
  <summary>Table of supported languages</summary>
  
<table>
   <thead>
      <tr>
         <th>Distribusion locale code</th>
         <th>Locale name</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>de</td>
         <td>German</td>
      </tr>
      <tr>
         <td>en</td>
         <td>English</td>
      </tr>
      <tr>
         <td>bg</td>
         <td>Bulgarian</td>
      </tr>
      <tr>
         <td>cs</td>
         <td>Czech</td>
      </tr>
      <tr>
         <td>da</td>
         <td>Danish</td>
      </tr>
      <tr>
         <td>es</td>
         <td>Spanish</td>
      </tr>
      <tr>
         <td>fr</td>
         <td>French</td>
      </tr>
      <tr>
         <td>hr</td>
         <td>Croatian</td>
      </tr>
      <tr>
         <td>it</td>
         <td>Italian</td>
      </tr>
      <tr>
         <td>nl</td>
         <td>Dutch</td>
      </tr>
      <tr>
         <td>pl</td>
         <td>Polish</td>
      </tr>
      <tr>
         <td>pt</td>
         <td>Portuguese</td>
      </tr>
      <tr>
         <td>ru</td>
         <td>Russian</td>
      </tr>
      <tr>
         <td>sv</td>
         <td>Swedish</td>
      </tr>
      <tr>
         <td>tr</td>
         <td>Turkish</td>
      </tr>
      <tr>
         <td>zh</td>
         <td>Chinese</td>
      </tr>
   </tbody>
</table>
</details>

## Real and Virtual carriers

Distribusion demo environment offers both real and virtual carriers to intehrate against. As marketing carriers do not always have reliable and stable testing environments to integrate and test the booking flow, Distribusion has introduced virtual carriers that simulate the capabilities & characteristics of marketing carriers and can be used for onboarding purposes.

<details>
  <summary>Table of virtual carriers</summary>
  
<table>
   <thead>
      <tr>
         <th>Carrier code</th>
         <th>Carrier name</th>
         <th>Departure station</th>
         <th>Arrival Station</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>VICA</td>
         <td>Virtual Carrier European intercity bus</td>
         <td>DEBERCBS</td>
         <td>FRPARPGB</td>
      </tr>
      <tr>
         <td>VCBA</td>
         <td>Virtual Carrier Brazilian intercity bus</td>
         <td>BRSAOSPB</td>
         <td>BRLZSRDJ</td>
      </tr>
      <tr>
         <td>VCAI</td>
         <td>Virtual Carrier Airport shuttle</td>
         <td>GBLONLTH</td>
         <td>GBLONLHB</td>
      </tr>
      <tr>
         <td>VCFE</td>
         <td>Virtual Carrier Ferry</td>
         <td>GBCAICHA</td>
         <td>GBPMEPHA</td>
      </tr>
   </tbody>
</table>
</details>

## Postman

Here’s a collection of sample queries in Postman that’ll help you get up to speed with our API faster.

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/4b85e2eca75d5ec340dc)
