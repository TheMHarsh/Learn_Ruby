require 'csv'
puts 'Event Manager Initialized!'

if File.exist? 'ruby_projects/files/event_attendees.csv'
  contents = CSV.read('ruby_projects/files/event_attendees.csv', headers: true, header_converters: :symbol)
  contents.each do |row|
    name = row[:first_name]
    puts name
  end 
else
  puts 'No file found'
end