var express = require('express');
var db = require("../config/db");
var Collection = require("../models/collections.js");
var fs = require('fs');
var path = require('path');
var formidable = require('formidable');
var router = express.Router();
router.get("/", function (req, res, next) {
    db.query("select * from collection", function (err, rows) {
        if (err) {
            res.render("collectionList", { title: "用户列表", datas: [] });
        } else {
            res.render("collectionList", { title: "用户列表", datas: rows });
        }
    });
})
router.get("/create", function (req, res, next) {
    res.render("colAdd");
});
router.post("/create", function (req, res, next) {
    var form = new formidable.IncomingForm();
    //设置编辑
    form.encoding = 'utf-8';
    //设置文件存储路径
    form.uploadDir = "./public/uploads/";
    //保留后缀
    form.keepExtensions = true;
    //设置单文件大小限制    
    form.maxFieldsSize = 2 * 1024 * 1024;
    form.parse(req, function (err, fields, files) {
        var arttitle = fields.arttitle;
        var artcontent = fields.artcontent;
        var artuid = fields.artuid;
        var artcategory = fields.artcategory;
        var time = Date.now;
        console.log("artcategory:" + artcategory);
        var artpic = path.basename(files.artpic.path)
        var date = new Date();
        var y = date.getFullYear();
        var m = date.getMonth() + 1;
        var d = date.getDate();
        var h = "";
        var mi = "";
        var s = "";
        m < 10 ? (m = "0" + m) : m;
        d < 10 ? (d = "0" + d) : d;
        date.getHours() < 10 ? (h = "0" + date.getHours()) : (h = date.getHours());
        date.getMinutes() < 10 ? (mi = "0" + date.getMinutes()) : (mi = date.getMinutes());
        date.getSeconds() < 10 ? (s = "0" + date.getSeconds()) : (s = date.getSeconds());
        var artstarttime = y + "-" + m + "-" + d + " " + h + ":" + mi + ":" + s;
        db.query("insert into collection(coluid,coltitle,colinstruction,colstarttime,colpic,colcategory) values('" + artuid + "','" + arttitle + "','" + artcontent + "','" + artstarttime + "','" + artpic + "','" + artcategory+ "')", function (err, rows) {
            if (err) {
                console.log("方丈失败!")
                res.send("新增失败" + err);
            } else {
                console.log("插入成功");
                res.redirect("/");
            }
        });
    });

});
router.get('/collection',function(req,res,next){
  res.render('collection');
});
router.get('/collections',function(req,res,next){
  res.render('collectionNumber');
});
module.exports = router;