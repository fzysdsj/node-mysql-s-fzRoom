
var express = require('express');
var db = require("../config/db");
var fs = require('fs');
var path = require('path');
var formidable = require('formidable');
var router = express.Router();
router.get("/", function (req, res, next) {
    db.query("select * from fpost", function (err, rows) {
        if (err) {
            res.render("fpostList", { title: "评论列表", datas: [] });
        } else {
            res.render("fpostList", { title: "评论列表", datas: rows });
        }
    });
});
//添加用户
router.get("/create", function (req, res, next) {
    res.render("postId");
});
router.post("/create", function (req, res, next) {
    var form = new formidable.IncomingForm();
    //设置编辑
    form.encoding = 'utf-8';
    //设置文件存储路径
    form.uploadDir = "./public/uploads/comments/";
    //保留后缀
    form.keepExtensions = true;
    //设置单文件大小限制    
    form.maxFieldsSize = 2 * 1024 * 1024;
    form.parse(req, function (err, fields, files) {
        var fpcontent = fields.fpcontent;
        user = req.session.user;
        var fpid = fields.fpid;
        var fpuid = user.userId;
        var fppic = path.basename(files.fppic.path)
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
        var fpstarttime = y + "-" + m + "-" + d + " " + h + ":" + mi + ":" + s;
        var fpup = 0;
        var INSERT_COMMENT = "insert into fposts(fpostpid,fpostuid,fpostcontent,fpoststarttime,fpostup,fpostpic) values('" + fpid + "','" + fpuid + "','" + fpcontent + "','" + fpstarttime + "','" + fpup + "','" + fppic + "')";
        db.query(INSERT_COMMENT, function (err, rows) {
            if (err) {
                console.log("方丈失败!")
                res.send("新增失败" + err);
            } else {
                console.log(rows);
                console.log("插入成功");
                var UPDATE_SAYNUMBER = "update post set postsaynumber = postsaynumber +1 where postid = " + fpid;
                db.query(UPDATE_SAYNUMBER, function (err, row) {
                    if (err) {
                        console.log("更新失败");
                    } else {
                        console.log(row);
                        console.log("更新成功");
                        res.redirect("/talkRoom/posts/" + fpid);
                    }
                });

            }
        });
    });
});
router.get("/del/:id", function (req, res) {
    var id = req.params.id;
    db.query("delete from fposts where fpostId = " + id, function (err, rows) {
        if (err) {
            res.send("删除失败" + err);
        } else {
            return res.redirect("back");
        }
    });
});
module.exports = router;