class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new    
    @project.team_id = params[:team_id]
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save  
      redirect_to project_url(@project)
    else
      render :new
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to project_url(@project)
    else
      render :edit
    end
  end
  
  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_url
  end
end