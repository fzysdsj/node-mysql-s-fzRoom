var express = require('express');
var db = require("../config/db");
var Follower = require("../models/followedAndFans.js");
// var fs = require('fs');
// var path = require('path');
// var formidable = require('formidable');
var router = express.Router();
router.get("/", function (req, res, next) {
    db.query("select * from followedandfans", function (err, rows) {
        if (err) {
            res.render("fansList", { title: "关注列表", datas: [] });
        } else {
            res.render("fansList", { title: "关注列表", datas: rows });
        }
    });
});
router.get("/fans", function (req, res, next) {
    res.render("fans");
});
router.post("/fans", function (req, res, next) {
    var followeduserid = req.body.followeduserid;
    var fanuserid = req.body.fanuserid;
    var INSERT_FOLLOWER = "insert into followedandfans(followedUserId,fanUserId) values('" + followeduserid + "','" + fanuserid + "')";
    db.query(INSERT_FOLLOWER, function (err, row) {
        if (err) {
            console.log("方丈失败!")
            res.send("新增失败" + err);
        } else {
            console.log(row);
            console.log("插入成功");
            res.redirect("back");

        }
    });
});
router.get("/del/:id", function (req, res) {
    var id = req.params.id;
    db.query("delete from followedandfans where ffId = " + id, function (err, rows) {
        if (err) {
            res.send("删除失败" + err);
        } else {
           return res.redirect("back");
        }
    });
});
module.exports = router;
