# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create!([{ code: 'SFO' }, { code: 'NYC' }, { code: 'CHI' }, { code: 'DFT' }, { code: 'BOS' }, { code: 'DTW' }, { code: 'TPA' }, { code: 'PDX' }, { code: 'LAX' }])
flights = Flight.create!([
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('01/10/2021 10:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 1 }, 
        { start: 'NYC', end: 'SFO', scheduled: DateTime.strptime('01/10/2021 02:00 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('7:00', '%H:%M'), airport_id: 2 },
        { start: 'NYC', end: 'SFO', scheduled: DateTime.strptime('01/10/2021 10:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 2 },
        { start: 'NYC', end: 'SFO', scheduled: DateTime.strptime('01/11/2021 10:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 2 },
        { start: 'NYC', end: 'SFO', scheduled: DateTime.strptime('02/16/2021 08:00 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('5:30', '%H:%M'), airport_id: 2 }, 
        { start: 'NYC', end: 'SFO', scheduled: DateTime.strptime('04/01/2021 02:30 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 2 },
        { start: 'NYC', end: 'SFO', scheduled: DateTime.strptime('06/30/2021 10:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 2 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('01/10/2021 10:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('01/10/2021 10:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('5:00', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('01/10/2021 11:30 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('07/10/2021 01:30 AM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('5:00', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('09/09/2021 10:30 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('10/10/2021 04:00 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:30', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('12/30/2021 05:00 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('6:00', '%H:%M'), airport_id: 1 },
        { start: 'SFO', end: 'NYC', scheduled: DateTime.strptime('01/10/2022 10:30 PM', '%m/%d/%Y %I:%M %p'), duration: Time.strptime('4:45', '%H:%M'), airport_id: 1 }])