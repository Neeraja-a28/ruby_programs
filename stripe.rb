require 'stripe'
Stripe.api_key = 'sk_test_4eC39HqLyjWDarjtT1zdp7dc'

Stripe::Account.create({
  type: 'custom',
  country: 'US',
  email: 'jenny.rosen@example.com',
  capabilities: {
    card_payments: {requested: true},
    transfers: {requested: true},
  },
})