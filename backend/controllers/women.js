//importing dependecies
import bcrypt from "bcryptjs";
import Cryptr from "cryptr";

//importing models
import womenSchema from "../models/women.js";

//common end point for users
function womenHome(req, res) {
    return res.send("This is common end point for women related routes.");
  }


//to get list of all women
async function getWomen(req, res) {
    try {
      let women = await womenSchema.find();
      if (!women) {
        res.send("no women found");
      }
      res.send(women);
      return;
    } catch (error) {
      res.send("error in finding women: ");
      return error;
    }
  }

//to create new user
async function signup(req, res) {
    //we can create user with given aadhar id
    var { firstName, lastName, email, mobile,aadhar } = req?.body;
    try {
      const extinguisher = await womenSchema.findOne({ aadhar });
      if (extinguisher) {
        //User already Exists
        res.status(404).send("User with this aadhar already exists");
      } else {
        //encrypting details
        const cryptr = new Cryptr(process.env.encryptionKey);
        firstName = cryptr.encrypt(firstName);
        lastName = cryptr.encrypt(lastName);
        email = cryptr.encrypt(email);
        mobile = cryptr.encrypt(mobile);
        aadhar = cryptr.encrypt(aadhar);
        //user with new aadhar
        const newwoman = womenSchema.create({
          firstName,
          lastName,
          email,
          mobile,
          aadhar,
        });
        //sending otp to new user's email
        res.send("New woman signed up successfully");
      }
      return;
    } catch (error) {
      res.send("error in signning up new woman: " + error);
    }
  };
  //to send sos 
  function sos(req,res){
    var { longitude,latitude,aadhar } = req?.body;
    //sending details to nearest control room

    //sending details to nearest pcr 

  }

  //to delete all documents in collection
  async function deleteAll(req,res){
    const status=await womenSchema.deleteMany({});
    if(status.acknowledged){
        res.send('successfully deleted')
    }else{
        res.send('error in deleting');
    }
    
  };
  export default {womenHome,getWomen,signup,deleteAll,sos};