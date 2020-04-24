const express = require('express');
const app = express();
const mongoose = require ('mongoose');
const bodyParser = require ('body-parser');
const cors =require('cors');
require('dotenv/config');

// middle wares
app.use(cors());
app.use(bodyParser.json());

//import routes
const postsRoute = require('./routes/posts');

app.use('/posts', postsRoute);

//routes
app.get('/', (req, res) =>{
res.send('we are on home');
});

app.get('/posts', (req, res) =>{
res.send('we are on posts');
});

//conect to db
mongoose.connect (process.env.DB_CONNECT, { useNewUrlParser: true },() =>
console.log('connectd DB!')
);
//how to listen to the server
app.listen(3000); 