//require from my package.json
var mysql = require('mysql');
var express = require('express');
var app = express();
var formidable = require('express-formidable');
var bodyParser = require('body-parser');
var io = require('socket.io')(5000);
app.use(express.static(__dirname + '/public'));
app.use(formidable());
global.gFs = require('fs');


app.get('/', (req, res) => {
   var sHeaderHTML = gFs.readFileSync(__dirname + '/html/header.html', 'utf8');
   var sHomeHTML = gFs.readFileSync(__dirname + '/html/home.html', 'utf8');
   var sFooterHTML = gFs.readFileSync(__dirname + '/html/footer.html', 'utf8');

   res.send(sHeaderHTML + sHomeHTML + sFooterHTML);
  });
  
//Listening to port
var port = 1982
app.listen(port, err => {
    if(err) {
        console.log("error");
        return
    }
    console.log("server is running on port 1982");
})