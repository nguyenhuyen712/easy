class Manager::BillsController < Manager::BaseController
  load_and_authorize_resource

  def index
    @bills = current_user.restaurant.bills.includes(:bill_details)
  end

  def show
  end

  def update
    @bill.update bill_params
    if @bill.accepted?
      flash[:success] = "Chấp nhận đơn hàng thành công"
      # gui mail va thong bao toi nguoi dung
      OrderMailer.accept_order(@bill).deliver_now
    else
      flash[:success] = "Đã hủy đơn hàng thành công"
      OrderMailer.reject_order(@bill).deliver_now
    end
    redirect_back fallback_location: manager_root_path
  end

  private
  def bill_params
    params.require(:bill).permit :status
  end
end
