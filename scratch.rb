require 'rubygems'
require 'json'
require 'pp'
require 'pry'

json = File.read('yaks.json')
yaks = File.open('yaks.txt', mode="w")
obj = JSON.parse(json)
thing = []
obj["messages"].each { |m| yaks.write(m["message"] + ' ') }
# binding.pry
