require 'will_paginate/array'

class PagesController < ApplicationController
  before_filter :load_notebook

  def index
    @pages = @notebook.pages
  end

  def flashcards
    if params[:shuffle]
      params[:seed] = Random.new_seed
      params.delete :shuffle
    end

    Kernel.srand params[:seed].to_i
    @pages = @notebook.pages.shuffle
    @pages = @pages.paginate(:page => params[:page], :per_page => 1)
  end

  def show
    @page = Page.find params[:id]
  end

  def new
    @page = Page.new
  end

  def create
    @page = @notebook.pages.build(params[:page]).save
    redirect_to notebook_pages_path(@notebook)
  end

  def edit
    @page = Page.find params[:id]
  end

  def update
    @page = Page.find params[:id]
    @page.update_attributes params[:page]
    redirect_to notebook_pages_path(@notebook)
  end

  def destroy
    @page = Page.find params[:id]
    @page.delete
    redirect_to notebook_pages_path(@notebook)
  end

  private
  def load_notebook
    @notebook = Notebook.find params[:notebook_id]
  end

end
