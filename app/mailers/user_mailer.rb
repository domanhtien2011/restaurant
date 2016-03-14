class UserMailer < ApplicationMailer

  def order_success(order)
    @order = order

    mail to: order.email, subject: "Your order is completed!"
  end
end
