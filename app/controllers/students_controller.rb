class StudentsController < ApplicationController

  def show
    @student = Unirest.get("#{ENV['/api/v1']}students/#{id}").body
    render "show.html.erb"
  end

  def edit
    render "edit.html.erb" 
  end

  def update
    student = Unirest.patch("#{ENV['/api/v1']}students/#{id}", parameters: { }).body
  end

end
