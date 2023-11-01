# JobLevel
#
JobLevel.destroy_all
JobLevel.create(
  [
    { name: 'Junior' },
    { name: 'Mid Level' },
    { name: 'Senior' },
    { name: 'Staff' },
    { name: 'Principal' },
    { name: 'Lead' },
    { name: 'Architect' },
    { name: 'Manager' },
    { name: 'Director' },
    { name: 'Vice President' }
  ]
)
