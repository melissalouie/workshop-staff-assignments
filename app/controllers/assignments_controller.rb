class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @person = Person.find(params[:person_id])
    @assignment = Assignment.find(params[:id])
  end

  def edit
    @person = Person.find(params[:person_id])

    @assignment = Assignment.find(params[:id])
  end

  def update
    @person = Person.find(params[:person_id])
    @assignment = Assignment.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to person_assignment_path(@person, @assignment)
    end
  end

  def destroy
    @person = Person.find(params[:person_id])
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to person_path(@person)
  end

  private

  def assignment_params
    params.require(:assignment).permit(:role, :person_id, :location_id)
  end
end
