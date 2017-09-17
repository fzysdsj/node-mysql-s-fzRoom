//武阁模块
var express = require('express');
var db = require("../config/db");
var fs = require('fs');
var path = require('path');
var formidable = require('formidable');
var router = express.Router();
router.get("/", function (req, res, next) {
    db.query("select * from post order by postid desc", function (err, rows) {
        if (err) {
            res.render("talkRoom", { title: "用户列表", datas: [] });
        } else {
            console.log(rows[0].postUid);
            console.log(rows.length);
            var userArray = [];
            var userArrayDemo = [];
            for (let i = 0; i < rows.length; i++) {
                var select_user = 'select * from userinfo where userid = ' + rows[i].postUid;
                console.log(select_user);
                db.query(select_user, function (err, row) {
                    if (err) {
                        console.log("读用户列表失败");
                    } else {
                        //将文章作者信息写进数组中，渲染给页面调用
                        console.log("row:");
                        userArray.push(row[0]);
                        if (userArray.length == rows.length) {
                            for (let j = 0; j < rows.length; j++) {
                                var s = 0;
                                for (let k = 0; k < userArray.length; k++) {
                                    if (userArray[k].userId == rows[j].postUid && s == 0) {
                                        userArrayDemo.push(userArray[k]);
                                        s++;
                                        if (userArrayDemo.length == rows.length) {
                                            return res.render("talkRoom", { title: "用户列表", datas: rows, users: userArrayDemo });
                                        }
                                    }
                                }
                            }

                        }
                    }
                });
            }

        }
    });
});
router.get('/backend/posts', function (req, res, next) {
    db.query("select * from post", function (err, rows) {
        if (err) {
            res.render("postList", { title: "用户列表", datas: [] });
        } else {
            res.render("postList", { title: "用户列表", datas: rows });
        }
    });
});
router.get("/posts/:id", function (req, res, next) {
    var id = req.params.id;
    var anthor = "";
    var userArray = [];
    var sql = "select * from post where postId = " + id;
    db.query(sql, function (err, rows) {
        if (err) {
            res.send("查看页面跳转失败");
        } else {
            console.log(rows[0].postUid);
            var sqll = "select * from userinfo where userId = " + rows[0].postUid;
            db.query(sqll, function (err, row) {
                if (err) {
                    res.send("操作失败:" + err);
                }
                else {
                    var sqlll = "select * from fposts where fpostpid = " + id;
                    db.query(sqlll, function (err, comment) {
                        if (err) {
                            console.log("ssssssss");
                        }
                        else {
                            var UPDATE_PV = "update post set postsaw = postsaw+1 where postid = " + id;
                            console.log("UPDATE_PV:" + UPDATE_PV);
                            db.query(UPDATE_PV, function (err, user) {
                                if (err) {
                                    res.send("操作失败:" + err);
                                } else {
                                    if (comment.length != 0) {
                                        for (var i = 0; i < comment.length; i++) {
                                            var SELECT_USER = "select * from userinfo where userId = " + comment[i].fpostUid;
                                            db.query(SELECT_USER, function (err, user) {
                                                if (err) {
                                                    res.send("操作失败:" + err);
                                                } else {
                                                    userArray.push(user[0]);
                                                    if (userArray.length == comment.length) {
                                                        let s = [];
                                                        for (let i = 0; i < userArray.length; i++) {
                                                            if (s.indexOf(userArray[i].userNick) == -1) {  //判断在s数组中是否存在，不存在则push到s数组中
                                                                s.push(userArray[i].userNick);
                                                            }
                                                        }
                                                        let userLength = s.length;
                                                        res.render("postId", { datas: rows, author: row, comment: comment, comer: userArray, userLength: userLength });
                                                    }
                                                }
                                            });
                                        }
                                    }
                                    else {
                                        res.render("postId", { datas: rows, author: row, comment: comment, comer: userArray, userLength: 0 });
                                    }
                                }
                            });
                        }
                    });
                }
            });
        }
    });
});
router.get("/create", function (req, res, next) {
    res.render("postAdd");
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
        var posttitle = fields.posttitle;
        var postcontent = fields.postcontent;
        var postuid = fields.postuid;
        var postcategory = fields.postcategory;
        var time = Date.now;
        console.log("postcategory:" + postcategory);
        var postpic = path.basename(files.postpic.path)
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
        var poststarttime = y + "-" + m + "-" + d + " " + h + ":" + mi + ":" + s;
        var postsaw = 0;
        var postup = 0;
        db.query("insert into post(postuid,posttitle,postcontent,poststarttime,postpic,postcategory,postsaw,postup) values('" + postuid + "','" + posttitle + "','" + postcontent + "','" + poststarttime + "','" + postpic + "','" + postcategory + "','" + postsaw + "','" + postup + "')", function (err, rows) {
            if (err) {
                console.log("方丈失败!")
                res.send("新增失败" + err);
            } else {
                console.log("插入成功");
                res.redirect("/talkRoom");
            }
        });
    });

});
module.exports = router;