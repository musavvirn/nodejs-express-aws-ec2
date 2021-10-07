const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
    res.send("<h1>Express demo app</h1><h4>Message: success</h4><p>Version: 1.0</p>");

});

app.get("/products", (req, res) => {
    res.send([
        {
            productID: "101",
            price: 100
        },
        {
            productID: "102",
            price: 200
        }])
});

app.listen(port, () => {
    console.log(`Demo app is up and listening to the port: ${port}`);
});
