# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


scatter_graph = 
<<-JS
let canvas = document.querySelector("canvas");
let g = new Graphi(canvas);
g.draw(canvas);
const sine = g.genFn(Math.sin, {x: 0, y: 40}, canvas.width, 100, 50, 15);
g.drawPoints(sine, 2);
JS

Example.new(title: "Scatter Graph", 
            description: "Example of a Scatter Graph",
            javascript: scatter_graph,
            graph_type: "scatter",
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

function_graph = 
<<-JS
let canvas = document.querySelector("canvas");
let g = new Graphi(canvas);
g.draw(canvas);
const cos = g.genFn(Math.cos, {x: 0, y: 40}, canvas.width, 100, 50, 20);
g.drawLine(cos);
const tan = g.genFn(Math.tan, {x: 0, y: 40}, canvas.width, 100, 50, 20);
g.drawLine(tan);
JS

Example.new(title: "Function Graph", 
  description: "Multiple Functions",
  javascript: function_graph,
  graph_type: "function",
  likes: 3).save

sahir_graph = 
<<-JS
// identify your canvas element
let canvas = document.querySelector("canvas");
let g = new Graphi(canvas);

// draw your axis
g.draw(canvas);

function sahirFn(x) {
 return Math.pow(Math.atan(x), 1 / 3);
}

// graph your function
// generate coordinates
const sahir = 
g.genFn(
        sahirFn,        // function to graph
        {x: 0, y: 40},  // starting coordinate
        canvas.width,   // max x value
        100,            // amplitude
        50,             // frequency
        1               // step
    );
// render function
g.drawLine(sahir);

const natLog = g.genFn(naturalLog, {x: 0, y: 40}, canvas.width, 100, 50, 1);
g.drawLine(natLog);

const enLogEn = g.genFn(nLogN, {x: 0, y: 0}, canvas.width, 1, 10, 1);
g.drawLine(enLogEn);

const logEn = g.genFn(logN, {x: 0, y: 0}, canvas.width, 1, 10, 1);
g.drawLine(logEn);



function naturalLog(x) {
  return Math.log(x);
}

function logN(x) {
  return Math.log2(x);
}

function nLogN(x) {
  return x * Math.log2(x);
}

JS

Example.new(title: "Sahir Graph", 
  description: "Sahir's Function",
  javascript: sahir_graph,
  graph_type: "complex function",
  likes: 2).save