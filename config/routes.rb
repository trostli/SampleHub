SampleHub::Application.routes.draw do
  resources :samples, only: [:index]

  root to: "samples#index"
end
