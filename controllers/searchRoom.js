//索阁模块
var express = require('express');
var db = require("../config/db");
var Article = require("../models/articles.js");
var router = express.Router();
router.get('/', function (req, res, next) {
    db.query("select * from article where artPush>0 order by artId desc", function (err, rows) {
        if (err) {
            res.render("search", { title: "用户列表", datas: [] });
        } else {
            var userArray = [];
            var userArrayDemo = [];
            for (let i = 0; i < rows.length; i++) {
                var select_user = 'select * from userinfo where userId = ' + rows[i].artUid;
                console.log(select_user);
                db.query(select_user, function (err, row) {
                    if (err) {
                        console.log("读用户列表失败");
                    } else {
                        //将文章作者信息写进数组中，渲染给页面调用
                        userArray.push(row[0]);
                        if (userArray.length == rows.length) {
                            for (let j = 0; j < rows.length; j++) {
                                var s = 0;
                                for (let k = 0; k < userArray.length; k++) {
                                    if (userArray[k].userId == rows[j].artUid && s == 0) {
                                        userArrayDemo.push(userArray[k]);
                                        s++;
                                        if (userArrayDemo.length == rows.length) {

                                            db.query("select * from post where postSaw > 0 order by postId desc", function (err, Prows) {
                                                if (err) {
                                                    res.render("search", { title: "用户列表", datas: [], Pdatas: [] });
                                                } else {
                                                    var PuserArray = [];
                                                    var PuserArrayDemo = [];
                                                    for (let i = 0; i < Prows.length; i++) {
                                                        var Pselect_user = 'select * from userinfo where userId = ' + Prows[i].postUid;
                                                        db.query(Pselect_user, function (err, Prow) {
                                                            if (err) {
                                                                console.log("读用户列表失败");
                                                            } else {
                                                                //将文章作者信息写进数组中，渲染给页面调用
                                                                PuserArray.push(Prow[0]);
                                                                if (PuserArray.length == Prows.length) {
                                                                    for (let j = 0; j < Prows.length; j++) {
                                                                        var ss = 0;
                                                                        for (let k = 0; k < PuserArray.length; k++) {
                                                                            if (PuserArray[k].userId == Prows[j].postUid && ss == 0) {
                                                                                PuserArrayDemo.push(PuserArray[k]);
                                                                                ss++;
                                                                                if (PuserArrayDemo.length == Prows.length) {
                                                                                    return res.render("search", { title: "用户列表", datas: rows, users: userArrayDemo, Pdatas: Prows, Pusers: PuserArrayDemo,fzNumber:-1});
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
router.post('/search', function (req, res, next) {
    let search = req.body.search;
    let type = req.body.type;
    console.log(search);
    console.log(type);
    if (type == 'article') {
        let sql = "select * from article where artTitle like '%" + search + "%' or artContent like '%" + search + "%'";
        db.query(sql, function (err, rows) {
            if (err) {
                console.log("查询失败");
            } else {
                if (rows.length == 0) {
                    return res.render("searchResult", { title: "用户列表", datas: rows, users: [] });
                }
                else if (rows.length != 0) {
                    var userArray = [];
                    var userArrayDemo = [];
                    for (let i = 0; i < rows.length; i++) {
                        var select_user = 'select * from userinfo where userId = ' + rows[i].artUid;
                        db.query(select_user, function (err, row) {
                            if (err) {
                                console.log("读用户列表失败");
                            } else {
                                //将文章作者信息写进数组中，渲染给页面调用
                                userArray.push(row[0]);
                                if (userArray.length == rows.length) {
                                    for (let j = 0; j < rows.length; j++) {
                                        var s = 0;
                                        for (let k = 0; k < userArray.length; k++) {
                                            if (userArray[k].userId == rows[j].artUid && s == 0) {
                                                userArrayDemo.push(userArray[k]);
                                                s++;
                                                if (userArrayDemo.length == rows.length) {
                                                    return res.render("searchResult", { title: "用户列表", datas: rows, users: userArrayDemo,fzNumber:0 });
                                                }
                                            }
                                        }
                                    }

                                }
                            }
                        });
                    }
                } else {
                    return res.render("searchResult", { title: "用户列表", datas: rows ,fzNumber:0});
                }
            }
        });
    } else if (type == "user") {
        let sql = "select * from userinfo where userNick like '%" + search + "%' or userEmail like '%" + search + "%' or userBirth like '%" + search + "%' or userPhone like '%" + search + "%' or userHome like '%" + search + "%' or userLogo like '%" + search + "%' or userAbout like '%" + search + "%'";
        console.log(sql);
        db.query(sql, function (err, rows) {
            if (err) {
                console.log("查询失败");
            }
            else {
                console.log(rows);
                return res.render("searchResult", { title: "用户列表", datas: [], users: rows,fzNumber:1 });
            }
        });
    }else if(type == 'forum'){
            let sql = "select * from post where postTitle like '%" + search + "%' or postContent like '%" + search + "%'";
        db.query(sql, function (err, rows) {
            if (err) {
                console.log("查询失败");
            } else {
                if (rows.length == 0) {
                    return res.render("searchResult", { title: "用户列表", datas: rows, users: [],fzNumber:1});
                }
                else if (rows.length != 0) {
                    var userArray = [];
                    var userArrayDemo = [];
                    for (let i = 0; i < rows.length; i++) {
                        var select_user = 'select * from userinfo where userId = ' + rows[i].postUid;
                        db.query(select_user, function (err, row) {
                            if (err) {
                                console.log("读用户列表失败");
                            } else {
                                //将文章作者信息写进数组中，渲染给页面调用
                                userArray.push(row[0]);
                                if (userArray.length == rows.length) {
                                    for (let j = 0; j < rows.length; j++) {
                                        let ss = 0;
                                        for (let k = 0; k < userArray.length; k++) {
                                            if (userArray[k].userId == rows[j].postUid && ss == 0) {
                                                userArrayDemo.push(userArray[k]);
                                                ss++;
                                                if (userArrayDemo.length == rows.length) {
                                                    return res.render("searchResult", { title: "用户列表", datas: rows, users: userArrayDemo,fzNumber:2 });
                                                }
                                            }
                                        }
                                    }

                                }
                            }
                        });
                    }
                } else {
                    return res.render("searchResult", { title: "用户列表", datas: rows,fzNumber:2 });
                }

            }
        });
    }
});
module.exports = router;