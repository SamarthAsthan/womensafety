//importing dependecies
import express from "express";
import mongoose from "mongoose";


//common end point for users
function womenHome(req, res) {
    return res.send("This is common end point for women related routes.");
  }


  export default {womenHome};