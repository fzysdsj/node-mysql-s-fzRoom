//路由模块 2017.7.26
const index = require('../controllers/index');
const users = require('../controllers/users');
const wuRoom = require('../controllers/wuRoom');
const wenRoom = require('../controllers/wenRoom');
const talk = require('../controllers/talkRoom');
const search = require('../controllers/searchRoom');
const know = require('../controllers/knowRoom');
const articles = require('../controllers/articles');
const comments = require('../controllers/comments');
const followedAndFans = require('../controllers/followedAndFans');
const collections = require('../controllers/collections');
const fposts = require('../controllers/fposts');
module.exports = function(app){
app.use('/', index);
app.use('/wenRoom', wenRoom);
app.use('/wuRoom', wuRoom);
app.use('/users', users);
app.use('/articles', articles);
app.use('/comments', comments);
app.use('/follow', followedAndFans);
app.use('/collections',collections);
app.use('/talkRoom', talk);
app.use('/knowRoom', know);
app.use('/searchRoom', search);
app.use('/fposts', fposts);
}
       