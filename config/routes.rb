Rails.application.routes.draw do

  get("/", { :controller => "calendar", :action => "invite" })
  
  get("/calendar_invite/new", { :controller => "calendar", :action => "invite" })
  get("/calendar_invite/results", { :controller => "calendar", :action => "generate" })

  get("/street_to_coords/new", { :controller => "geocoding", :action => "street_to_coords_form" })
  get("/street_to_coords/results", { :controller => "geocoding", :action => "street_to_coords" })

  get("/coords_to_weather/new", { :controller => "forecast", :action => "coords_to_weather_form" })
  get("/coords_to_weather/results", { :controller => "forecast", :action => "coords_to_weather" })

  get("/street_to_weather/new", { :controller => "meteorologist", :action => "street_to_weather_form" })
  get("/street_to_weather/results", { :controller => "meteorologist", :action => "street_to_weather" })
  
end
