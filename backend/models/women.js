import mongoose from "mongoose";
//creating schema
const womenSchema = new mongoose.Schema({
  //basic info
  firstName: { type: String, required: true },
  lastName: { type: String },
  mobile:{type:String},
  email:{type:String,required:true},
  dob: { type: Date },
  //aadhar
  aadhar:{type:String,required:true},
  aadharOtp:{type:Number,default:0},
  //utilities
  aadharMobile:{type:String},
  emailVerified:{type:Boolean,default:false},
  aadharMobileVerified:{type:Boolean,default:false},
  //near one contact details
  nearOnesName:{type: [String], default: [] },
  nearOnesContact:{type: [String], default: [] },
  //location 
  locationLatitude:{type:String,default:'#'},
  locationLongitude:{type:String,default:'#'},
});

//exporting  user mongodb model
export default mongoose.model("Women", womenSchema);
