    var express = require('express');
var router = express.Router();
//var bodyParser = require('body-parser');

const url = require('url');
const querystring = require('querystring');
//router.use(bodyParser.json());
//router.use(bodyParser.urlencoded({extended: true}));

var carusers = require('./carusers');


router.use(function(req, res, next) {
  var data = '';
  req.setEncoding('utf8');
    req.on('data', function(part) {      // while there is incoming data,
       data += part;                     // collect parts in `data` variable
    }); 

    req.on('end', function() {           // when request is done,
        req.raw_body = data;                 // save collected data in req.body
        next();
    });
});




router.get('/', function (req, res) {
    carusers.getcarusers(function (err, rows) {
        if (err) {
            res.status(400).json(err);
        }
        else {
            res.json(rows);
        }
    });
});



router.get('/single', function (req, res) {
    carusers.getsinglecaruser(req.query.id, function (err, rows) {
        if (err) {
            res.status(400).json(err);
        }
        else {
            res.json(rows);
        }
    });
});


router.post('/', function (req, res) {
    carusers.createcaruser(req.raw_body, function (err, count) {
        if (err) {
           res.status(400).json(err);
        }
        else {
            res.json('NEW USER ADDED');
        }
    });
});


router.post('/update', function (req, res) {
    carusers.updatecaruser(req.raw_body, function (err, count) {
        if (err) {
            res.status(400).json(err);
        }
        else {
            res.json({});
        }
    });
});



router.post('/delete', function (req, res) {
    carusers.deletecaruser(req.raw_body, function (err, count) {
        if (err) {
            res.status(400).json(err);
        }
        else {
            res.json({});
        }
    });
});

module.exports = router;
