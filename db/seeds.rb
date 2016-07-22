# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'securerandom'

User.create(email:"justin@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"kerry@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"george@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"heather@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"gina@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"amanda@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"gladys@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)
User.create(email:"cora@curvecommunications.com", password:"bcycna2016", key: SecureRandom.hex, admin: true)