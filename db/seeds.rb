# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Example.new(title: "Bar Graph", 
            description: "My favorite bar graph",
            javascript: "blahblahblahblahblah",
            graph_type: "bar",
            likes: 2).save

Example.new(title: "Line Graph", 
            description: "My favorite line graph",
            javascript: "blahblahblahblahblah",
            graph_type: "line",
            likes: 2).save