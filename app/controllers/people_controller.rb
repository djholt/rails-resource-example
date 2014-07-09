class PeopleController < ApplicationController

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to @person
  end

  private

  def person_params
    params.require(:person).permit(:name, :age)
  end

end
