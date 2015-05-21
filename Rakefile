require 'rake'
require ::File.expand_path('../config/environment', __FILE__)

desc 'Start IRB with application environment loaded'
task "console" do
  exec "irb -r./config/environment"
end

task "fetch_games" do
  doc = Nokogiri::HTML(open("http://espn.go.com/mlb/schedule?date=#{ENV['DATE']}"))
  rows = doc.css('tbody tr')
  rows.each do |row|
    home_team = row.css('abbr')[0][:title]
    away_team = row.css('abbr')[1][:title]
    away_image = row.css('td a img')[0][:src]
    home_image = row.css('td a img')[1][:src]
    start_time = Time.parse row.css('td')[2]["data-date"]
    pitchers = row.css('td')[4].content
    tickets_available = row.css('td')[5].content.match(/(\d+)/)
    tickets_available = tickets_available ? tickets_available[0].to_i : 0
    Game.create(
      home_team: home_team, 
      away_team: away_team, 
      home_image: home_image, 
      away_image: away_image, 
      start_time: start_time, 
      pitchers: pitchers, 
      tickets_available: tickets_available
    )
  end
end


