# BillingType
#
Billing::BillingType.destroy_all
Billing::BillingType.create(
  [
    { name: 'Yearly' },
    { name: 'Monthly' },
    { name: 'Fortnight' },
    { name: 'Weekly' },
    { name: 'Daily' },
    { name: 'Hourly' }
  ]
)
