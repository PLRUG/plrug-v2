# JobKind
#
JobKind.destroy_all
JobKind.create(
  [
    { name: 'Full-time' },
    { name: 'Part-time' },
    { name: 'Contract' },
    { name: 'Temporary' },
    { name: 'Volunteer' },
    { name: 'Freelancer' },
    { name: 'Internship' },
    { name: 'Trainee' }
  ]
)