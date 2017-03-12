class StudentsController < ApplicationController

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/resumes/#{current_user.id}").body
    render "show.html.erb"
  end

  def edit
    @student = Unirest.get("http://localhost:3000/api/v1/resumes/#{current_user.id}").body
    render "edit.html.erb" 
  end

  def update
    experiences = 

    educations = 
    student = Unirest.patch("http://localhost:3000/api/v1/resume/#{current_user.id}", parameters: {phone_number: params[:phone_number], {company_name: params[:company_name]} }).body
  end


end
