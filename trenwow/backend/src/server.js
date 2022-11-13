const express = require('express');
const app = express();
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static('uploads'));

mongoose.connect("mongodb+srv://ij007:NLnB2vd9UQrXL9ac@cluster0.dwkc7ra.mongodb.net/trenwow?retryWrites=true&w=majority").then(function() {
//NLnB2vd9UQrXL9ac
    app.get("/", function(req, res) {
        res.send("trenwow Ecommerce Setup");
    });

    const userRoutes = require('./routes/user_routes');
    app.use("/api/user", userRoutes);

});

const PORT = 5000
app.listen(PORT, function() {
    console.log(`Server started at PORT: ${PORT}`);
});