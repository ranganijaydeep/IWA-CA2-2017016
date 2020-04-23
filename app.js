 const express=require('express');
 const app=express();
 const mongoose=require('mongoose');
 const bodyParser=require('body-parser');
 require('dotenv/config');

 app.use(bodyParser.json());
// import routs 
const postsRoute =require('./routes/posts');

app.use('/posts',postsRoute);

 // routes

app.get('/',(req,res)=>{
     res.send('we are on home');
});



// connect to DB
mongoose.connect(process.env.DB_CONNECT,{ useNewUrlParser: true },
()=>console.log('connected to DB!')
);

// listening to server 
app.listen(3000);
