var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var flash = require('connect-flash');
var session = require('express-session');
// var formidable =require('express-formidable');
// var ejs = require('ejs');
var MySQLStore = require('express-mysql-session')(session);
var app = express();
var options = {  
    host: '127.0.0.1',  
    user: 'root',  
    password: 'root',  
    database: 'nodedb',  
    port: 3306  
} 
// 模板目录设置
app.set('views', path.join(__dirname, 'views/pages'));
// app.engine('.html',ejs.__express);
// app.set('view engine', 'html');
app.set('view engine', 'ejs');
//session写入mysql
var sessionStore = new MySQLStore(options);
// 网站图标，暂时没有
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
// 设置 Session
app.use(session({
     secret: '12345',
     name: 'demo',   //这里的name值得是cookie的name，默认cookie的name是：connect.sid
     store:sessionStore,
     resave: false,
     saveUninitialized: false,
 }));
app.use(flash());
app.use(function (req, res, next) {
  res.locals.success = req.flash('success').toString();
  res.locals.error = req.flash('error').toString();
  res.locals.user = req.session.user;
  next();
});
//静态文件默认目录，将所有静态文件一定要放在此目录及子目录下，否则node会以http协议的形式获取资源，拿不到的。(只是本地，部署还没试)
app.use(express.static(path.join(__dirname, 'public')));
require('./config/routes')(app);
// app.use(formidable({
//     uploadDir: path.join(__dirname, 'public/images'), // 上传文件目录
//     keepExtensions: true // 保留后缀
// }));
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});
module.exports = app;
