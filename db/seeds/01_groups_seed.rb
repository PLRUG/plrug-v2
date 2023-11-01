# Group
#
Community::Group.destroy_all
Community::Group.create(
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
      url: 'https://www.meetup.com/drugpl/'
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
