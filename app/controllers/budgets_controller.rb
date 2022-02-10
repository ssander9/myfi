class BudgetsController < ApplicationController
  before_action :set_user
  before_action :set_budget, except: [:index, :new, :create]
  
  def index
  end
  
  def new
    @budget = Budget.new
  end

  def create
    @budget = @user.budgets.create(budget_params)

    if @budget.save
      redirect_to user_budget_path(@user.id, @budget.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @budget.update(budget_params)
      redirect_to user_budget_path(@user.id, @budget.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @budget.destroy
    redirect_to user_path(@user.id), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_budget
    @budget = @user.budgets.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:title, :tithing_net, :rent, :food, :auto, :insurance, :child, :childcare, :entertainment, :travel, :clothing, :personal_care, :gifts, :misc_home, :other, :savings)
  end
end
