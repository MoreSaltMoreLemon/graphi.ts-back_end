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

line_graph = 
<<-JS
let canvas = document.querySelector("canvas");
            let g = new Graphi(canvas);
            g.draw(canvas);
            let sine = g.genFn(Math.sin, { x: 0, y: 200 }, canvas.width, 200, 50, 5);
            g.drawLine(sine, "blue");
JS

Example.new(title: "Line Graph", 
            description: "My favorite line graph",
            javascript: line_graph,
            graph_type: "line",
            likes: 2).save