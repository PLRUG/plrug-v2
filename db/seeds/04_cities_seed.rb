# Cities
# 
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
