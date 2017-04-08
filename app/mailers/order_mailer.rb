class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.new_order.subject
  #
  def new_order_for_customer bill
    @bill = bill
    @restaurant = bill.restaurant
    mail to: @bill.recipient_email, subject: "[Buy online] Đơn hàng mới được tạo"
  end

  def new_order_for_manager bill
    @bill = bill
    @restaurant = bill.restaurant
    mail to: @restaurant.email, subject: "[Buy online] Có đơn hàng mới"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.accept_order.subject
  #
  def accept_order
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
