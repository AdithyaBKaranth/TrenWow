const router = require('express').Router();
const DocModel = require('./../models/user_model');
const bcrypt = require('bcrypt');
const jsonwebtoken = require('jsonwebtoken');
const jwt = require('./../middlewares/jwt');


router.post("/createaccount", async function(req, res) {
    const docData = req.body;

    // Encrypt(Hash) the password
    /*const password = docData.password;
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);
    docData.password = hashedPassword;
    */
    // Create the JWT Token
    const token = await jsonwebtoken.sign({ Docid: docData.Docid }, "thisismysecretkey");
    docData.token = token;

    const newUser = new DocModel(docData);
    await newUser.save(function(err) {
        if(err) {
            res.json({ success: false, error: err });
            console.log("User not created");
            return;
        }
        console.log("User created");
        res.json({ success: true, data: newUser });
    });
});

router.post("/login", async function(req, res) {
    const email = req.body.email;
    const password = req.body.password;

    const foundUser = await DocModel.findOne({ email: email });
    if(!foundUser) {
        res.json({ success: false, error: "user-not-found" });
        console.log("Login fail");
        return;
    }

    const correctPassword = await bcrypt.compare(password, foundUser.password);
    if(!correctPassword) {
        res.json({ success: false, error: "incorrect-password" });
        console.log("Login fail");
        return;
    }

    res.json({ success: true, data: foundUser });
    console.log("Login Success");
});

router.put("/", async function(req, res) {
    const docData = req.body;
    const userid = docData.userid;

    const result = await DocModel.findOneAndUpdate({ userid: userid }, docData);

    if(!result) {
        res.json({ success: false, error: "user-not-found" });
        return;
    }

    res.json({ success: true, data: docData });
});


module.exports = router;