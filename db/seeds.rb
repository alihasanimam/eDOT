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
Employee.create!(email: 'nurse2@edot.com', password: 'password', password_confirmation: 'password', name: 'Test Nurse2', type: 'nurse', health_center_id: 2)
Employee.create!(email: 'technician1@edot.com', password: 'password', password_confirmation: 'password', name: 'Technician2', type: 'technician', health_center_id: 2)
Employee.create!(email: 'technician2@edot.com', password: 'password', password_confirmation: 'password', name: 'Technician2', type: 'technician', health_center_id: 2)
Employee.create!(email: 'chw3@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-3', type: 'chw', health_center_id: 2)
Employee.create!(email: 'chw4@edot.com', password: 'password', password_confirmation: 'password', name: 'Community Health Worker-4', type: 'chw', health_center_id: 2)

Medicine.delete_all
Medicine.create!(name: 'RHZE', description: 'RHZE', type: 'general')
Medicine.create!(name: 'H', description: 'RHZE', type: 'others')
Medicine.create!(name: 'RH', description: 'RHZE', type: 'others')
Medicine.create!(name: 'Z', description: 'RHZE', type: 'others')
Medicine.create!(name: 'E', description: 'RHZE', type: 'others')
Medicine.create!(name: 'HE', description: 'RHZE', type: 'others')

Community.delete_all
Community.create!(name:'Community 1', address: '909 B South Darling, Angola, IN 46703', employee_id: 4, health_center_id: 1)
Community.create!(name:'Community 2', address: '909 B South Darling, Angola, IN 46703', employee_id: 4, health_center_id: 1)
Community.create!(name:'Community 3', address: '909 B South Darling, Angola, IN 46703', employee_id: 4, health_center_id: 1)
Community.create!(name:'Community 4', address: '909 B South Darling, Angola, IN 46703', employee_id: 5, health_center_id: 1)
Community.create!(name:'Community 5', address: '909 B South Darling, Angola, IN 46703', employee_id: 5, health_center_id: 2)
Community.create!(name:'Community 6', address: '909 B South Darling, Angola, IN 46703', employee_id: 5, health_center_id: 2)
Community.create!(name:'Community 7', address: '909 B South Darling, Angola, IN 46703', employee_id: 11, health_center_id: 2)
Community.create!(name:'Community 8', address: '909 B South Darling, Angola, IN 46703', employee_id: 11, health_center_id: 2)
Community.create!(name:'Community 9', address: '909 B South Darling, Angola, IN 46703', employee_id: 12, health_center_id: 1)


PatientType.delete_all
PatientType.create!(name: 'Caso Novo', description: 'BK+, E.P.e BK-graves e nao graves> 5 anos')
PatientType.create!(name: 'Retratamento', description: 'recaidas, fracassos e reaparecidos')
PatientType.create!(name: 'Pediatrico', description: 'Casos Novos < 5 anos')

Patient.delete_all
Patient.create!(name: 'Patient 1', address: '909 B South Darling, Angola, IN 46703', national_id: 'A00212B554010', gender: 'Male', birthday: '1976-1-10', status: 'new', phone: '+244022123456', cared_by_id:4, patient_type_id: 1)
Patient.create!(name: 'Patient 2', address: '909 B South Darling, Angola, IN 46703', national_id: 'B00212B554011', gender: 'Female', birthday: '1981-1-11', status: 'new', phone: '+244022123433', cared_by_id:5, patient_type_id: 1)
Patient.create!(name: 'Patient 3', address: '909 B South Darling, Angola, IN 46703', national_id: 'C00212B554012', gender: 'Male', birthday: '1989-1-2', status: 'new', phone: '+244022123422', cared_by_id:4, patient_type_id: 1)
Patient.create!(name: 'Patient 4', address: '902 B South Darling, Angola, IN 46703', national_id: 'D00212B554013', gender: 'Female', birthday: '1983-1-3', status: 'cured', phone: '+244022123411', cared_by_id:5, patient_type_id: 2)
Patient.create!(name: 'Patient 5', address: '902 B South Darling, Angola, IN 46703', national_id: 'E00212B554014', gender: 'Male', birthday: '1989-6-2', status: 'ongoing', phone: '+244022123333', cared_by_id:5, patient_type_id: 2)
Patient.create!(name: 'Patient 6', address: '909 B South Darling, Angola, IN 46703', national_id: 'F00212B554014', gender: 'Male', birthday: '1985-5-9', status: 'new', phone: '+2440221278867', cared_by_id:11, patient_type_id: 3)
Patient.create!(name: 'Patient 7', address: '901 B South Darling, Angola, IN 46703', national_id: 'G00212B554014', gender: 'Female', birthday: '1988-3-8', status: 'new', phone: '+24402212345', cared_by_id:11, patient_type_id: 2)
Patient.create!(name: 'Patient 8', address: '901 B South Darling, Angola, IN 46703', national_id: 'H00212B554014', gender: 'Female', birthday: '1983-3-5', status: 'new', phone: '+2440221231122', cared_by_id:12, patient_type_id: 1)
Patient.create!(name: 'Patient 9', address: '909 B South Darling, Angola, IN 46703', national_id: 'I00212B554014', gender: 'Male', birthday: '1985-1-7', status: 'new', phone: '+24402218755', cared_by_id:4, patient_type_id: 3)

LabReport.delete_all
LabReport.create!(patient_id: 1, month: 2, data1: '500', data2: '800', testedby_id: 9)
LabReport.create!(patient_id: 1, month: 5, data1: '300', data2: '500', testedby_id: 9)
LabReport.create!(patient_id: 1, month: 8, data1: '3500', data2: '500', testedby_id: 9)
LabReport.create!(patient_id: 2, month: 2, data1: '5050', data2: '600', testedby_id: 9)
LabReport.create!(patient_id: 2, month: 5, data1: '120', data2: '400', testedby_id: 9)
LabReport.create!(patient_id: 3, month: 2, data1: '400', data2: '300', testedby_id: 10)
LabReport.create!(patient_id: 3, month: 5, data1: '100', data2: '300', testedby_id: 9)
LabReport.create!(patient_id: 3, month: 8, data1: '700', data2: '200', testedby_id: 9)
LabReport.create!(patient_id: 4, month: 2, data1: '900', data2: '100', testedby_id: 10)
LabReport.create!(patient_id: 4, month: 5, data1: '500', data2: '200', testedby_id: 10)
LabReport.create!(patient_id: 5, month: 2, data1: '600', data2: '100', testedby_id: 10)
LabReport.create!(patient_id: 5, month: 5, data1: '400', data2: '200', testedby_id: 9)
LabReport.create!(patient_id: 5, month: 8, data1: '300', data2: '200', testedby_id: 9)
LabReport.create!(patient_id: 6, month: 2, data1: '900', data2: '200', testedby_id: 9)
LabReport.create!(patient_id: 7, month: 2, data1: '400', data2: '300', testedby_id: 9)
LabReport.create!(patient_id: 8, month: 2, data1: '100', data2: '300', testedby_id: 9)
LabReport.create!(patient_id: 8, month: 5, data1: '300', data2: '500', testedby_id: 10)
LabReport.create!(patient_id: 8, month: 8, data1: '600', data2: '400', testedby_id: 9)
LabReport.create!(patient_id: 9, month: 2, data1: '300', data2: '200', testedby_id: 10)
LabReport.create!(patient_id: 9, month: 5, data1: '200', data2: '800', testedby_id: 10)
LabReport.create!(patient_id: 9, month: 8, data1: '100', data2: '200', testedby_id: 10)