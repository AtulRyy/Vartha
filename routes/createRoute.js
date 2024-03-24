const express=require('express')
const router=express.Router();
const Article=require('../models/articleData')


router.get("/",(req,res)=>{
    res.render('create_blog.ejs')
})
router.post('/',async(req,res)=>{
    const articleData=new Article({
        heading:req.body.title,
        content:req.body.articleData,
        hyperlink:req.body.hyperlinks
    })
    try{
        await articleData.save();
        res.redirect('/create-article');
    }
    catch(err){
        res.send("Error uploading to database")
    }
})


module.exports=router;