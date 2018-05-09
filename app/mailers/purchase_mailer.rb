class PurchaseMailer < ApplicationMailer
  default from: 'coinbay@cynicindustries.net'

  def purchase
    mail(to: "nic@nicdevlin.io", subject: 'Thankyou for shopping with CoinBay!')
  end
end
