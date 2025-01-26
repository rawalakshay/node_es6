import express from "express";
const app = express();
let port = 3000;
app.listen(port, () => {
    console.log(`Server running at port: ${port}`)
})

app.get('/', (req, res) => {
    return res.send('Hello, world! ES6 Modules in Node.js');
})