class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    byebug
    @project = Project.new
    @project.name = params[:project][:name]
    @project.description = params[:project][:description]
    @project.goal = params[:project][:goal]
    @project.save
    byebug
    redirect_to @project
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(name: params[:project][:name], description: params[:project][:description], goal: params[:project][:goal])

    redirect_to @project
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end

end
