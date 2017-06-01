class PersonsController < ApplicationController
  def index
    if params[:search]
      @persons = Person.where("name LIKE ?", "%#{params[:search]}%")
    else
      @persons = Person.all
    end
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @persons = Person.all
    @person = Person.new(params.require(:person).permit(:name, :company, :email, :phone, :photo))
    if @person.save
      redirect_to @person
    else
      render 'index'
    end
  end
end
