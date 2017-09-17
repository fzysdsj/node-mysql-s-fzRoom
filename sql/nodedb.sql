/*
Navicat MySQL Data Transfer

Source Server         : fzg
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : nodedb

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-12 18:26:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `artId` int(11) NOT NULL AUTO_INCREMENT,
  `artUid` int(11) NOT NULL,
  `artTitle` varchar(255) NOT NULL,
  `artContent` varchar(10000) DEFAULT NULL,
  `artSaw` int(255) DEFAULT '0',
  `artCategory` varchar(11) NOT NULL,
  `artGood` int(64) NOT NULL,
  `artStartTime` varchar(255) NOT NULL,
  `artUp` int(100) DEFAULT NULL,
  `artPic` varchar(255) DEFAULT NULL,
  `artPush` int(255) NOT NULL,
  `artSayNumber` int(255) NOT NULL,
  `artCollection` varchar(255) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`artId`),
  KEY `artuser` (`artUid`),
  CONSTRAINT `artuser` FOREIGN KEY (`artUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('47', '167', '方丈阁新规', '灵烟一起江湖梦，笑我多少荒唐事。', '133', '历史', '100', '2017-08-03 08:29:10', '0', 'upload_ba311a1fe97e94daab3ea510e66a6c27.jpg', '700', '0', 'all');
INSERT INTO `article` VALUES ('49', '167', 'Node.js的上限在哪？', '8年前，Node.js诞生之初，性能是其最大的卖点。异步让其他所有语言汗颜', '13', '技术', '300', '2017-08-04 07:56:57', '0', 'upload_dc440030d77f2bdad4bf4f78edae9272.png', '500', '0', 'all');
INSERT INTO `article` VALUES ('51', '167', '伟大的杰作', '方丈遗少杜三贱', '61', '历史', '200', '2017-08-04 08:25:26', '1', 'upload_dcf9503f41fd86c42ec50df8754a7d64.jpg', '200', '0', 'all');
INSERT INTO `article` VALUES ('52', '167', '我是测试文章哈啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '份额鹅鹅鹅饿鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅而非无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无二位付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付蜂窝网无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无蜂窝网无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无', '26', '历史', '200', '2017-08-08 01:10:42', '0', 'upload_983836822c7e4fcb4fcd8dd75ec09af2.jpg', '300', '0', 'all');
INSERT INTO `article` VALUES ('53', '172', '这是两性类测试文章', '我是杜维杰，。哈哈哈哈哈哈', '26', '两性', '300', '2017-08-09 10:42:09', '0', 'upload_a1b88c0c67b380ae0ac4f68715e45fde.jpg', '1200', '0', 'all');
INSERT INTO `article` VALUES ('54', '172', '安东尼最终决定：3年1.2亿去火箭，灯泡瓜组合终成现实，勇士下赛季卫冕悬了！！！！！！！！！！！！！！！！！！', '最骚的是，文章标题没有长度限制.........', '27', '体育', '200', '2017-08-09 12:21:13', '0', 'upload_782104c76ac1924b295dbe4e1b4efa2a.jpg', '2', '0', 'all');
INSERT INTO `article` VALUES ('55', '172', '猪为什么有尾巴？', '因为蠢啊，傻逼。', '5', '轶事', '200', '2017-08-09 12:22:04', '0', 'upload_9308144fd1103c2352b6de4e34eac444.jpg', '3', '0', 'all');
INSERT INTO `article` VALUES ('56', '172', '再来一篇', '哈哈', '7', '历史', '0', '2017-08-09 12:23:38', '0', 'upload_ce3791765fe043b56cb6443670278633.jpeg', '300', '0', 'all');
INSERT INTO `article` VALUES ('57', '174', '烽火天下，谁惹红颜笑', '我只是测试文章', '14', '美文', '100', '2017-08-09 12:50:51', '0', 'upload_e6849cf3b8a1419646250d4da601951b.jpg', '200', '0', 'all');
INSERT INTO `article` VALUES ('58', '174', '666666666', '555555555', '3', '历史', '200', '2017-08-09 15:30:26', '0', 'upload_3ba284211aadb0a1cb1cf92a21dc9e5a.jpg', '6', '0', 'all');
INSERT INTO `article` VALUES ('59', '174', '666666666', '555555555', '3', '历史', '22', '2017-08-09 15:30:43', '0', 'upload_2ee2239b8f8cfc4efeea5b8876c140f2.jpg', '7', '0', 'all');
INSERT INTO `article` VALUES ('65', '172', '66666666', '4854874854', '1', '历史', '77', '2017-08-09 18:10:33', '0', 'upload_4770ceea5bfb9c6cb2702683030643cd.jpg', '144', '0', 'all');
INSERT INTO `article` VALUES ('66', '172', '凑个数', '5555555555555', '3', '两性', '88', '2017-08-09 18:44:08', '0', 'upload_1379a5b8eb158419f04a0e1cfed015a5.jpg', '155', '0', 'all');
INSERT INTO `article` VALUES ('67', '172', '再凑个数', '哈哈哈哈', '3', '轶事', '99', '2017-08-09 18:44:25', '0', 'upload_996890d74688ad6e4e2f569950b00cba.jpg', '166', '0', 'all');
INSERT INTO `article` VALUES ('68', '175', '方丈开篇', '      话说：\r\n天下大事，分久必合，合久必分。当天下无主之际，祖禹有力，治水以获民心，王天下以划九州之地，乃有王霸之业。其子启有大志，禹固知之，故做作以传伯益，乃得使启以计骤取之，华夏始为家天下也。后传一十二王，至暴桀而亡，成汤起而代之，号令于殷，始为商也，后传三十余王，至淫纣而亡，文武见机而起，乃假凤鸣之兆，逐鹿牧野，亦得代之，遂号令于镐，始为周也，周分西东，九州崩裂堪速，民士不服，终为秦王所灭，不见一统。乃其后，九州纷乱数纪，小儿嬴政起而扫之，一夜平六国，又并天下疆土，竟号始皇，不改秦号。历二世', '26', '历史', '600', '2017-08-12 07:58:38', '2', 'upload_9789e573a32ec24e0d024daf8c84b9d3.jpg', '1000', '2', 'all');
INSERT INTO `article` VALUES ('69', '167', '杜三贱的考试周', '\r\n昨天数据结构，今天马原，还是无碍。\r\n————2016.1.12  星期二\r\n离散考完了，就剩英语了\r\n————2016.1.13 星期三\r\n终于考完试了，却感觉没那么高兴，继续回归正轨，开始做回小说家了，顺便想说一句，\r\n今天英语听力是什么鬼，刺啦刺啦的，宝宝怎么可能听得懂......不过，淘宝发货还是挺快的，\r\n两天就到了，这个寒假，是时候吹一波箫了（其实是笛子。）\r\n————2016.1.14星期四', '1', '历史', '300', '2017-08-12 08:00:20', '0', 'upload_12574d08a6685e2419dea338eb03713d.jpg', '200', '0', 'all');
INSERT INTO `article` VALUES ('70', '167', '龙游一', '\r\n前序 刘立嘉敬业讲授课  杜三贱荒唐篡国史\r\n\r\n第一篇   雄才降世\r\n\r\n第一章 善何宏老来得一子  赤贫村几世诞雄才\r\n第二章 弱龙溪瘫倒惊父心  亲父母百里觅佳音\r\n第三章 礼何宏携礼问童老  神张公拜神请玄女\r\n第四章 勇何宏涉险五龙岭  智杜翁初现兴云居\r\n第五章 八岁子因祸而得福  七旬翁欢喜得收徒\r\n第六章 八年期省亲生父母  一世杰取青釉龙眼\r\n第七章 呆龙溪境中又迷路  智灵敏路上喜截胡\r\n第八章 荒破屋灵敏动真情  傲梅林龙溪瞠双目\r\n第九章 摄魂阁灵瞳问情事  落英境龙溪答实言', '6', '美文', '200', '2017-08-12 08:01:20', '0', 'upload_604e69ef547b7bbfd96b704f55cc41df.jpg', '3000', '0', 'all');
INSERT INTO `article` VALUES ('71', '167', '龙游二', '第二篇  龙在俗世\r\n\r\n第一章 何龙溪负匣出深山  杜老翁赋诗叹流年\r\n第二章 何龙溪糊涂到一中  杜菖兰深情望旧人\r\n第三章 杜菖兰撞怀故碎玉  何龙溪倚窗为美姝\r\n第四章 赵国灭抬棺进一中  何龙溪挥掌闯拉菲\r\n第五章 高又帅仗义惩小恶  白且美冷酷除大奸\r\n第六章 明县令暗查出假凶  昏学生白日背真锅\r\n第七章 逞豪情龙溪遭人陷  恨世乱少年誓必还\r\n第八章 思父母少年归家去  遇黑衣何家惨罹难\r\n第九章 何龙溪再回五龙岭  杜凡尘初现章明区\r\n第十章 杜宅中惊喜见双眸  柔怀里痛哭泪单衫\r\n第十', '21', '历史', '1', '2017-08-12 08:01:58', '1', 'upload_54f39b963aaabf9de49018d959462e30.jpg', '4000', '0', 'all');
INSERT INTO `article` VALUES ('72', '167', '龙游三', '第三篇    龙在大炎\r\n第一章 路过幽径初到大炎 初到大炎一片无奈\r\n第二章 大炎公主再回故家 再回故家思见君颜\r\n第三章 龙溪换装进发灵州 神偷窃钱扰乱客栈\r\n第四章 京华阁龙溪遭人窃 灵州城梦杰死认兄\r\n第五章 灵州城中龙溪闲逛 耶情馆里璃梦初现\r\n第六章 美璃梦真人间尤物 好菖兰乃夜中瑰宝\r\n第七章 逍遥居里秋姨试人 李家屋上龙溪怀私\r\n第八章 金轩翰淫李风受死 耶情馆美璃梦赎身\r\n第九章 李梦杰叩头谢大恩 司马宏杀囚祭子魂\r\n第十章 毕无缺星夜归京都 何龙溪定计去王城\r\n第一十一章 出灵州三人及', '294', '历史', '800', '2017-08-12 08:04:04', '20', 'upload_6328686875470d80de94faf114a33337.jpg', '5000', '6', 'all');
INSERT INTO `article` VALUES ('73', '167', '龙游', '第三篇    龙在大炎\r\n第一章 路过幽径初到大炎 初到大炎一片无奈\r\n第二章 大炎公主再回故家 再回故家思见君颜\r\n第三章 龙溪换装进发灵州 神偷窃钱扰乱客栈\r\n第四章 京华阁龙溪遭人窃 灵州城梦杰死认兄\r\n第五章 灵州城中龙溪闲逛 耶情馆里璃梦初现\r\n第六章 美璃梦真人间尤物 好菖兰乃夜中瑰宝\r\n第七章 逍遥居里秋姨试人 李家屋上龙溪怀私\r\n第八章 金轩翰淫李风受死 耶情馆美璃梦赎身\r\n第九章 李梦杰叩头谢大恩 司马宏杀囚祭子魂\r\n第十章 毕无缺星夜归京都 何龙溪定计去王城\r\n第一十一章 出灵州三人及行乐 到兰花四蹄禁疾驰\r\n第一十二章 忘乎已娇璃梦弄情 胡乱转义龙溪揽事\r\n第一十三章 兰花城行侠又仗义 云中馆感怀才填词\r\n第一十四章 除夕夜花灯感龙溪 兰花堆谈心誓不离\r\n第一十五章 逍遥居美秋姨见问 兰花城呆龙溪起身\r\n第一十六章 偶进王庙老人说项 夜游重瞳龙溪怀古\r\n第一十七章 好少年喜三人观擂 贼梦杰怂龙溪取牌\r\n第一十八章 美男儿坐看生死局 奇女子智取魁梧汉\r\n第一十九章 自以为是勇嬴政灵 从容不迫智何龙溪\r\n第二十章 一招制敌唯杀神溪 孤身平乱只忠臣缺\r\n第二十一章 陆地哗啦拥兵强攻 司马无缺挺戟智取\r\n第二十二章 定叛乱刘凌诉忠勇 打擂台龙溪六做东\r\n第二十三章 游龙擂何龙溪救美 长孙府孙无暇生情\r\n第二十四章 傻龙溪不知美人意 痴无缺怎得君王心\r\n第二十五章 游龙园灯火真辉煌 鸳鸯屋暗流又涌动\r\n第二十六章 李玉东好色丧狗命 何龙溪为吃做保镖\r\n第二十七章 假长孙救得真长孙 智龙溪遇到痴龙溪\r\n第二十八章 三少年欲续王都路 两老头硬留重瞳人\r\n第二十九章 长孙舒逼陈功谋事 何龙溪赖梦杰定计\r\n第三十章 长孙府何龙溪赴宴 清风阁长孙舒溯源\r\n第三十一章 明白夜龙溪闻琴音 暗黑天长孙入密穴\r\n第三十二章 饮迷茶男儿空缠绵 填情词女子誓守身\r\n第三十三章 长孙府何龙溪卖命 离恨穴通灵坠救主  \r\n第三十四章 剑中灵自称是风茸 殿上人请唤我芙蓉\r\n第三十五章 芙蓉得令寻持剑人 龙溪获匣启王都路\r\n第三十六章 北城门巧遇孙无暇 枯木路冷落毕无缺\r\n第三十七章 怒无缺正气集英堂 善将军受赏执政府\r\n第三十八章 圣无缺心软认两妹 智龙瑛气傲求一敌\r\n第三十九章 少年龙溪策马疾行 善谬梦杰出口传说\r\n第四十章 凤与桃合欢成双对 儿和女并拜是单亲\r\n第四十一章 凤桃郡龙溪又填词 零重楼莹儿再现身\r\n第四十二章 冰州城梦杰谈麒麟 麒麟阁众人遭冷落\r\n第四十三章 麒麟山黑衣捕麒麟 芙蓉洞谁人知芙蓉\r\n第四十四章 冰州府龙溪冒王使 冥山途众人遇黑衣\r\n第四十五章 心计剑欺人真太甚 美无暇用情似过深\r\n第四十六章 疯龙溪巧入芙蓉洞 伤麟儿泪识麒麟主\r\n第四十七章 一声咒语玄冰消散 两番相遇强敌来袭\r\n第四十八章 何龙溪咬牙欲死战 大炎卫留情思生擒\r\n第四十九章 勇麟儿冥山愿救主 忠无缺京都却下狱\r\n第五十章 追麟儿战英遇兰蓉 念龙溪梦杰慰暇梦\r\n第五十一章 入双泷无伤泉疗疾 回上古女娲身补天\r\n第五十二章 辞玄松肩宗族日月 见洪融晓麒麟始终\r\n第五十三章 兄弟重逢喜出望外 姊妹分离只在朝夕\r\n第五十四章 俏芙蓉偕英俊同行 帅战英带美人归都', '2', '历史', '0', '2017-08-12 08:07:30', '0', 'upload_75c74f58a54b9a2d8d957a4b408122e1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('74', '167', '666', '反反复复烦烦烦\r\n烦烦烦烦烦烦\r\n帆帆帆帆帆帆帆帆\r\n反反复复烦烦烦\r\n', '1', '历史', '0', '2017-08-12 14:16:02', '0', 'upload_afa56b3afbc1bfc30e34870d2c84448a.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('77', '167', '111', '热威威威威威威威威威威威威威威t', '0', '历史', '0', '2017-08-23 16:20:07', '0', 'upload_6adb9e7951331c74558c928df74b73a7.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('78', '167', '6666666', '非官方大师g', '0', '历史', '0', '2017-08-23 16:25:59', '0', 'upload_cd4c86784d53367b2dadb2093135c360.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('79', '167', '纷纷', '发顺丰', '0', '历史', '0', '2017-08-23 18:27:14', '0', 'upload_cc70cedb52f427e30dc508083cc8fa4b.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('80', '167', 'node.js 8.1.5发布', '     据可靠消息，node.js在今日凌晨发布了最新版本。\r\n       凤飞飞凤飞飞付\r\n                                                       ——————方丈遗少杜三贱', '1', '技术', '0', '2017-08-24 09:11:18', '0', 'upload_2b58c941330968dff2c8d9fdff752264.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('81', '167', '6666666666', '555555555555555555555\r\n666666666666666666666\r\n777777777777777777777\r\n888888888888888888888', '19', '历史', '0', '2017-08-24 09:12:15', '0', 'upload_25b6c792bd2fdbceb3b6dc46565d8091.jpg', '0', '1', 'all');
INSERT INTO `article` VALUES ('82', '167', '555555555555551111111', '666666666666\r\n555555555555\r\n666666666666\r\n777777777777', '2', '历史', '0', '2017-08-24 09:13:52', '0', 'upload_a986e417b779158c78626c2452a52fe5.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('83', '167', '66666666666', '55555555555555', '1', '历史', '0', '2017-08-24 09:16:07', '0', 'upload_fbaebb4aba3ab6677855ea5c14dac83b', '0', '0', 'all');
INSERT INTO `article` VALUES ('84', '167', '66666666666', '555555555555', '2', '历史', '0', '2017-08-24 09:16:46', '0', 'upload_5c06beade51fc10984e835993c34a8f5', '0', '0', 'all');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `colId` int(50) NOT NULL AUTO_INCREMENT,
  `colUid` int(50) NOT NULL,
  `colPic` varchar(50) NOT NULL,
  `colTitle` varchar(50) DEFAULT NULL,
  `colInstruction` varchar(50) NOT NULL,
  `colStartTime` varchar(50) NOT NULL,
  `colCategory` varchar(50) NOT NULL,
  PRIMARY KEY (`colId`),
  KEY `colUid` (`colUid`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`colUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comId` int(11) NOT NULL AUTO_INCREMENT,
  `comAid` int(11) NOT NULL,
  `comUid` int(11) NOT NULL,
  `comContent` varchar(255) DEFAULT NULL,
  `comStartTime` varchar(255) NOT NULL,
  `comUp` int(255) DEFAULT NULL,
  `comDown` int(255) DEFAULT NULL,
  PRIMARY KEY (`comId`),
  KEY `comAid` (`comAid`),
  KEY `comUid` (`comUid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comAid`) REFERENCES `article` (`artId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('61', '72', '167', '6666', '2017-09-10 15:05:42', '0', '0');
INSERT INTO `comment` VALUES ('62', '72', '167', '5555555555555', '2017-09-10 15:06:09', '0', '0');
INSERT INTO `comment` VALUES ('63', '72', '167', '4444444444444', '2017-09-10 15:06:16', '0', '0');
INSERT INTO `comment` VALUES ('64', '72', '167', '33333333333', '2017-09-10 15:06:23', '0', '0');
INSERT INTO `comment` VALUES ('65', '72', '167', '1111111111111', '2017-09-10 15:06:31', '0', '0');
INSERT INTO `comment` VALUES ('66', '81', '167', '6666', '2017-09-10 16:00:06', '0', '0');
INSERT INTO `comment` VALUES ('67', '72', '172', '666', '2017-09-11 17:50:25', '0', '0');
INSERT INTO `comment` VALUES ('68', '68', '172', '666666666666', '2017-09-11 18:21:37', '0', '0');
INSERT INTO `comment` VALUES ('69', '68', '172', '555555', '2017-09-11 18:24:26', '0', '0');

-- ----------------------------
-- Table structure for `followedandfans`
-- ----------------------------
DROP TABLE IF EXISTS `followedandfans`;
CREATE TABLE `followedandfans` (
  `ffId` int(11) NOT NULL AUTO_INCREMENT,
  `followedUserId` int(11) NOT NULL,
  `fanUserId` int(11) NOT NULL,
  PRIMARY KEY (`ffId`),
  KEY `followedUserId` (`followedUserId`),
  KEY `fanUserId` (`fanUserId`),
  CONSTRAINT `followedandfans_ibfk_1` FOREIGN KEY (`followedUserId`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `followedandfans_ibfk_2` FOREIGN KEY (`fanUserId`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of followedandfans
-- ----------------------------
INSERT INTO `followedandfans` VALUES ('12', '172', '173');
INSERT INTO `followedandfans` VALUES ('15', '174', '172');
INSERT INTO `followedandfans` VALUES ('17', '174', '167');
INSERT INTO `followedandfans` VALUES ('18', '172', '167');
INSERT INTO `followedandfans` VALUES ('24', '167', '173');
INSERT INTO `followedandfans` VALUES ('28', '167', '174');
INSERT INTO `followedandfans` VALUES ('29', '175', '167');

-- ----------------------------
-- Table structure for `fposts`
-- ----------------------------
DROP TABLE IF EXISTS `fposts`;
CREATE TABLE `fposts` (
  `fpostId` int(255) NOT NULL AUTO_INCREMENT,
  `fpostPid` int(255) NOT NULL,
  `fpostUid` int(255) NOT NULL,
  `fpostContent` varchar(255) NOT NULL,
  `fpostStartTime` varchar(255) NOT NULL,
  `fpostUp` int(255) DEFAULT NULL,
  `fpostPic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fpostId`),
  KEY `fpostUid` (`fpostUid`),
  KEY `fpostPid` (`fpostPid`),
  CONSTRAINT `fposts_ibfk_1` FOREIGN KEY (`fpostUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fposts_ibfk_2` FOREIGN KEY (`fpostPid`) REFERENCES `post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fposts
-- ----------------------------
INSERT INTO `fposts` VALUES ('1', '1', '167', '', '2017-08-24 15:55:14', '0', 'upload_616b89e80007e3459ba45c7b9d8e9419.jpg');
INSERT INTO `fposts` VALUES ('2', '1', '167', '', '2017-08-24 15:59:09', '0', 'upload_87628971dc832fe5aae5fff35755024b');
INSERT INTO `fposts` VALUES ('3', '1', '167', '', '2017-08-24 16:40:46', '0', 'upload_20231c25205af5bad8d09a96f58a4685');
INSERT INTO `fposts` VALUES ('4', '1', '167', '', '2017-08-24 16:42:40', '0', 'upload_373186df1eb03e517c7211c4bb6ddc40');
INSERT INTO `fposts` VALUES ('5', '1', '167', '5555555555', '2017-08-24 16:45:47', '0', 'upload_2f6961f12db24b55614fefcb2bef68e6');
INSERT INTO `fposts` VALUES ('6', '1', '167', '                ewwwwwwwwwwwww              errrrrrr          ', '2017-08-24 16:46:27', '0', 'upload_33838151fd58d1d9c8db26252a1a1947');
INSERT INTO `fposts` VALUES ('15', '4', '167', '烦烦烦烦烦烦', '', null, null);
INSERT INTO `fposts` VALUES ('16', '4', '167', '111', '', null, null);

-- ----------------------------
-- Table structure for `likeart`
-- ----------------------------
DROP TABLE IF EXISTS `likeart`;
CREATE TABLE `likeart` (
  `likeId` int(11) NOT NULL AUTO_INCREMENT,
  `likeAid` int(11) NOT NULL,
  `likeUid` int(11) NOT NULL,
  PRIMARY KEY (`likeId`),
  KEY `likeAid` (`likeAid`),
  KEY `likeUid` (`likeUid`),
  CONSTRAINT `likeart_ibfk_1` FOREIGN KEY (`likeAid`) REFERENCES `article` (`artId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likeart_ibfk_2` FOREIGN KEY (`likeUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likeart
-- ----------------------------
INSERT INTO `likeart` VALUES ('1', '72', '167');
INSERT INTO `likeart` VALUES ('2', '72', '172');
INSERT INTO `likeart` VALUES ('5', '68', '172');
INSERT INTO `likeart` VALUES ('6', '71', '172');
INSERT INTO `likeart` VALUES ('7', '68', '167');
INSERT INTO `likeart` VALUES ('8', '51', '167');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postId` int(255) NOT NULL AUTO_INCREMENT,
  `postUid` int(255) NOT NULL,
  `postCategory` varchar(255) DEFAULT NULL,
  `postContent` varchar(255) DEFAULT NULL,
  `postStartTime` varchar(255) DEFAULT NULL,
  `postUp` int(255) DEFAULT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postSaw` int(255) DEFAULT NULL,
  `postPic` varchar(255) DEFAULT NULL,
  `postSayNumber` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postId`),
  KEY `postUid` (`postUid`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`postUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '167', '历史', '微风拂过we\r\n帆帆帆帆帆帆帆帆帆帆帆帆帆帆                如果突然                 热管 ', '2017-08-23 18:47:15', '0', 'few', '238', 'upload_f96ad2a6c7547fcc6f9bd47067ac4059.jpg', '13');
INSERT INTO `post` VALUES ('4', '167', '历史', '去污粉全微分', '2017-08-23 19:05:49', '0', ' 全五分五千', '65', 'upload_3717e2dbd40cbfde593c477350b1401f.jpg', '3');
INSERT INTO `post` VALUES ('5', '167', '英雄', '                                                            非吾恋乡家，三老而已；\r\n                                                            非吾厌金银，有兄而已；\r\n                                                            非吾略时事，见惯而已，\r\n                                    ', '2017-09-10 16:23:28', '0', '明发不寐杜怀三驾到', '4', 'upload_fc3d31b442a13a91ad11033f55170710.jpg', '0');

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('-68GLZBar-BpU6tHggaOkxaKiI9TSoQm', '1505220037', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A7B22757365724E616D65223A22667A797364736A222C2275736572507764223A22313233343536222C22757365724E69636B223A22E7828EE69BA6E4B99DE5B086EFBC9AE799BDE5AE93222C2275736572417661746172223A2275706C6F61645F36653861313039613134376361363062343264623562376237626538316234332E6A7067222C22757365724964223A3136377D7D);
INSERT INTO `sessions` VALUES ('CR8UkiliL92ag-mm-99hlYHlG4MYe6AD', '1505262339', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A6E756C6C7D);
INSERT INTO `sessions` VALUES ('g35lSdDybCkUdhK_aXdSh4szK0H7d3tE', '1505297895', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A7B22757365724E616D65223A22667A797364736A222C2275736572507764223A22313233343536222C22757365724E69636B223A22E7828EE69BA6E4B99DE5B086EFBC9AE799BDE5AE93222C2275736572417661746172223A2275706C6F61645F36653861313039613134376361363062343264623562376237626538316234332E6A7067222C22757365724964223A3136377D7D);

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(64) NOT NULL COMMENT '用户名',
  `userPwd` varchar(64) NOT NULL COMMENT '用户密码',
  `userNick` varchar(64) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userPhone` varchar(50) DEFAULT NULL,
  `userHome` varchar(255) DEFAULT NULL,
  `userClass` int(50) NOT NULL,
  `userSex` varchar(50) DEFAULT NULL,
  `userAvatar` varchar(50) NOT NULL,
  `userBirth` varchar(50) NOT NULL,
  `userLogo` varchar(50) NOT NULL,
  `userAbout` varchar(50) NOT NULL,
  `userMoney` int(50) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `userNick` (`userNick`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('167', 'fzysdsj', '123456', '炎曦九将：白宓', '505589500@qq.com', '15226559597', '石家庄', '25200', '男', 'upload_6e8a109a147ca60b42db5b7b7be81b43.jpg', '1995年七月初一', '方丈不灭，天下为炎。', '呵呵', '0');
INSERT INTO `userinfo` VALUES ('172', 'duweijie', '123456', '炎曦九将：林风', '505589500@qq.com', '', '', '12000', '男', 'upload_265e99d44a2c3da00156af8843001ce8.jpg', '', '', '', '0');
INSERT INTO `userinfo` VALUES ('173', '123456', '123456', '炎曦九将：战英', '', '', '', '18000', '男', 'upload_2468873f52f7a7fd02eb5d2523b3f338.png', '', '', '', '0');
INSERT INTO `userinfo` VALUES ('174', 'fzysdsjj', '123456', '炎曦九将：谢宁', '', '', '', '800', '男', 'upload_755384d4f24c7a027d784f41142d6eb8.jpg', '', '', '', '0');
INSERT INTO `userinfo` VALUES ('175', 'fzysdsjjj', '123456', '炎曦九将：东镜', '', '', '', '5000', '男', 'upload_e7be7e7ec195b92e2c46c0aeaa68ec40.jpg', '方丈元年', '方丈小弟', '方丈遗少小弟', '0');
