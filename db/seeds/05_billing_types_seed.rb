# BillingType
#
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