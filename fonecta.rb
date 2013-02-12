require 'rubygems'
require 'sinatra'
require 'mechanize'

get '/:n' do
  fetch params[:u],params[:p],params[:n]
end

private

def fetch(address,lname,fname)
#def fetch(username,password,number)
  #a = Mechanize.new
  #a.get('https://m.fonecta.fi/kirjaudu?from=%2Fhenkilot') do |login_page|
  #  search_page = login_page.form_with(:action => '/kirjaudu') do |f|
  #    f.username  = username
  #    f.password  = password
  #  end.click_button    
  #  result_page = search_page.form_with(:action => '/henkilot/haku') do |f|
  #    f.what  = number
  #  end.click_button
  #  result = result_page.at '.search-results'
  #  name = result.at('.profile').text.strip
  #  name = name.split(' ')
  #  fname = name[0]
  #  lname = name[1]
  #  address = result.at('.adr').text.strip
    return "<Name>#{fname}</Name>\n<LastName>#{lname}</LastName>\n<Address>#{address}</Address>\n<PostalCode></PostalCode>\n<City></City>\n"
#  end
end