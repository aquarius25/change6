class AccountsController < ApplicationController
  before_action :set_account, only: [:edit, :show, :update]

  def index
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
      @account.save
    redirect_to action: :index
  end

  def show
  end

  def edit
  end

  def update
    if @account.update(account_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private
  def account_params
    params.require(:account).permit(:image, :f_name, :t_name, :profile, :link, :link1, :link2).merge(user_id: current_user.id)
  end

  def set_account
    @account = Account.find(params[:id])
  end
end
