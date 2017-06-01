class PersonsController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(params.require(:person).permit(:name, :company, :email, :phone, :photo))
    if @person.save
      redirect_to @person
    else
      render 'index'
    end
  end
end
