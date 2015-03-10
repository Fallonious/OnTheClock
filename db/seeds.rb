# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create( name:"world domination", max_hours: 37)
Project.create( name:"learn interwebs", max_hours: 35)
Project.create( name:"amaze clients", max_hours: 40)
Project.create( name:"win", max_hours: 40)

Developer.create( email:"amerigo@amerigo.com", password:"columbus")
Developer.create( email:"ted@ted.com", password:"ted")

TimeEntry.create( duration: 5.0, project_id: 1, developer_id: 1, worked_on: 2015-02-05)
TimeEntry.create( duration: 6.0, project_id: 2, developer_id: 2, worked_on: 2015-02-04)
TimeEntry.create( duration: 15.0, project_id: 3, developer_id: 2, worked_on: 2015-02-03)
