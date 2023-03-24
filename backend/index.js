//environment setup
import * as dotenv from "dotenv";
dotenv.config();

//importing depenedices
import express from "express";
import bodyParser from "body-parser";

//app configuration
const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
const PORT = 5000;

//routes
app.get("/", function (req, res) {
    res.send("Homepage");
  });

//importing routers/views
import womenRoutes from "./views/women.js";


//middlewares
app.use("/women", womenRoutes);

  

//port
app.listen(PORT, function () {
    console.log("Server started on port: " + PORT);
  });
  