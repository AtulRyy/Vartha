const cheerio=require('cheerio');
const axios=require('axios');
const fs=require('fs');

const url="https://indianexpress.com/";
const articleData={};

async function getArticle(){
     const {data:html}=await axios.get(url);
     return html;
};

getArticle().then((res)=>{
    const $=cheerio.load(res);
    $('.right-part .top-news > ul').each((i,movie)=>{
        const title=$(movie).find('a').text();
        const link=$(movie).find('a').attr('href');
        articleData[title]=link;
    })
    fs.writeFile('articleData.json',JSON.stringify(articleData),(err)=>{
        if(err) throw err;
        console.log("file saved");
    })
})
const express=require('express');
const app=express();
app.get('/',(req,res)=>{
    res.json(articleData);
})
app.listen(3000,()=>{
    console.log("listening to 3000");
})