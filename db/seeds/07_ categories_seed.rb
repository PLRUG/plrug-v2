# Categories
#
Content::Category.destroy_all
Content::Category.create(
  [
    { name: 'Ruby' },
    { name: 'Ruby on Rails' },
    { name: 'RSpec' },
    { name: 'Clean Code' },
    { name: 'API\'s' },
    { name: 'Solid' },
    { name: 'Archteture' },
    { name: 'Docker' },
    { name: 'Kubernets' },
    { name: 'Caching' },
    { name: 'Tests' },
    { name: 'Front-End' },
    { name: 'Javascript' },
    { name: 'ReactJS' }
  ]
)
