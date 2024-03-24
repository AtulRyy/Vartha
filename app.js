const express = require('express');
const app = express();
const User = require('./models/user')
const mongoose=require('mongoose')
const loginRoute = require('./routes/loginRoute')
const homeRoute=require('./routes/homeRoute')
const dotenv = require('dotenv')
dotenv.config();

app.set("view engine", "ejs")
app.use('/static', express.static("public"))
app.use(express.urlencoded({extended:false}))

mongoose.connect(process.env.MONGO_CONNECTION)
.then(()=>{
console.log("mongodb succefully connected");
})
.catch((err)=>{{
    console.log("mongodb error",err);
}})

// const newUser = new User({ name: 'atulry', password: 'nik009' })
// newUser.save()
// .then(savedUser=>{
//     console.log("new user added",savedUser);
// })


app.get('/',(req,res)=>{
    res.redirect('/login')
})
app.use('/home',homeRoute)

app.use('/login', loginRoute)




app.listen(3000, console.log("server is now running at port 3000"))