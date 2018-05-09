class PurchaseMailer < ApplicationMailer
  default from: 'coinbay@cynicindustries.net'

  def purchase
    mail(to: $success_details['email'], subject: 'Thankyou for shopping with CoinBay!')
  end
end
