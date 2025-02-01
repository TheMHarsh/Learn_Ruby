puts 'Event Manager Initialized!'

if File.exist? 'ruby_projects/files/event_attendees.csv'
  contents = File.read 'ruby_projects/files/event_attendees.csv'
  puts contents
else
  puts 'No file found'
end