# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


scatter_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas, "default", .95, .95, -50, 200, -50, 200);
g.drawGrid();

const rand = g.genFn((x) => Math.random() * x + Math.random() * 5, 10, 1, .1);
g.drawPoints(rand, 2);
JS

Example.new(title: "Scatter Graph", 
            description: "Example of a Scatter Graph",
            javascript: scatter_graph,
            graph_type: "scatter",
            likes: 2).save

line_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas, "default", .95, .95, -50, 200, -50, 200);
g.drawGrid();

const data = [{x: 0, y: 0}, {x: 100, y: 10}, {x: 200, y: 20}, {x: 300, y: 30}];
g.drawLine(data, "blue");

const moarData = [{x: 0, y: 0}, {x: 100, y: 100}, {x: 200, y: 200}, {x: 300, y: 300}];
g.drawLine(moarData, "red");
JS

Example.new(title: "Line Graph", 
            description: "My favorite line graph",
            javascript: line_graph,
            graph_type: "line",
            likes: 2).save

function_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas);
g.drawGrid();

const sine = g.genFn(Math.sin, 10, 1, .1);
g.drawLine(sine);

const cos = g.genFn(Math.cos, 20, 5, .2);
g.drawLine(cos);

const tan = g.genFn(Math.tan, 10, 5, .1);
g.drawLine(tan);
JS

Example.new(title: "Function Graph", 
  description: "Multiple Functions",
  javascript: function_graph,
  graph_type: "function",
  likes: 3).save

sahir_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas);
g.drawGrid();

const sahir = g.genFn(sahirFn, 20, 10, 1);
g.drawLine(sahir);

const natLog = g.genFn(naturalLog, 20, 5, 1);
g.drawLine(natLog);

function naturalLog(x) {
  return Math.log(x);
}

function sahirFn(x) {
  return Math.pow(Math.atan(x), 1 / 3);
}
JS

Example.new(title: "Sahir Graph", 
  description: "Sahir's Function",
  javascript: sahir_graph,
  graph_type: "complex function",
  likes: 2).save

