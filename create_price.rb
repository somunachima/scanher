require 'rubygems'
require 'stripe'
Stripe.api_key = "sk_test_51MBfuOKxp7yOzfKzW4tpNkgeV3EStJ1a4zEvqhtcsesOqLYKuY4Z2Z0M5qr4VITXtJd4wDyI4iSxGhF07STh40ak006b3dcyfp"

starter_subscription = Stripe::Product.create(
  name: 'Starter Subscription',
  description: '$12/Month subscription',
)

starter_subscription_price = Stripe::Price.create(
  currency: 'usd',
  unit_amount: 1200,
  recurring: {interval: 'month'},
  product: starter_subscription['id'],
)

puts "Success! Here is your starter subscription product id: #{starter_subscription.id}"
puts "Success! Here is your starter subscription price id: #{starter_subscription_price.id}"
