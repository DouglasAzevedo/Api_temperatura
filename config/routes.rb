Rails.application.routes.draw do

  get "busca_temperatura/buscar"
  get "busca_temperatura/prox_hours"
  get "busca_temperatura/prox_day"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
