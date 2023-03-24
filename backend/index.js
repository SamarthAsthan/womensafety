//environment setup
import * as dotenv from "dotenv";
dotenv.config();

//importing depenedices
import express from "express";
import bodyParser from "body-parser";
import mongoose from "mongoose";
import { initializeApp } from 'firebase/app';
import { getDatabase , ref, onValue} from "firebase/database";



//app configuration
const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
const PORT = 5000;

//db connect
mongoose.set("strictQuery", false);
mongoose
  .connect(
    "mongodb+srv://" +
      process.env.dbUsername +
      ":" +
      process.env.dbPassword +
      "@cluster0.6oziyp0.mongodb.net/?retryWrites=true&w=majority"
  )

  .then(() => console.log("Database Connected!"));

  //firebase
  const firebaseConfig = {
    databaseURL: "https://nirbhaya-f298b-default-rtdb.firebaseio.com/",
  };

  const app2 = initializeApp(firebaseConfig);

  const db = getDatabase();
  const starCountRef = ref(db, 'Locations/user1');
  onValue(starCountRef, (snapshot) => {
    const data = snapshot.val();
    console.log(data);
  });
  

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
  