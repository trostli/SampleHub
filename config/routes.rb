SampleHub::Application.routes.draw do
  	resources :samples

  root to: "samples#index"
end
