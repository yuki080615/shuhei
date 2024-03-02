class TasksController < ApplicationController
    def index
        @tasks = Task.all

    end

    def show
        @tasks = Task.find(params[:id])
    end

    def new
    end

    def create
        @task = Task.new(name: params[:task_name])
        @task.save
        redirect_to '/tasks'
    end
end