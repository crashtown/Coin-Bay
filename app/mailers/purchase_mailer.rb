class PurchaseMailer < ApplicationMailer
  default from: 'coinbay@cynicindustries.net'

  def purchase(details)
    @success_details = details
    mail(to: @success_details['email'], subject: 'Thankyou for shopping with CoinBay!')
  end
end
