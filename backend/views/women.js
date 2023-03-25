//importing dependencies
import express from 'express';
//configuring router
const router=express.Router();


//importing user controller
import womenController from '../controllers/women.js';

//common endpoint for users users
router.get('/',womenController.womenHome);

//to get all women list in database
router.get("/getAll",womenController.getWomen);
//to signup woman
router.post("/signup",womenController.signup);

//to send sos 
router.post('/sos',womenController.sos);

//to delete all women from db
router.get('/deleteAll',womenController.deleteAll);

//---to be added more here ---
//router.use('/auth', require('../controllers/auth.js'));



export default router;