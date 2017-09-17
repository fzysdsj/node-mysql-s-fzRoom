//文阁模块
var express = require('express');
var router = express.Router();
var db = require("../config/db");
router.get("/", function (req, res, next) {
  db.query("select * from article where artPush > 0 order by artPush desc", function (err, rows) {
    if (err) {
      res.render("home", { title: "用户列表", datas: [] });
    } else {
      console.log(rows[0].artUid);
      console.log(rows.length);
      var userArray = [];
      var userArrayDemo = [];
      for (let i = 0; i < rows.length; i++) {
        var select_user = 'select * from userinfo where userid = ' + rows[i].artUid;
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
                      db.query("select * from article where artGood > 0 order by artGood desc", function (err, goods) {
                        if (err) {
                          res.render("home", { title: "用户列表", datas: [] });
                        } else {
                          var userArrayGood = [];
                          var userArrayGoodDemo = [];
                          for (let i = 0; i < goods.length; i++) {
                            var select_user1 = 'select * from userinfo where userid = ' + goods[i].artUid;
                            db.query(select_user1, function (err, row) {
                              if (err) {
                                console.log("读用户列表失败");
                              } else {
                                //将文章作者信息写进数组中，渲染给页面调用
                                userArrayGood.push(row[0]);
                                if (userArrayGood.length == goods.length) {
                                  for (let j = 0; j < goods.length; j++) {
                                    var ss = 0;
                                    for (let k = 0; k < userArrayGood.length; k++) {
                                      if (userArrayGood[k].userId == goods[j].artUid && ss == 0) {
                                        userArrayGoodDemo.push(userArrayGood[k]);
                                        ss++;
                                        if (userArrayGoodDemo.length == goods.length) {
                                          db.query("select * from article order by artid desc", function (err, news) {
                                            if (err) {
                                              res.render("home", { title: "用户列表", datas: [] });
                                            } else {
                                              var userArrayNew = [];
                                              var userArrayNewDemo = [];
                                              for (let i = 0; i < news.length; i++) {
                                                var select_user2 = 'select * from userinfo where userid = ' + news[i].artUid;
                                                db.query(select_user2, function (err, row) {
                                                  if (err) {
                                                    console.log("读用户列表失败");
                                                  } else {
                                                    //将文章作者信息写进数组中，渲染给页面调用
                                                    userArrayNew.push(row[0]);
                                                    if (userArrayNew.length == news.length) {
                                                      for (let j = 0; j < news.length; j++) {
                                                        var sss = 0;
                                                        for (let k = 0; k < userArrayNew.length; k++) {
                                                          if (userArrayNew[k].userId == news[j].artUid && sss == 0) {
                                                            userArrayNewDemo.push(userArrayNew[k]);
                                                            sss++;
                                                            if (userArrayNewDemo.length == news.length) {
                                                              db.query("select * from article order by artSaw desc", function (err, pops) {
                                                                if (err) {
                                                                  res.render("home", { title: "用户列表", datas: [] });
                                                                } else {
                                                                  var userArrayPop = [];
                                                                  var userArrayPopDemo = [];
                                                                  for (let i = 0; i < pops.length; i++) {
                                                                    var select_user3 = 'select * from userinfo where userid = ' + pops[i].artUid;
                                                                    db.query(select_user3, function (err, row) {
                                                                      if (err) {
                                                                        console.log("读用户列表失败");
                                                                      } else {
                                                                        //将文章作者信息写进数组中，渲染给页面调用
                                                                        console.log("row:");
                                                                        userArrayPop.push(row[0]);
                                                                        if (userArrayPop.length == pops.length) {
                                                                          for (let j = 0; j < pops.length; j++) {
                                                                            var s = 0;
                                                                            for (let k = 0; k < userArrayPop.length; k++) {
                                                                              if (userArrayPop[k].userId == pops[j].artUid && s == 0) {
                                                                                userArrayPopDemo.push(userArrayPop[k]);
                                                                                s++;
                                                                                if (userArrayPopDemo.length == pops.length) {
                                                                                  return res.render("home", { title: "用户列表", datas: rows, users: userArrayDemo, good: goods, userGood: userArrayGoodDemo, news: news, userNew: userArrayNewDemo,pops:pops,userPop:userArrayPopDemo });
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
//文章模块
// router.get('/article', function(req, res, next) {
//   res.render('article');
// });

/*加功能*/


//打赏模块
router.get('/money', function (req, res, next) {
  res.render('money');
});

/*加功能*/

//用户须知模块
router.get('/know', function (req, res, next) {
  res.render('author');
  return;
});

/*加功能*/


//全站搜索

/*加功能*/

module.exports = router;