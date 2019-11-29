const express = require("express");
const cors = require("cors");
const alumnos = require("./data/alumnos.json");
const app = express();
// middlewares
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(cors());
// routing
app.get("/api-cognos/alumnos", (req, res) => {
  res.json(alumnos);
});
app.get("/api-cognos/alumnos/:id", (req, res) => {
  const id = req.params.id;
  const alumno = alumnos.find(itm => itm.id == id);
  res.json(alumno);
});
app.post("/api-cognos/alumnos/", (req, res) => {
  alumnos.push(req.body);
  res.json(req.body);
});
app.put("/api-cognos/alumnos/:id", (req, res) => {
  const id = req.params.id;
  const index = alumnos.findIndex(itm => itm.id == id);
  alumnos[index] = req.body;
  res.json(req.body);
});
app.delete("/api-cognos/alumnos/:id", (req, res) => {
  const id = req.params.id;
  const index = alumnos.findIndex(itm => itm.id == id);
  alumnos.splice(index, 1);
  res.json({ id });
});

app.listen(3000, () => {
  console.log("Server escuchando en el puerto 3000");
});
