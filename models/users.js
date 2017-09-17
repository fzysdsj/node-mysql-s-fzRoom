//用户相关
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

function User(user){
  this.userName = user.userName;
  this.userPwd = user.userPwd;
  this.userNick =user.userNick;
  this.userEmail = user.userEmail;
  this.userPhone = user.userPhone;
  this.userHome = user.userHome;
  this.userClass = user.userClass;
  this.userSex = user.userSex;
  this.userAvatar = user.userAvatar;
  this.userBirth = user.userBirth;
  this.userAbout = user.userAbout;
  this.userMoney = user.userMoney;
  this.userLogo = user.userLogo;
}

User.prototype.userSave = function save(callback){
  console.log(this.userName);
  console.log(this.userPwd);
  var user = {
    userName : this.userName,
    userPwd : this.userPwd,
    userNick:this.userNick,
    userEmail:this.userEmail,
    userPhone:this.userPhone,
    userHome:this.userHome,
    userClass:this.userClass,
    userSex:this.userSex,
    userAvatar: this.userAvatar,
    userLogo:this.userLogo,
    userMoney:this.userMoney,
    userAbout:this.userAbout,
    userBirth:this.userBirth
  };
  console.log(user.userAvatar);
  var INSERT_USER= "INSERT INTO USERINFO (USERID,USERNAME,USERPWD,USERNICK,USEREMAIL,USERPHONE,USERHOME,USERCLASS,USERSEX,USERAVATAR,USERBIRTH,USERLOGO,USERABOUT,USERMONEY) VALUES (0,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  pool.getConnection(function(err,connection){
    connection.query(INSERT_USER,[user.userName,user.userPwd,user.userNick,user.userEmail,user.userPhone,user.userHome,user.userClass,user.userSex,user.userAvatar,user.userBirth,user.userLogo,user.userAbout,user.userMoney],function(err,result){
      if(err){
        console.log("INSERT_USER Error: " + err.message);
        return;
      }
      callback(err,result);
      connection.release();
    });
  });
};
//根据用户名得到用户数量
User.prototype.userNum = function(username, callback) {
  pool.getConnection(function(err,connection){
    console.log("getConnection");
    console.log("getUserNumByName");
    var SELECT_NUM = "SELECT COUNT(1) AS num FROM USERINFO WHERE USERNAME = ?";
    connection.query(SELECT_NUM, [username], function (err, result) {
      if (err) {
        console.log("SELECT_NUM Error: " + err.message);
        return;
      }
      connection.release();
      callback(err,result);
    });
  });
};
User.prototype.userInfo = function(callback){
  var user = {
    userName : this.userName,
    userPwd : this.userPwd,
    userNick:this.userNick,
    userEmail:this.userEmail,
    userPhone:this.userPhone,
    userHome:this.userHome,
    userClass:this.userClass,
    userSex:this.userSex,
    userAvatar: this.userAvatar,
    userLogo:this.userLogo,
    userMoney:this.userMoney,
    userAbout:this.userAbout,
    userBirth:this.userBirth

  };
  var SELECT_LOGIN ="SELECT * FROM USERINFO WHERE USERNAME = ?";
  pool.getConnection(function(err,connection){
    connection.query(SELECT_LOGIN,[user.userName],function(err,result){
      if (err) {
        console.log("SELECT_LOGIN Error: " + err.message);
        return;
      }
      connection.release();
      callback(err,result);
    });
  });
}
module.exports = User;
