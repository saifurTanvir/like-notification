var express = require('express');
var router = express.Router();
var userModel = require.main.require('./models/user-model');



router.get('/', function(req, res){
    res.render('login/index');
});

router.post('/', function(req, res){
    var user = {
        username : req.body.username,
        password : req.body.password
    };



    userModel.validate(user, function(status){
        
        //Student
        if(status.type == "Student"){
            res.cookie('username', req.body.username);
            res.redirect('/studentHome');
        }
        
        //Alumni
        else if(status.type == "Alumni"){
            
            res.send('Alumni Page Request');
        }

        //Faculty
        else if(status.type == "Faculty"){
            res.cookie('username', req.body.username);
            res.redirect("/facultyHome")
        }

        //Admin
        else if(status.type == "Admin"){
            
            res.redirect('/adminhome');
        }

        else{
            res.send('Invalid Username or Password');
        }
    });
});

module.exports = router;