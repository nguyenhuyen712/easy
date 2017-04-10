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

  def accept_order bill
    @bill = bill
    @restaurant = bill.restaurant
    mail to: bill.recipient_email, subject: "[Buy online] Đơn hàng đưọc chấp nhận"
  end

  def reject_order bill
    @bill = bill
    @restaurant = bill.restaurant
    mail to: bill.recipient_email, subject: "[Buy online] Đơn hàng bị hủy bỏ"
  end
end
