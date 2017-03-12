Rails.application.routes.draw do
  
  get "students/:id", to: "students#show"
  get "students/:id/edit", to: "students#edit"
  patch "students", to: "students#update"

end
