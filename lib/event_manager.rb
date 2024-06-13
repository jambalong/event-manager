require 'csv'
require 'google/apis/civicinfo_v2'
require 'erb'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, '0')[0..4]
end

def legislators_by_zipcode(zip)
  civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
  civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'

  begin
    legislators = civic_info.representative_info_by_address(
      address: zip,
      levels: 'country',
      roles: ['legislatorUpperBody', 'legislatorLowerBody']
    ).officials
  rescue
    'You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials'
  end
end

def save_thank_you_letter(id, form_letter)
  Dir.mkdir('output') unless Dir.exist?('output')

  filename = "output/thanks_#{id}.html"

  File.open(filename, 'w') do |file|
    file.puts form_letter
  end
end

def clean_phone_number(phone_number)
  phone_number.gsub!(/\D/, '')

  return 'Bad Phone Number' if phone_number.length < 10 || phone_number.length > 11
  
  phone_number.length == 11 && phone_number.start_with?('1') ? phone_number[1..-1] : phone_number
end

def parse_reg_date(reg_date)
  DateTime.strptime(reg_date, "%m/%d/%Y %H:%M")
end

def get_peak_hour(hours)
  hours.max_by { |_hour, count| count }.first
end

puts 'EventManager initialized.'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

template_letter = File.read('form_letter.erb')
erb_template = ERB.new template_letter

hours = Hash.new(0)

contents.each do |row|
  id = row[0]
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  legislators = legislators_by_zipcode(zipcode)
  phone_number = clean_phone_number(row[:homephone])
  reg_date = parse_reg_date(row[:regdate])

  hours[reg_date.hour] += 1

  form_letter = erb_template.result(binding)

  save_thank_you_letter(id, form_letter)
end

peak_hour = get_peak_hour(hours)
puts "The peak hour for registration: #{peak_hour}"
