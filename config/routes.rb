SurveyRails::Application.routes.draw do
  resources :questionaires
  resources :surveys
  resources :questions
  resources :users
end
