Rails.application.routes.draw do

#students routes   
  get "students/:id", to: "students#show"
  get "students/:id/edit", to: "students#edit"
  patch "students", to: "students#update"

#sessions routes

  get "/login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  

end
