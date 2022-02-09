class ScenariosController < ApplicationController
  before_action :set_user
  before_action :set_scenario, except: [:index, :new, :create]

  def index
  end

  def new
    @scenario = Scenario.new
  end

  def create
    @scenario = @user.scenarios.create(scenario_params)

    if @scenario.save
      redirect_to user_scenario_path(@user.id, @scenario.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @scenario.update(scenario_params)
      redirect_to user_scenario_path(@user.id, @scenario.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @scenario.destroy
    redirect_to user_path(@user.id), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_scenario
    @scenario = @user.scenarios.find(params[:id])
  end

  def scenario_params
    params.require(:scenario).permit(:title, :description, :job, :goal, :budget)
  end

end
