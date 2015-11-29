# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

HealthCenter.delete_all
HealthCenter.create!(name: 'Faith Community Health Clinic', address: '909 B South Darling, Angola, IN 46703', type: 'treatment', phone: '2606653146')
HealthCenter.create!(name: 'Faith Community Health Clinic2', address: '790 C South Darling, Angola, IN 46712', type: 'diagnostic', phone: '2606653121')
HealthCenter.create!(name: 'Faith Community Health Clinic3', address: '290 A South Darling, Angola, IN 46432', type: 'treatment', phone: '260665987')


Employee.delete_all
Employee.create!(email: 'admin@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Admin', type: 'admin', health_center_id: 1)
Employee.create!(email: 'doctor@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Doctor', type: 'doctor', health_center_id: 1)
Employee.create!(email: 'nurse@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Nurse', type: 'nurse', health_center_id: 1)
Employee.create!(email: 'chw1@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-1', type: 'chw', health_center_id: 1)
Employee.create!(email: 'chw2@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-2', type: 'chw', health_center_id: 1)

Employee.create!(email: 'admin2@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Admin2', type: 'admin', health_center_id: 2)
Employee.create!(email: 'doctor2@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Doctor2', type: 'doctor', health_center_id: 2)
Employee.create!(email: 'nurse2@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Nurse2', type: 'nurse', heath_center_id: 2)
Employee.create!(email: 'technician1@edot.com', password: 'password', password_confirmation: 'password', name: 'Technician2', type: 'technician', health_center_id: 2)
Employee.create!(email: 'technician2@edot.com', password: 'password', password_confirmation: 'password', name: 'Technician2', type: 'technician', health_center_id: 2)
Employee.create!(email: 'chw3@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-3', type: 'chw', health_center_id: 2)
Employee.create!(email: 'chw4@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-4', type: 'chw', health_center_id: 2)

Patient.delete_all
Patient.create!(name: 'Patient 1', address: 'password', national_id: '00212B554010', gender: 'Male', birthday: '1984-1-10', status: 'new', phone: '+244022123456')
Patient.create!(name: 'Patient 2', address: 'password', national_id: '00212B554011', gender: 'Female', birthday: '1984-1-11', status: 'new', phone: '+244022123433')
Patient.create!(name: 'Patient 3', address: 'password', national_id: '00212B554012', gender: 'Male', birthday: '1984-1-2', status: 'new', phone: '+244022123422')
Patient.create!(name: 'Patient 4', address: 'password', national_id: '00212B554013', gender: 'Female', birthday: '1984-1-3', status: 'cured', phone: '+244022123411')
Patient.create!(name: 'Patient 5', address: 'password', national_id: '00212B554014', gender: 'Male', birthday: '1984-4-5', status: 'ongoing', phone: '+244022123439')