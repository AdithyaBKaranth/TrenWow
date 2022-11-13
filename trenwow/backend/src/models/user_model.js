const { Schema, model } = require('mongoose');

const userSchema = new Schema({
    name: { type: String },
    email: { type: String, /*unique: true*/ },
    phone: { type: String, /*unique: true */},
    password: { type: String },
    address: { type: String, default: "" },
    about: { type: String, default: "" },
    type: { type: String, default: "user" },
    gst: { type: String, default: "" },
    addedon: { type: Date, default: Date.now }
});

const userModel = model("User", userSchema);

module.exports = userModel;