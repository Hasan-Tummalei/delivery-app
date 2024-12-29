
const express = require('express');
const app = express()
const { categories, items } = require('./data')

app.use(express.json())

app.get("/categories", (req, res) => {
    return res.status(200).json(
        categories
    );
},);
app.get("/items", (req, res) => {
    return res.status(200).json(
        items
    );
},);
app.listen((3000), () => {
    console.log("http://localhost:3000/");
});



resp = []

// resp.map((item) => Category())