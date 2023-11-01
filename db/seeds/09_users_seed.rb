# User
#
User::User.destroy_all
User::User.create(
  [
    {
      name: 'Renato Franco',
      email: 'renato.franco@plrug.pl',
      password: 'test123',
      password_confirmation: 'test123',
      admin: true,
      country_id: Location::Country.first.id,
      city_id: Location::City.first.id
    }
  ]
)
