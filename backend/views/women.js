//importing dependencies
import express from 'express';
//configuring router
const router=express.Router();


//importing user controller
import womenController from '../controllers/women.js';

//common endpoint for users users
router.get('/',womenController.womenHome);


//---to be added more here ---
//router.use('/auth', require('../controllers/auth.js'));



export default router;