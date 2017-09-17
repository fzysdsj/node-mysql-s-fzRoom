//评论相关
var mysql = require('mysql');
var DB_NAME= 'nodedb';
//创建连接池 createPool(Object)
// Object和createConnection参数相同。
var pool = mysql.createPool({
      host : '127.0.0.1',
      user : 'root',
      password :'root',
      database:DB_NAME,
      port : 3306
  });
//可以监听connection事件，并设置session值
pool.on('connnection',function(connection){
  console.log("pool on");
  connection.query('SET SESSION auto_increment_increment=1')
});

function Comment(comment){
  this.comId = comment.comId;
  this.comAid = comment.comAid;
  this.comUid =comment.comUid;
  this.comContent = comment.comContent;
  this.comStartTime = comment.comStartTime;
  this.comUp = comment.comUp;
  this.comDown = comment.comDown;
}

Comment.prototype.comSave = function save(callback){
  var comment = {
    comId : this.comId,
    comAid : this.comAid,
    comUid:this.comUid,
    comContent:this.comContent,
    comStartTime:this.comStartTime,
    comUp:this.comUp,
    comDown:this.comDown
  };
  var INSERT_COMMENT= "INSERT INTO COMMENT (COMID,COMAID,COMUID,COMCONTENT,COMSTARTTIME,COMUP,COMDOWN) VALUES (0,?,?,?,?,?,?)";
  pool.getConnection(function(err,connection){
    connection.query(INSERT_COMMENT,[comment.comAid,comment.comUid,comment.comContent,comment.comStartTime,comment.comUp,comment.comDown],function(err,result){
      if(err){
        console.log("INSERT_COMMENT Error: " + err.message);
        return;
      }
      callback(err,result);
      connection.release();
    });
  });
};
//根据用户名得到用户数量
Comment.prototype.comNum = function(username, callback) {
  pool.getConnection(function(err,connection){
    console.log("getConnection");
    console.log("getUserNumByName");
    var SELECT_NUM = "SELECT COUNT(1) AS num FROM COMMENT WHERE COMID = ?";
    connection.query(SELECT_NUM, [comid], function (err, result) {
      if (err) {
        console.log("SELECT_NUM Error: " + err.message);
        return;
      }
      connection.release();
      callback(err,result);
    });
  });
};
// Comment.prototype.comInfo = function(callback){
//   var comment = {
//     comId : this.comId,
//     comAid : this.comAid,
//     comUid:this.comUid,
//     comContent:this.comContent,
//     comStartTime:this.comStartTime,
//     comUp:this.comUp,
//     comDown:this.comDown
//   };
//   var SELECT_LOGIN ="SELECT * FROM USERINFO WHERE USERNAME = ?";
//   pool.getConnection(function(err,connection){
//     connection.query(SELECT_LOGIN,[user.userName],function(err,result){
//       if (err) {
//         console.log("SELECT_LOGIN Error: " + err.message);
//         return;
//       }
//       connection.release();
//       callback(err,result);
//     });
//   });
// }
module.exports = Comment;
