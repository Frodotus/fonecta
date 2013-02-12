require 'rubygems'
require 'mechanize'

a = Mechanize.new
a.get('https://m.fonecta.fi/kirjaudu?from=%2Fhenkilot') do |login_page|
  search_page = login_page.form_with(:action => '/kirjaudu') do |f|
    f.username  = ARGV[0]
    f.password  = ARGV[1]
  end.click_button
  result_page = search_page.form_with(:action => '/henkilot/haku') do |f|
    f.what  = ARGV[2]
  end.click_button
  result = result_page.at '.search-results'
  name = result.at('.profile').text.strip   
  address = result.at('.adr').text.strip   
  puts "Name: '#{name}'"
  puts "Address: '#{address}'"
end
