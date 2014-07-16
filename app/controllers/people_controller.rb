class PeopleController < ApplicationController

  respond_to :html, :json

  def index
    @people = Person.all
    respond_with @people
  end

  def show
    @person = Person.find(params[:id])
    respond_with @person
  end

  def new
    @person = Person.new
    respond_with @person
  end

  def create
    @person = Person.new(person_params)
    @person.save
    respond_with @person

    # alternative method (old style):
    # if @person.save
    #   redirect_to @person
    # else
    #  render :new
    # end
  end

  def edit
    @person = Person.find(params[:id])
    respond_with @person
  end

  def update
    @person = Person.find(params[:id])
    @person.update_attributes(person_params)
    respond_with @person

    # alternative method (old style):
    # if @person.update_attributes(person_params)
    #   redirect_to @person
    # else
    #   render :edit
    # end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    respond_with @person

    # alternative method (old style):
    # redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :age)
  end

end
