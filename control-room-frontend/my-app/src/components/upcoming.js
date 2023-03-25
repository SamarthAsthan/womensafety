
import React, {useEffect,useState} from "react";
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
import Grid from '@mui/material/Grid';
import Stack from '@mui/material/Stack';
import axios from 'axios';




const data=[
    
    {name:'Siya',aadhar:'9999 4105 7058',mobile:'',photo:'',nearestPCR:'',longitude:'',latitude:'',status:'Safe Zone'},
    {name:'Preeti',aadhar:'7899 7165 8847',mobile:'',photo:'',nearestPCR:'',longitude:'',latitude:'',status:'Reached'},
    {name:'Shalini',aadhar:'8999 3311 9405',mobile:'',photo:'',nearestPCR:'',longitude:'',latitude:'',status:'In Help'},
];



export default function BasicCard() {
const [lat, setlat] = React.useState(null);
const [long,setlong]=React.useState(null);

//backend request for sso
   useEffect(() => {
    const interval = setInterval(() => {
      console.log('This will run every second!');
      //every 2 sec get request
    axios.get('http://localhost:5000/sso', {
    })
    .then(function (response) {
        setlat(response.data.lat);
        setlong(response.data.long);
        console.log(response);
    })
    }, 2000);
  }, []);

    const bull = (
        <Box
          component="span"
          sx={{ display: 'inline-block', mx: '2px', transform: 'scale(0.8)' }}
        >
          •
        </Box>
      );
  return (
    <>
    {/*mapping testimonials*/}
    <Stack direction="row-reverse"
        justifyContent="center"
        alignItems="center"
        spacing={12}
        sx={{marginTop:'5rem'}}>
    {data.map((data)=>(
         <Card sx={{ minWidth: 290 }}>
         <CardContent>
           <Typography sx={{ fontSize: '3rem' }} color="text.secondary" gutterBottom>
             {data.name}
           </Typography>
           <Typography variant="h6" component="div" sx={{fontSize:'1rem',fontWeight:'bold'}} >
            Aadhar Number: {data.aadhar}
           </Typography>
           <Typography sx={{ mt:1 }} color="text.secondary">
             Latitude:{data.name=='Shalini'?<Typography sx={{fontWeight:'bold',fontSize:'1.5rem'}}>{lat}</Typography>:data.name=="Siya"?<Typography sx={{fontWeight:'bold',fontSize:'1.5rem'}}>12.839863988560795</Typography>:<Typography sx={{fontWeight:'bold',fontSize:'1.5rem'}}>19.789863988560795</Typography>} 
           </Typography>
           <Typography sx={{mb:1 }} color="text.secondary">
             Longitude:{data.name=="Shalini"?<Typography sx={{fontWeight:'bold',fontSize:'1.5rem'}}>{long}</Typography>:data.name=="Siya"?<Typography sx={{fontWeight:'bold',fontSize:'1.5rem'}}>80.154932120384846</Typography>:<Typography sx={{fontWeight:'bold',fontSize:'1.5rem'}}>15.659863988560762</Typography>}
           </Typography>
           <Typography variant="subtitle2" sx={{fontWeight:'bold'}}>
             Status: {data.status=='In Help'?<Typography variant="subtitle2" sx={{fontWeight:'bold',color:'red!important',fontSize:'1.5rem'}}>{data.status}</Typography>:data.status=='Safe Zone'?<Typography variant="subtitle2" sx={{fontWeight:'bold',color:'green',fontSize:'1.5rem'}}>{data.status}</Typography>:<Typography variant="subtitle2" sx={{fontWeight:'bold',color:'purple',fontSize:'1.5rem'}}>{data.status}</Typography>}
           </Typography>
         </CardContent>
         <CardActions>
           <Button size="small">Fetch More Details</Button>
         </CardActions>
       </Card>
    ))}
    </Stack>    
  </> 
  )
};