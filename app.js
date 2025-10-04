const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
	res.send("Hello world - Node Express");
})

app.listen(PORT, () => {
	console.log(`Server running at localhost:${PORT}/`);
})
