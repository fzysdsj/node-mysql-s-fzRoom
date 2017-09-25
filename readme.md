# fzRoom 项目记录(进行中)
## 什么是"fzRoom"
> 'fzRoom'乃方丈遗少书阁之名，方丈阁。方丈阁者，一方一丈便成阁，极言其狭。然圣人有言：“不以陋室避匡天下之责”。是故书生以"方丈"为阁名，正有所居虽狭，所见虽窄，所为虽微，所献虽薄，而犹不改仲淹忧民之心。作此"fzRoom",实有聚天下贤士之意，期此盛世之际，江湖路远，彼此相濡与沫。
## 谁是方丈遗少?
> `方丈遗少`，河北石家庄人。本名`杜维杰`，字`三贱`，号`方丈遗少`。世称`方丈遗少杜三贱`，又因其书阁名为方丈阁，故又自号方丈阁主。且因近将远行，感念三老(祖母，父，母)恩情，又别号`明发一寐醉半生`，灵感来源于《诗经.小宛》"`明发不寐，有怀二人`"，取"一睡半生傍母旁"之意。善为文，亦善为代码，犹善BB，钟爱JS，不死不休。 
 - 诗号:
    - > 非吾恋乡家，三老而已；非吾厌金银，有兄而已；非吾略时事，见惯而已，明发不寐，有怀三人。
## 技术栈
- 语言  ：node.js  8.1.3(6+就行)
- 框架 ：express  4.15.2
- 数据库 ：MySql  5.6
- 模板引擎 ： EJS
- 包管理 ： bower(前) npm(后)
## 主要中间件
- cookie-parse 
- bodyPaser
- connect-session
- cookie-parser
- express-session
- express-mysql-session
- morgan
- serve-favicon
- connect-flash
- express-formidable
## 项目结构初步完善
    ├── bin	        程序启动相关(express初始化自动生成)
    ├── config      配置相关(数据库信息和路由)
    ├──controllers  控制相关  
    ├── views        视图文件目录
    │   └── pages 
    ├──models  模型相关
    │   ├── db.js 数据库配置信息
    │   ├── route.js  路由
    ├── sql 数据库文件(.sql)
    ├── 相关软件
    ├── public        静态文件目录
    │   ├── assets 后台模板静态文件目录(时间紧，全上了)
    │   ├── css       
    │   ├──audio      音频视频目录
    │   ├── fonts     bootstrap字体图标目录
    │   ├── images   图片目录          
    │   ├── js    前台业务逻辑实现
    │   ├──libs   前端库
    │   ├──bulid          
    │   └── uploads    上传图片存储目录
    ├──.gitignore     git管理忽略项       
    ├── app.js        项目入口文件
    ├──gruntfile.js   grunt配置文件
    ├── bower.json    bower安装模块依赖项     
    ├── package.json  npm安装模块依赖项
    └── README.md     解释文档  
##

## 目前实现功能(2017.7.20-至今)(兼容pc端和移动端)
 - 注册
 - 登录
 - 注册登录的前后端表单验证
 - 登出
 - 登录持久化
 - 用户信息修改
 - 文阁
    - 文章分类
    - 发表文章
    - 文章评论
    - 文章点赞
    - 文章分页(假分页)
 - 索阁
    - 按用户搜索
    - 按文章搜索
    - 按帖子搜索
 - 议阁
    - 发表帖子
    - 帖子评论  
    - 帖子评论人数
    - 帖子分页
 - 用户关注功能
 - 个人中心
    - 消息页
    - 文章页
    - 帖子页
 - 后台管理(各个表的增删改查)
## 使用教程
- 下载源码
> git clone https://github.com/fzysdsj/node-mysql-s-fzRoom.git
- 安装Node和mysql环境
    - 安装Node
        - > 官网直接下载安装即可，不再赘述（Node -v查看安装是否成功）
    - 安装Mysql
        - > 推荐wamp,xxamp，phpstudy等程序集成包，不用自己配环境了。“相关软件”文件夹下有navacat for mysql，自行斟酌使用。
- 安装淘宝npm镜像cnpm(国内速度快)
    - > npm install -g cnpm --registry=https://registry.npm.taobao.org
- 安装express
    - > cnpm install -g express-generato
    - > cnpm install -g express
    - > express -V  #验证是否安装成功  
- 将sql文件夹下的"nodedb.sql"导入Mysql数据库中
    - > 打开/config/db.js ,修改下数据库的连接信息.(换成你自己的数据库用户名和密码)
- > cnpm install
- > npm start（这里就可以启动了，接下来还可以安装个pm2，监控一下）
-  安装pm2
    - > cnpm install -g pm2
    - > pm2 start ./bin/www
- 打开浏览器，输入"http://localhost:3000"
    - > 出现主页面，说明运行成功
## 相关路由
 - [主页](http://localhost:3000):http://localhost:3000/
 - [注册](http://localhost:3000/users/signup):http://localhost:3000/users/signup
 - [登录](http://localhost:3000/users/signin):http://localhost:3000/users/signin
 - [文阁](http://localhost:3000/wenRoom):http://localhost:3000/wenRoom
 - [文章相关页](http://localhost:3000/articles):http://localhost:3000/articles/article
 - [索阁相关](http://localhost:3000/searchRoom):http://localhost:3000/searchRoom
 - [议阁](http://localhost:3000/talkRoom):http://localhost:3000/talkRoom
 - [武阁](http://localhost:3000/wuRoom):http://localhost:3000/wuRoom
 - [个人中心](http://localhost:3000/users/toSelect/用户Id):http://localhost:3000/users/toSelect/用户Id
## 部分演示（前台使用的若古文学，特在此声明，不做任何商业用途。）
 - 登录登出
    - !['登录登出'](/public/images/index.gif)
 - 注册
     - !['注册'](/public/images/signup.gif)
- 查看文章分类
    - !['查看文章分类'](/public/images/fenlei.gif)
- 文章，评论点赞及发表
    - !['文章，评论点赞及发表'](/public/images/create.gif)
- 按条件搜索
    - !['按条件搜索'](/public/images/sousuo.gif)
- 个人中心
    - !['个人中心'](/public/images/person.gif)