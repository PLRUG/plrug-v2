# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }
#   Character.create(name: "Luke", movie: movies.first)

  require 'benchmark'

realtime = Benchmark.realtime do

  # Group
  Group.destroy_all
  Group.create(
    [
      { 
        name: 'Krakow Ruby Users Group (KRUG)',
        url: 'https://www.meetup.com/krakow-ruby-users-group/'
      },
      { 
        name: 'IT 3city',
        url: 'https://www.meetup.com/it-3city/'
      },
      { 
        name: 'IT Group in Lódź',
        url: 'https://www.meetup.com/it-group-in-%C5%82od%C5%BA/'
      },
      { 
        name: 'HackKRK.com',
        url: 'https://www.meetup.com/hackkrk/'
      },
      { 
        name: 'Dolnośląska Grupa Użytkowników Ruby',
        url:  'https://www.meetup.com/drugpl/'
      },
      { 
        name: 'WeBB MeetUp',
        url: 'https://www.meetup.com/webb-meetup/'
      },
      { 
        name: 'Silesian Ruby Users Group',
        url: 'https://www.meetup.com/srugpl/'
      },
      { 
        name: 'Poznan Ruby User Group',
        url: 'https://www.meetup.com/poznanrug/'
      },
      { 
        name: 'Rails Girls Bielsko-Biala',
        url: 'https://www.meetup.com/rails-girls-bielsko-biala/'
      },
      { 
        name: 'Między Commitami',
        url: 'https://www.meetup.com/mi%C4%99dzy-commitami/'
      }
    ]
  )

  # JobKind
  JobKind.destroy_all
  JobKind.create(
    [
      { name: 'Full-time' },
      { name: 'Part-time' },
      { name: 'Contract' },
      { name: 'Temporary' },
      { name: 'Volunteer' },
      { name: 'Internship' }
    ]
  )

  # Country
  Country.destroy_all
  Country.create(
    [
      { name: 'Poland' }
    ]
  )

  contry = City.where(name: 'Poland').first

  # City
  City.destroy_all
  City.create(
    [
     {
      id: 1,
      name: 'Warszawa',
      country: country 
     },
     {
      id: 2,
      name: 'Lublin',
      country: country
     },
     {
      id: 3,
      name: 'Zamość', 
      country: country
     },
     {
      id: 4,
      name: 'Przemysl',
      country: country
     },
     {
      id: 5,
      name: 'Rzeszów',
      country: country
     },
     {
      id: 6,
      name: 'Kraków',
      country: country 
     },
     {
      id: 7,
      name: 'Kielce',
      country: country
     },
     {
      id: 8, 
      name: 'Radom',
      country: country 
     },
     {
      id: 9,
      name: 'Siedlce',
      country: country
     },
     {
      id: 10,
      name: 'Bialystok',
      country: country
     },
     {
      id: 11,
      name: 'Suwalki',
      country: country
     },
     {
      id: 12,
      name: 'Olsztyn',
      country: country
     },
     {
      id: 13,
      name: 'Elblag',
      country: country
     },
     {
      id: 14,
      name: 'Torún',
      country: country 
     },
     {
      id: 15,
      name: 'Lódź',
      country: country 
     },
     {
      id: 16,
      name: 'Czestochowa',
      country: country 
     },
     {
      id: 17,
      name: 'Katowice', 
      country: country
     },
     {
      id: 18,
      name: 'Plock',
      country: country 
     },
     {
      id: 19,
      name: 'Opole',
      country: country
     },
     {
      id: 20,
      name: 'Kalisz',
      country: country
     },
     {
      id: 21,
      name: 'Poznan',
      country: country
     },
     {
      id: 22,
      name: 'Koszalin',
      country: country 
     },
     {
      id: 23,
      name: 'Leszno',
      country: country
     },
     {
      id: 24,
      name: 'Wroclaw',
      country: country
     },
     {
      id: 25,
      name: 'Zielona Góra',
      country: country
     },
     {
      id: 26,
      name: 'Gorzów Wielkoposki',
      country: country
     },
     {
      id: 27,
      name: 'Szczecin',
      country: country
     }
    ]
  )

  # BillingType
  BillingType.destroy_all
  BillingType.create(
    [
      { name: 'Yearly' },
      { name: 'Monthly' },
      { name: 'Weekly' },
      { name: 'Daily' },
      { name: 'Hourly' }
    ]
  )

  # Currency
  Currency.destroy_all
  Currency.create([
    { name: "AED" },
    { name: "AFN" },
    { name: "ALL" },
    { name: "AMD" },
    { name: "ANG" },
    { name: "AOA" },
    { name: "ARS" },
    { name: "AUD" },
    { name: "AWG" },
    { name: "AZN" },
    { name: "BAM" },
    { name: "BBD" },
    { name: "BCH" },
    { name: "BDT" },
    { name: "BGN" },
    { name: "BHD" },
    { name: "BIF" },
    { name: "BMD" },
    { name: "BND" },
    { name: "BOB" },
    { name: "BRL" },
    { name: "BSD" },
    { name: "BTC" },
    { name: "BTN" },
    { name: "BWP" },
    { name: "BYN" },
    { name: "BYR" },
    { name: "BZD" },
    { name: "CAD" },
    { name: "CDF" },
    { name: "CHF" },
    { name: "CLF" },
    { name: "CLP" },
    { name: "CNH" },
    { name: "CNY" },
    { name: "COP" },
    { name: "CRC" },
    { name: "CUC" },
    { name: "CUP" },
    { name: "CVE" },
    { name: "CZK" },
    { name: "DJF" },
    { name: "DKK" },
    { name: "DOP" },
    { name: "DZD" },
    { name: "EEK" },
    { name: "EGP" },
    { name: "ERN" },
    { name: "ETB" },
    { name: "EUR" },
    { name: "FJD" },
    { name: "FKP" },
    { name: "GBP" },
    { name: "GBX" },
    { name: "GEL" },
    { name: "GGP" },
    { name: "GHC" },
    { name: "GHS" },
    { name: "GIP" },
    { name: "GMD" },
    { name: "GNF" },
    { name: "GTQ" },
    { name: "GYD" },
    { name: "HKD" },
    { name: "HNL" },
    { name: "HRK" },
    { name: "HTG" },
    { name: "HUF" },
    { name: "IDR" },
    { name: "ILS" },
    { name: "IMP" },
    { name: "INR" },
    { name: "IQD" },
    { name: "IRR" },
    { name: "ISK" },
    { name: "JEP" },
    { name: "JMD" },
    { name: "JOD" },
    { name: "JPY" },
    { name: "KES" },
    { name: "KGS" },
    { name: "KHR" },
    { name: "KMF" },
    { name: "KPW" },
    { name: "KRW" },
    { name: "KWD" },
    { name: "KYD" },
    { name: "KZT" },
    { name: "LAK" },
    { name: "LBP" },
    { name: "LKR" },
    { name: "LRD" },
    { name: "LSL" },
    { name: "LTL" },
    { name: "LVL" },
    { name: "LYD" },
    { name: "MAD" },
    { name: "MDL" },
    { name: "MGA" },
    { name: "MKD" },
    { name: "MMK" },
    { name: "MNT" },
    { name: "MOP" },
    { name: "MRO" },
    { name: "MRU" },
    { name: "MTL" },
    { name: "MUR" },
    { name: "MVR" },
    { name: "MWK" },
    { name: "MXN" },
    { name: "MYR" },
    { name: "MZN" },
    { name: "NAD" },
    { name: "NGN" },
    { name: "NIO" },
    { name: "NOK" },
    { name: "NPR" },
    { name: "NZD" },
    { name: "OMR" },
    { name: "PAB" },
    { name: "PEN" },
    { name: "PGK" },
    { name: "PHP" },
    { name: "PKR" },
    { name: "PLN" },
    { name: "PYG" },
    { name: "QAR" },
    { name: "RON" },
    { name: "RSD" },
    { name: "RUB" },
    { name: "RWF" },
    { name: "SAR" },
    { name: "SBD" },
    { name: "SCR" },
    { name: "SDG" },
    { name: "SEK" },
    { name: "SGD" },
    { name: "SHP" },
    { name: "SKK" },
    { name: "SLL" },
    { name: "SOS" },
    { name: "SRD" },
    { name: "SSP" },
    { name: "STD" },
    { name: "SVC" },
    { name: "SYP" },
    { name: "SZL" },
    { name: "THB" },
    { name: "TJS" },
    { name: "TMM" },
    { name: "TMT" },
    { name: "TND" },
    { name: "TOP" },
    { name: "TRY" },
    { name: "TTD" },
    { name: "TWD" },
    { name: "TZS" },
    { name: "UAH" },
    { name: "UGX" },
    { name: "USD" },
    { name: "UYU" },
    { name: "UZS" },
    { name: "VEF" },
    { name: "VES" },
    { name: "VND" },
    { name: "VUV" },
    { name: "WST" },
    { name: "XAF" },
    { name: "XAG" },
    { name: "XAU" },
    { name: "XBA" },
    { name: "XBB" },
    { name: "XBC" },
    { name: "XBD" },
    { name: "XCD" },
    { name: "XDR" },
    { name: "XFU" },
    { name: "XOF" },
    { name: "XPD" },
    { name: "XPF" },
    { name: "XPT" },
    { name: "XTS" },
    { name: "YEN" },
    { name: "YER" },
    { name: "ZAR" },
    { name: "ZMK" },
    { name: "ZMW" },
    { name: "ZWD" },
    { name: "ZWL" },
    { name: "ZWN" },
    { name: "ZWR" }
  ])
end
