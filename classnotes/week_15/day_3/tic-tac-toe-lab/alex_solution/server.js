const express = require('express');
const app = express();

app.use(express.static(__dirname + '/client/build'));

app.listen(3000, 'localhost', () => {
  console.log("Server listening");
});


