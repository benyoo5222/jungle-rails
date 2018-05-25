class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def confirmation(order)
    @order = order
    puts @order.email
    mail( to: @order.email, subject: "Order Number" @order.id)
  end
end
