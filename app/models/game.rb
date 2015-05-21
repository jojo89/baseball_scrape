class Game
  include Mongoid::Document
  field :home_team, type: String
  field :away_team, type: String
  field :home_image, type: String
  field :away_image, type: String
  field :start_time, type: Time
  field :pitchers, type: String
  field :tickets_available, type: Integer
end
