//environment setup
import * as dotenv from "dotenv";
dotenv.config();

//importing depenedices
import express from "express";
import bodyParser from "body-parser";
import mongoose from "mongoose";
import { initializeApp } from 'firebase/app';
import { getDatabase , ref, onValue} from "firebase/database";
import cors from "cors";



//app configuration
const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
const PORT = 5000;
app.use(cors());

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
//firebase db initializing
  const app2 = initializeApp(firebaseConfig);

//getting location of user 1 real time
var latitude=0;
var longitude=0;
  const db = getDatabase();
  const starCountRef = ref(db, 'Locations/user1');
  onValue(starCountRef, (snapshot) => {
    const data = snapshot.val();
    latitude=data.latitude;
    longitude=data.longitude;
    console.log(data);
  });
  

app.get("/", function (req, res) {
    res.send("Homepage");
  });

//importing routers/views
import womenRoutes from "./views/women.js";


//middlewares
app.use("/women", womenRoutes);

//sso triggered sample
app.get('/sso',function(req,res){
  res.json({lat:latitude,long:longitude})
});
//port
app.listen(PORT, function () {
    console.log("Server started on port: " + PORT);
  });
  