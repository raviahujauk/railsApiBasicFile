require 'rubygems'
require 'httparty'

# class
class Resty
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com/'

  def posts
    self.class.get('/posts')
  end
end

resty = Resty.new

resty.posts.each do |v|
  #puts "ID: #{v['id']} \nTitle: #{v['title']}"
  puts "#{v["userId"]}"
end
