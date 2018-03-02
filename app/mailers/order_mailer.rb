class OrderMailer < ApplicationMailer

  default from: 'notifications@jungle.com'

  def order_email(order)
    @order = order
    @url  = "orders/#{@order.id}"
    mail(to: @order.email, subject: "Successful order: #{@order.id}")
  end

end
