class JobsController < ApplicationController
  before_action :set_user
  before_action :set_job, except: [:index, :new, :create]
  
  def index
  end
  
  def new
    @job = Job.new
  end

  def create
    @job = @user.jobs.create(job_params)

    if @job.save
      redirect_to user_job_path(@user.id, @job.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to user_job_path(@user.id, @job.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job.destroy
    redirect_to user_path(@user.id), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_job
    @job = @user.jobs.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :state, :salary, :bonus, :salary_pct, :bonus_pct, :emp_spon_pct, :emp_match_pct, :health_pmt)
  end
end
