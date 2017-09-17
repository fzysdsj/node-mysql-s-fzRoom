//文章相关
var mysql = require('mysql');
var DB_NAME = 'nodedb';
//创建连接池 createPool(Object)
// Object和createConnection参数相同。
var pool = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: 'root',
  database: 'nodedb',
  port: 3306
});
//可以监听connection事件，并设置session值


function Follower(follower) {
    this.followedUserId = follower.followedUserId;
    this.fanUserId = follower.fanUserId;
}

Follower.prototype.followerSave = function save(callback) {
  var follower = {
    followedUserId: this.followedUserId,
    fanUserId:this.fanUserId
  };
  var INSERT_FOLLOWER = "INSERT INTO FOLLOWEDANDFANS (ARTID,FOLLOWEDUSERID,FANUSERID) VALUES (0,?,?)";
  pool.getConnection(function (err, connection) {
    connection.query(INSERT_FOLLOWER, [follower.followedUserId,follower.fanUserId], function (err, result) {
      if (err) {
        console.log("INSERT_FOLLOWER Error: " + err.message);
        return;
      }
      callback(err, result);
      connection.release();
    });
  });
};
module.exports = Follower;
