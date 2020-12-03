# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

company = Company.create(name: 'GreatCo')
Talent.create(name: 'Emanuel')
Employee.create(name: 'Fernanda', company: company)
