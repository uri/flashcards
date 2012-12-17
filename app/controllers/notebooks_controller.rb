class NotebooksController < ApplicationController
  def index
    @notebooks = Notebook.all
  end

  def show
    @notebook = Notebook.find params[:id]
  end

  def new
    @notebook = Notebook.new
  end

  def create
    @notebook = Notebook.create params[:notebook]
    redirect_to notebooks_path
  end

  def edit
  end

  def update
    
  end
end
