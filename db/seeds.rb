#encoding=utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#encoding=utf-8

results = ["정회장 찬성", "부회장 찬성"]

results.each do |name| 
  a = Results.new
  a.name = name
  a.save
end