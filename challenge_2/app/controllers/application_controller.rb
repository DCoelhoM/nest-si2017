class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @persons = Person.all
  end
  
  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new()//TODO
    if @person.save
      redirect to @person
    else
      render 'index'
    end
  end
end
