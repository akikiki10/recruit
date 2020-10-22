class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  def index
    @jobs = current_user.jobs
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)

    if @job.save
      redirect_to @job, notice: "求人「#{@job.name}」を登録しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @job.update!(job_params)
    redirect_to jobs_url, notice: "求人「#{@job.name}」を更新しました"
  end

  def destroy
    @job.destroy
    redirect_to jobs_url, notice: "求人「#{@job.name}」を削除しました。"
  end

  private

  def job_params
    params.require(:job).permit(:name, :salary, :working_hours, :place, :feature, :catch)
  end

  def set_job
    @job = current_user.jobs.find(params[:id])
  end
end
