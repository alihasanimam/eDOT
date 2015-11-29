# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Employee.delete_all
Employee.create!(email: 'admin@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Admin', type: 'admin')
Employee.create!(email: 'doctor@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Doctor', type: 'doctor')
Employee.create!(email: 'nurse@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Nurse', type: 'nurse')
Employee.create!(email: 'technician@edot.com', password: 'password', password_confirmation: 'password', name: 'Technician', type: 'technician')
Employee.create!(email: 'chw1@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-1', type: 'chw')
Employee.create!(email: 'chw2@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-2', type: 'chw')

