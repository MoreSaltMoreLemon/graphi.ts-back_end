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
let g = new Graphi(canvas, {label: "default", startX: -50, endX: 200, startY: -50, endY: 200});
g.drawGrid();

const rand = g.genFn((x) => Math.random() * x + Math.random() * 5, {amplitude: 10, frequency: 1, step: .1});
g.drawPoints(rand, {label: "scatter"});
JS

Example.new(title: "Scatter Graph", 
            description: "Example of a Scatter Graph",
            javascript: scatter_graph,
            graph_type: "y = x * random + 5 * random",
            likes: 2).save

line_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas, {theme: "default", startX: -50, endX: 200, startY: -50, endY: 200});
g.drawGrid();

const data = [{x: 0, y: 0}, {x: 100, y: 10}, {x: 200, y: 20}, {x: 300, y: 30}];
g.drawLine(data, {color: "blue", label: "y = x / 10"});

const moarData = [{x: 0, y: 0}, {x: 100, y: 100}, {x: 200, y: 200}, {x: 300, y: 300}];
g.drawLine(moarData, {color: "red", label: "y = x"});
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

const sine = g.genFn(Math.sin, {amplitude: 10, frequency: 1, step: .1});
g.drawLine(sine, {label: "sine"});

const cos = g.genFn(Math.cos, {amplitude: 10, frequency: 1, step: .1});
g.drawLine(cos, {label: "cosine"});

const tan = g.genFn(Math.tan, {amplitude: 10, frequency: 1, step: .1});
g.drawLine(tan, {label: "tangent"});
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

const sahir = g.genFn(sahirFn, {amplitude: 20, frequency: 10, step: 1});
g.drawLine(sahir, {label: "sahir"});

const natLog = g.genFn(naturalLog, {amplitude: 20, frequency: 5, step: 1});
g.drawLine(natLog, {label: "natural log"});

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

bezier_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas, {theme: "dark", startX: -50, endX: 200, startY: -50, endY: 200});
g.drawGrid();

const sine = g.genFn((x) => Math.sin(x) * 40, {amplitude: 1, frequency: 1, step: 30});
g.drawBezier(sine, {weight: 30, label: "bezier curve of sine"});
g.drawPoints(sine);
JS

Example.new(title: "bezier Graph", 
            description: "Example of a bezier Graph",
            javascript: bezier_graph,
            graph_type: "bezier",
            likes: 2).save

line_with_points_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas, {theme: "light", startX: -50, endX: 200, startY: -50, endY: 200});
g.drawGrid();

const sine = g.genFn((x) => Math.sin(x) * 40, {amplitude: 1, frequency: 1, step: 30});
g.drawBezier(sine, {weight: 30});
g.drawPoints(sine, {label: "sine"});

g.drawLineWithPoints([{x: 0, y: 0}, {x: 10, y: 20}, {x: 30, y: -20}], {label: "y = ???"});
JS

Example.new(title: "Line with Points Graph", 
  description: "Example of a Line with Points Graph",
  javascript: line_with_points_graph,
  graph_type: "line_with_points",
  likes: 2).save

big_o_graph = 
<<-JS
const canvas = document.querySelector('canvas');
let g = new Graphi(canvas, {theme: "dark", startX: 0, endX: 100, startY: 0, endY: 100});
g.drawGrid();

const constant = g.genFn((x) => 10, {amplitude: 1, frequency: 1, step: 1});
g.drawLine(constant, {label: "constant"});

const logN = g.genFn((x) => Math.log2(x), {amplitude: 1, frequency: 1, step: 1});
g.drawLine(logN, {label: "log(n)"});

const linear = g.genFn((x) => x, {amplitude: 1, frequency: 1, step: 1});
g.drawLine(linear, {label: "linear"});

const nLogN = g.genFn((x) => x * Math.log2(x), {amplitude: 1, frequency: 1, step: 1});
g.drawLine(nLogN, {label: "n * log(n)"});

const nSquared = g.genFn((x) => x**2, {amplitude: 1, frequency: 1, step: 1});
g.drawLine(nSquared, {label: "n^2"});

const nCubed = g.genFn((x) => x**3, {amplitude: 1, frequency: 1, step: 1});
g.drawLine(nCubed, {label: "n^3"});
JS

Example.new(title: "Big(O) Graph", 
  description: "Big O Graph",
  javascript: big_o_graph,
  graph_type: "exponential curves",
  likes: 2).save

big_o_graph = 
<<-JS
const canvas = document.querySelector('canvas');

const customTheme = {
    name: "custom",
    backgroundColor: {r: 245, g: 245, b: 245, a: 1},
    axisColor: {r: 230, g: 230, b: 230, a: 1},
    colors: [ {r: 255, g: 177, b: 193, a: 1}, 
              {r: 255, g: 176, b: 222, a: 1},
              {r: 75, g: 191, b: 192, a: 1},
              {r: 255, g: 99, b: 133, a: 1},
              {r: 0, g: 63, b: 65, a: 1},
              {r: 51, g: 53, b: 56, a: 1},
              {r: 255, g: 207, b: 161, a: 1},
              {r: 166, g: 223, b: 224, a: 1},
              {r: 153, g: 102, b: 255, a: 1}],
    lastColorIndex: 0
  }

let g = new Graphi(canvas, {theme: customTheme, startX: -50, endX: 200, startY: -50, endY: 200});
g.drawGrid();

const sine = g.genFn((x) => Math.sin(x) * 40, {amplitude: 1, frequency: 1, step: 30});
g.drawBezier(sine, {weight: 30, label: "bezier curve of sine"});
g.drawPoints(sine);
JS

Example.new(title: "Custom Theme", 
  description: "Custom Theme",
  javascript: customTheme,
  graph_type: "custom-theme",
  likes: 2).save