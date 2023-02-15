var express = require('express');
var mysql = require('mysql2');
var app = express();
const cors = require('cors');
var connection = require('./database');
const session = require("express-session");
const bodyParser = require('body-parser');

app.use(cors({
    origin: ["http://localhost:3000"],
    method: ["POST", "GET"],
    credentials: true
}));
app.use(express.json());
app.use(session({
    key: "userId",
    secret: "subscribe",
    resave: true,
    saveUninitialized: true,
    cookie: {
        express: 60 * 60 * 24,
    }
}));
app.use(bodyParser.urlencoded({extended: true}));


app.get('/', function(req, res) {
    let sql = "SELECT * FROM tbl_dienthoai";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
});
app.get('/phukien', function(req, res) {
    let sql = "SELECT * FROM tbl_phukien LIMIT 20";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
});

app.get('/linhkienmaytinh', function(req, res) {
    let sql = "SELECT * FROM tbl_linhkienmaytinh";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
});

app.get('/uudaithanhtoan', function(req, res) {
    let sql = "SELECT * FROM tbl_uudaithanhtoan";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
});

app.get('/thuonghieu', function(req, res) {
    let sql = "SELECT * FROM tbl_thuonghieu";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
});
app.get('/danhmucdienthoai', function(req, res){
    let sql = "SELECT * FROM tbl_danhmuc";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
})
app.get('/quancaodienthoai', function(req, res){
    let sql = "SELECT * FROM tbl_quancaodienthoi";
    connection.query(sql, function(err, results){
        if (err) throw err;
        res.send(results);
    });
})

app.listen(3005, function(){
    console.log('listening on port 3005');
    connection.connect(function(err){
        if(err) throw err;
        console.log('Database connected');
    })
})