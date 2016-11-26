var express = require('express')

var app = express();

app.get('/status',function(req,res){
    
    var json = {'code':'nike'};

    return res.send(JSON.stringify(json));
});

app.listen(3000);
