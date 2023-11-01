# Cities
#
country_id = Location::Country.find_by(name: 'Poland').id

# City
Location::City.destroy_all
Location::City.create(
  [
    {
      id: 1,
      name: 'Warszawa',
      capital: true,
      country_id: country_id
    },
    {
      id: 2,
      name: 'Lublin',
      country_id: country_id
    },
    {
      id: 3,
      name: 'Zamość',
      country_id: country_id
    },
    {
      id: 4,
      name: 'Przemysl',
      country_id: country_id
    },
    {
      id: 5,
      name: 'Rzeszów',
      country_id: country_id
    },
    {
      id: 6,
      name: 'Kraków',
      country_id: country_id
    },
    {
      id: 7,
      name: 'Kielce',
      country_id: country_id
    },
    {
      id: 8,
      name: 'Radom',
      country_id: country_id
    },
    {
      id: 9,
      name: 'Siedlce',
      country_id: country_id
    },
    {
      id: 10,
      name: 'Bialystok',
      country_id: country_id
    },
    {
      id: 11,
      name: 'Suwalki',
      country_id: country_id
    },
    {
      id: 12,
      name: 'Olsztyn',
      country_id: country_id
    },
    {
      id: 13,
      name: 'Elblag',
      country_id: country_id
    },
    {
      id: 14,
      name: 'Torún',
      country_id: country_id
    },
    {
      id: 15,
      name: 'Lódź',
      country_id: country_id
    },
    {
      id: 16,
      name: 'Czestochowa',
      country_id: country_id
    },
    {
      id: 17,
      name: 'Katowice',
      country_id: country_id
    },
    {
      id: 18,
      name: 'Plock',
      country_id: country_id
    },
    {
      id: 19,
      name: 'Opole',
      country_id: country_id
    },
    {
      id: 20,
      name: 'Kalisz',
      country_id: country_id
    },
    {
      id: 21,
      name: 'Poznan',
      country_id: country_id
    },
    {
      id: 22,
      name: 'Koszalin',
      country_id: country_id
    },
    {
      id: 23,
      name: 'Leszno',
      country_id: country_id
    },
    {
      id: 24,
      name: 'Wroclaw',
      country_id: country_id
    },
    {
      id: 25,
      name: 'Zielona Góra',
      country_id: country_id
    },
    {
      id: 26,
      name: 'Gorzów Wielkoposki',
      country_id: country_id
    },
    {
      id: 27,
      name: 'Szczecin',
      country_id: country_id
    }
  ]
)
