//文集相关
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
function Collection(collection) {
  this.artUid = article.artUid;
  this.artTitle = article.artTitle;
  this.artContent = article.artContent;
  this.artSaw = article.artSaw;
  this.artCategory = article.artCategory;
  this.artGood = article.artGood;
  this.artPush = article.artPush;
  this.artStartTime = article.artStartTime;
  this.artUp = article.artUp;
  this.artSayNumber = article.artSayNumber;
}

Collection.prototype.articleSave = function save(callback) {
  console.log(this.articleName);
  console.log(this.artUid);
  var article = {
    artUid: this.artUid,
    artTitle: this.artTitle,
    artContent: this.artContent,
    artSaw: this.artSaw,
    artCategory: this.artCategory,
    artGood: this.artGood,
    artStartTime: this.artStartTime,
    artUp: this.artUp,
    artSayNumber: this.artSayNumber,
    artPush: this.artPush
  };
  var INSERT_ARTICLE = "INSERT INTO ARTICLE (ARTID,ARTUID,ARTTITLE,ARTCONTENT,ARTSAW,ARTCATEGORY,artGOOD,ARTSTARTTIME,ARTUP,ARTSAYNUMBER,ARTPUSH) VALUES (0,?,?,?,?,?,?,?,?,?,?)";
  pool.getConnection(function (err, connection) {
    connection.query(INSERT_ARTICLE, [article.artUid, article.artTitle, article.artContent,article.artSaw,article.artCategory,article.artGood,article.artStartTime,article.artUp,article.artSayNumber,article.Push], function (err, result) {
      if (err) {
        console.log("INSERT_ARTICLE Error: " + err.message);
        return;
      }
      callback(err, result);
      connection.release();
    });
  });
};
//根据用户名得到用户数量
Collection.prototype.articleNum = function (articlename, callback) {
  pool.getConnection(function (err, connection) {
    console.log("getConnection");
    console.log("getarticleNumByName");
    var SELECT_NUM = "SELECT COUNT(1) AS num FROM ARTICLE WHERE artTitle = ?";
    connection.query(SELECT_NUM, [arttitle], function (err, result) {
      if (err) {
        console.log("SELECT_NUM Error: " + err.message);
        return;
      }
      connection.release();
      callback(err, result);
    });
  });
};
Collection.prototype.articleInfo = function (callback) {
  var article = {
    artUid: this.artUid,
    artTitle: this.artTitle,
    artContent: this.artContent,
    artSaw: this.artSaw,
    artCategory: this.artCategory,
    artGood: this.artGood,
    artStartTime: this.artStartTime,
    artUp: this.artUp,
    artSayNumber: this.artSayNumber,
    artPush: this.artPush
  };
  var SELECT_LOGIN = "SELECT * FROM ARTICLE WHERE ARTTITLE = ?";
  pool.getConnection(function (err, connection) {
    connection.query(SELECT_LOGIN, [article.artTitle], function (err, result) {
      if (err) {
        console.log("SELECT_LOGIN Error: " + err.message);
        return;
      }
      connection.release();
      callback(err, result);
    });
  });
}
module.exports = Collection;