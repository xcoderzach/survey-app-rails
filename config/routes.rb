SurveyRails::Application.routes.draw do
  resources :questionnaires
  resources :surveys
  resources :questions
  resources :users
  resources :groups
  resources :class_instances
end
