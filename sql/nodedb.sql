/*
Navicat MySQL Data Transfer

Source Server         : fzg
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : nodedb

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-25 20:54:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `artId` int(11) NOT NULL AUTO_INCREMENT,
  `artUid` int(11) NOT NULL,
  `artTitle` varchar(11) NOT NULL,
  `artContent` varchar(10000) NOT NULL,
  `artSaw` int(11) NOT NULL DEFAULT '0',
  `artCategory` varchar(11) NOT NULL,
  `artGood` int(11) NOT NULL,
  `artStartTime` varchar(30) NOT NULL,
  `artUp` int(11) NOT NULL,
  `artPic` varchar(50) NOT NULL,
  `artPush` int(11) NOT NULL,
  `artSayNumber` int(11) NOT NULL,
  `artCollection` varchar(11) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`artId`),
  KEY `artuser` (`artUid`),
  CONSTRAINT `artuser` FOREIGN KEY (`artUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('47', '167', '方丈阁新规', '灵烟一起江湖梦，笑我多少荒唐事。', '133', '历史', '100', '2017-08-03 ', '0', '1.jpg', '700', '0', 'all');
INSERT INTO `article` VALUES ('49', '167', 'Node.js的上限在', '8年前，Node.js诞生之初，性能是其最大的卖点。异步让其他所有语言汗颜', '18', '技术', '300', '2017-08-04 ', '0', '1.jpg', '500', '2', 'all');
INSERT INTO `article` VALUES ('51', '167', '伟大的杰作', '方丈遗少杜三贱', '61', '历史', '200', '2017-08-04 ', '1', '1.jpg', '200', '0', 'all');
INSERT INTO `article` VALUES ('52', '167', '我是测试文章哈啊啊啊啊', '份额鹅鹅鹅饿鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅而非无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无二位付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付蜂窝网无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无蜂窝网无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无', '29', '历史', '200', '2017-08-08 ', '0', '1.jpg', '300', '1', 'all');
INSERT INTO `article` VALUES ('53', '172', '这是两性类测试文章', '我是杜维杰，。哈哈哈哈哈哈', '30', '两性', '300', '2017-08-09 ', '0', '1.jpg', '1200', '2', 'all');
INSERT INTO `article` VALUES ('54', '172', '安东尼最终决定：3年1', '最骚的是，文章标题没有长度限制.........', '30', '体育', '200', '2017-08-09 ', '0', '1.jpg', '2', '2', 'all');
INSERT INTO `article` VALUES ('55', '172', '猪为什么有尾巴？', '因为蠢啊，傻逼。', '7', '轶事', '200', '2017-08-09 ', '1', '1.jpg', '3', '1', 'all');
INSERT INTO `article` VALUES ('56', '172', '再来一篇', '哈哈', '7', '历史', '0', '2017-08-09 ', '0', '1.jpg', '300', '0', 'all');
INSERT INTO `article` VALUES ('57', '174', '烽火天下，谁惹红颜笑', '我只是测试文章', '14', '美文', '100', '2017-08-09 ', '0', '1.jpg', '200', '0', 'all');
INSERT INTO `article` VALUES ('58', '174', '666666666', '555555555', '8', '历史', '200', '2017-08-09 ', '1', '1.jpg', '6', '1', 'all');
INSERT INTO `article` VALUES ('59', '174', '666666666', '555555555', '4', '历史', '22', '2017-08-09 ', '0', '1.jpg', '7', '0', 'all');
INSERT INTO `article` VALUES ('65', '172', '66666666', '4854874854', '2', '历史', '77', '2017-08-09 ', '0', '1.jpg', '144', '0', 'all');
INSERT INTO `article` VALUES ('66', '172', '凑个数', '5555555555555', '4', '两性', '88', '2017-08-09 ', '0', '1.jpg', '155', '0', 'all');
INSERT INTO `article` VALUES ('67', '172', '再凑个数', '哈哈哈哈', '5', '轶事', '99', '2017-08-09 ', '0', '1.jpg', '166', '0', 'all');
INSERT INTO `article` VALUES ('68', '175', '方丈开篇', '      话说：\r\n天下大事，分久必合，合久必分。当天下无主之际，祖禹有力，治水以获民心，王天下以划九州之地，乃有王霸之业。其子启有大志，禹固知之，故做作以传伯益，乃得使启以计骤取之，华夏始为家天下也。后传一十二王，至暴桀而亡，成汤起而代之，号令于殷，始为商也，后传三十余王，至淫纣而亡，文武见机而起，乃假凤鸣之兆，逐鹿牧野，亦得代之，遂号令于镐，始为周也，周分西东，九州崩裂堪速，民士不服，终为秦王所灭，不见一统。乃其后，九州纷乱数纪，小儿嬴政起而扫之，一夜平六国，又并天下疆土，竟号始皇，不改秦号。历二世', '31', '历史', '600', '2017-08-12 ', '3', '1.jpg', '1000', '2', 'all');
INSERT INTO `article` VALUES ('69', '167', '杜三贱的考试周', '\r\n昨天数据结构，今天马原，还是无碍。\r\n————2016.1.12  星期二\r\n离散考完了，就剩英语了\r\n————2016.1.13 星期三\r\n终于考完试了，却感觉没那么高兴，继续回归正轨，开始做回小说家了，顺便想说一句，\r\n今天英语听力是什么鬼，刺啦刺啦的，宝宝怎么可能听得懂......不过，淘宝发货还是挺快的，\r\n两天就到了，这个寒假，是时候吹一波箫了（其实是笛子。）\r\n————2016.1.14星期四', '1', '历史', '300', '2017-08-12 ', '0', '1.jpg', '200', '0', 'all');
INSERT INTO `article` VALUES ('70', '167', '龙游一', '\r\n前序 刘立嘉敬业讲授课  杜三贱荒唐篡国史\r\n\r\n第一篇   雄才降世\r\n\r\n第一章 善何宏老来得一子  赤贫村几世诞雄才\r\n第二章 弱龙溪瘫倒惊父心  亲父母百里觅佳音\r\n第三章 礼何宏携礼问童老  神张公拜神请玄女\r\n第四章 勇何宏涉险五龙岭  智杜翁初现兴云居\r\n第五章 八岁子因祸而得福  七旬翁欢喜得收徒\r\n第六章 八年期省亲生父母  一世杰取青釉龙眼\r\n第七章 呆龙溪境中又迷路  智灵敏路上喜截胡\r\n第八章 荒破屋灵敏动真情  傲梅林龙溪瞠双目\r\n第九章 摄魂阁灵瞳问情事  落英境龙溪答实言', '6', '美文', '200', '2017-08-12 ', '0', '1.jpg', '3000', '0', 'all');
INSERT INTO `article` VALUES ('71', '167', '龙游二', '第二篇  龙在俗世\r\n\r\n第一章 何龙溪负匣出深山  杜老翁赋诗叹流年\r\n第二章 何龙溪糊涂到一中  杜菖兰深情望旧人\r\n第三章 杜菖兰撞怀故碎玉  何龙溪倚窗为美姝\r\n第四章 赵国灭抬棺进一中  何龙溪挥掌闯拉菲\r\n第五章 高又帅仗义惩小恶  白且美冷酷除大奸\r\n第六章 明县令暗查出假凶  昏学生白日背真锅\r\n第七章 逞豪情龙溪遭人陷  恨世乱少年誓必还\r\n第八章 思父母少年归家去  遇黑衣何家惨罹难\r\n第九章 何龙溪再回五龙岭  杜凡尘初现章明区\r\n第十章 杜宅中惊喜见双眸  柔怀里痛哭泪单衫\r\n第十', '24', '历史', '1', '2017-08-12 ', '1', '1.jpg', '4000', '0', 'all');
INSERT INTO `article` VALUES ('72', '167', '龙游三', '第三篇    龙在大炎\r\n第一章 路过幽径初到大炎 初到大炎一片无奈\r\n第二章 大炎公主再回故家 再回故家思见君颜\r\n第三章 龙溪换装进发灵州 神偷窃钱扰乱客栈\r\n第四章 京华阁龙溪遭人窃 灵州城梦杰死认兄\r\n第五章 灵州城中龙溪闲逛 耶情馆里璃梦初现\r\n第六章 美璃梦真人间尤物 好菖兰乃夜中瑰宝\r\n第七章 逍遥居里秋姨试人 李家屋上龙溪怀私\r\n第八章 金轩翰淫李风受死 耶情馆美璃梦赎身\r\n第九章 李梦杰叩头谢大恩 司马宏杀囚祭子魂\r\n第十章 毕无缺星夜归京都 何龙溪定计去王城\r\n第一十一章 出灵州三人及', '432', '历史', '800', '2017-08-12 ', '22', '1.jpg', '5000', '46', 'all');
INSERT INTO `article` VALUES ('73', '167', '龙游', '第三篇    龙在大炎\r\n第一章 路过幽径初到大炎 初到大炎一片无奈\r\n第二章 大炎公主再回故家 再回故家思见君颜\r\n第三章 龙溪换装进发灵州 神偷窃钱扰乱客栈\r\n第四章 京华阁龙溪遭人窃 灵州城梦杰死认兄\r\n第五章 灵州城中龙溪闲逛 耶情馆里璃梦初现\r\n第六章 美璃梦真人间尤物 好菖兰乃夜中瑰宝\r\n第七章 逍遥居里秋姨试人 李家屋上龙溪怀私\r\n第八章 金轩翰淫李风受死 耶情馆美璃梦赎身\r\n第九章 李梦杰叩头谢大恩 司马宏杀囚祭子魂\r\n第十章 毕无缺星夜归京都 何龙溪定计去王城\r\n第一十一章 出灵州三人及行乐 到兰花四蹄禁疾驰\r\n第一十二章 忘乎已娇璃梦弄情 胡乱转义龙溪揽事\r\n第一十三章 兰花城行侠又仗义 云中馆感怀才填词\r\n第一十四章 除夕夜花灯感龙溪 兰花堆谈心誓不离\r\n第一十五章 逍遥居美秋姨见问 兰花城呆龙溪起身\r\n第一十六章 偶进王庙老人说项 夜游重瞳龙溪怀古\r\n第一十七章 好少年喜三人观擂 贼梦杰怂龙溪取牌\r\n第一十八章 美男儿坐看生死局 奇女子智取魁梧汉\r\n第一十九章 自以为是勇嬴政灵 从容不迫智何龙溪\r\n第二十章 一招制敌唯杀神溪 孤身平乱只忠臣缺\r\n第二十一章 陆地哗啦拥兵强攻 司马无缺挺戟智取\r\n第二十二章 定叛乱刘凌诉忠勇 打擂台龙溪六做东\r\n第二十三章 游龙擂何龙溪救美 长孙府孙无暇生情\r\n第二十四章 傻龙溪不知美人意 痴无缺怎得君王心\r\n第二十五章 游龙园灯火真辉煌 鸳鸯屋暗流又涌动\r\n第二十六章 李玉东好色丧狗命 何龙溪为吃做保镖\r\n第二十七章 假长孙救得真长孙 智龙溪遇到痴龙溪\r\n第二十八章 三少年欲续王都路 两老头硬留重瞳人\r\n第二十九章 长孙舒逼陈功谋事 何龙溪赖梦杰定计\r\n第三十章 长孙府何龙溪赴宴 清风阁长孙舒溯源\r\n第三十一章 明白夜龙溪闻琴音 暗黑天长孙入密穴\r\n第三十二章 饮迷茶男儿空缠绵 填情词女子誓守身\r\n第三十三章 长孙府何龙溪卖命 离恨穴通灵坠救主  \r\n第三十四章 剑中灵自称是风茸 殿上人请唤我芙蓉\r\n第三十五章 芙蓉得令寻持剑人 龙溪获匣启王都路\r\n第三十六章 北城门巧遇孙无暇 枯木路冷落毕无缺\r\n第三十七章 怒无缺正气集英堂 善将军受赏执政府\r\n第三十八章 圣无缺心软认两妹 智龙瑛气傲求一敌\r\n第三十九章 少年龙溪策马疾行 善谬梦杰出口传说\r\n第四十章 凤与桃合欢成双对 儿和女并拜是单亲\r\n第四十一章 凤桃郡龙溪又填词 零重楼莹儿再现身\r\n第四十二章 冰州城梦杰谈麒麟 麒麟阁众人遭冷落\r\n第四十三章 麒麟山黑衣捕麒麟 芙蓉洞谁人知芙蓉\r\n第四十四章 冰州府龙溪冒王使 冥山途众人遇黑衣\r\n第四十五章 心计剑欺人真太甚 美无暇用情似过深\r\n第四十六章 疯龙溪巧入芙蓉洞 伤麟儿泪识麒麟主\r\n第四十七章 一声咒语玄冰消散 两番相遇强敌来袭\r\n第四十八章 何龙溪咬牙欲死战 大炎卫留情思生擒\r\n第四十九章 勇麟儿冥山愿救主 忠无缺京都却下狱\r\n第五十章 追麟儿战英遇兰蓉 念龙溪梦杰慰暇梦\r\n第五十一章 入双泷无伤泉疗疾 回上古女娲身补天\r\n第五十二章 辞玄松肩宗族日月 见洪融晓麒麟始终\r\n第五十三章 兄弟重逢喜出望外 姊妹分离只在朝夕\r\n第五十四章 俏芙蓉偕英俊同行 帅战英带美人归都', '8', '历史', '0', '2017-08-12 ', '0', '1.jpg', '0', '1', 'all');
INSERT INTO `article` VALUES ('74', '167', '666', '反反复复烦烦烦\r\n烦烦烦烦烦烦\r\n帆帆帆帆帆帆帆帆\r\n反反复复烦烦烦\r\n', '8', '历史', '0', '2017-08-12 ', '1', '1.jpg', '0', '1', 'all');
INSERT INTO `article` VALUES ('77', '167', '111', '热威威威威威威威威威威威威威威t', '0', '历史', '0', '2017-08-23 ', '0', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('78', '167', '6666666', '非官方大师g', '0', '历史', '0', '2017-08-23 ', '0', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('79', '167', '纷纷', '发顺丰', '0', '历史', '0', '2017-08-23 ', '0', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('80', '167', 'node.js 8.1', '     据可靠消息，node.js在今日凌晨发布了最新版本。\r\n       凤飞飞凤飞飞付\r\n                                                       ——————方丈遗少杜三贱', '1', '技术', '0', '2017-08-24 ', '0', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('81', '167', '6666666666', '555555555555555555555\r\n666666666666666666666\r\n777777777777777777777\r\n888888888888888888888', '19', '历史', '0', '2017-08-24 ', '0', '1.jpg', '0', '1', 'all');
INSERT INTO `article` VALUES ('82', '167', '55555555555', '666666666666\r\n555555555555\r\n666666666666\r\n777777777777', '2', '历史', '0', '2017-08-24 ', '0', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('83', '167', '66666666666', '55555555555555', '1', '历史', '0', '2017-08-24 ', '0', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('84', '167', '66666666666', '555555555555', '3', '历史', '0', '2017-08-24 ', '1', '1.jpg', '0', '0', 'all');
INSERT INTO `article` VALUES ('85', '176', 'JavaScript是', 'JavaScript是程序语言的黑天鹅。', '13', '技术', '0', '2017-09-17 ', '1', 'upload_2ede', '0', '3', 'all');

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
  `comContent` varchar(255) NOT NULL,
  `comStartTime` varchar(30) NOT NULL,
  `comUp` int(10) NOT NULL,
  `comDown` int(10) NOT NULL,
  PRIMARY KEY (`comId`),
  KEY `comAid` (`comAid`),
  KEY `comUid` (`comUid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comAid`) REFERENCES `article` (`artId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('61', '72', '167', '6666', '2017-09-10', '0', '0');
INSERT INTO `comment` VALUES ('62', '72', '167', '55555555555', '2017-09-10', '0', '0');
INSERT INTO `comment` VALUES ('63', '72', '167', '44444444444', '2017-09-10', '0', '0');
INSERT INTO `comment` VALUES ('64', '72', '167', '33333333333', '2017-09-10', '0', '0');
INSERT INTO `comment` VALUES ('65', '72', '167', '11111111111', '2017-09-10', '0', '0');
INSERT INTO `comment` VALUES ('66', '81', '167', '6666', '2017-09-10', '0', '0');
INSERT INTO `comment` VALUES ('67', '72', '172', '666', '2017-09-11', '0', '0');
INSERT INTO `comment` VALUES ('68', '68', '172', '66666666666', '2017-09-11', '0', '0');
INSERT INTO `comment` VALUES ('69', '68', '172', '555555', '2017-09-11', '0', '0');
INSERT INTO `comment` VALUES ('70', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('71', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('72', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('73', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('74', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('75', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('76', '72', '167', 'ffffff', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('77', '72', '167', '凤飞飞凤飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('78', '72', '167', '拆分成', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('79', '72', '167', '5555', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('80', '72', '167', '666', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('81', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('82', '72', '167', '方法', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('83', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('84', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('85', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('86', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('87', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('88', '72', '167', '分为', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('89', '72', '167', '潜伏期', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('90', '72', '167', '6666666', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('91', '72', '167', '55555555', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('92', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('93', '72', '167', '方法', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('94', '72', '167', '起立', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('95', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('96', '72', '167', '飞飞飞', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('97', '72', '167', '', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('98', '72', '172', '66666', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('99', '72', '172', 'fewqf ', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('100', '72', '172', 'ewfe ', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('101', '72', '172', 'fe e', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('102', '72', '172', 'fqwfwqwfq ', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('103', '52', '172', 'fffff', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('104', '53', '172', 'fff', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('105', '53', '172', 'fff', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('106', '54', '172', 'few', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('107', '54', '172', 'wefew', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('108', '55', '172', '66966', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('109', '72', '167', '份饭', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('110', '72', '167', '为丰富', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('111', '72', '167', '人物纷纷', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('112', '72', '173', '雾非雾发', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('113', '72', '173', '我是杜三贱。。。。。。', '2017-09-17', '0', '0');
INSERT INTO `comment` VALUES ('114', '73', '173', '你是谁啊', '2017-09-18', '0', '0');
INSERT INTO `comment` VALUES ('115', '74', '173', '呵呵呵呵呵', '2017-09-18', '0', '0');
INSERT INTO `comment` VALUES ('155', '47', '167', '666666666663333333333333333333333', '', '0', '0');
INSERT INTO `comment` VALUES ('156', '85', '173', '强啊，兄弟。', '2017-09-22', '0', '0');
INSERT INTO `comment` VALUES ('157', '49', '173', '快乐就好', '2017-09-24', '0', '0');
INSERT INTO `comment` VALUES ('158', '49', '173', '', '2017-09-24', '0', '0');
INSERT INTO `comment` VALUES ('159', '58', '173', '55555', '2017-09-24', '0', '0');
INSERT INTO `comment` VALUES ('160', '85', '173', '强啊，兄弟。', '2017-09-24', '0', '0');
INSERT INTO `comment` VALUES ('161', '85', '173', '66666', '2017-09-24', '0', '0');
INSERT INTO `comment` VALUES ('162', '72', '173', '@炎曦九将：林风反反复复烦烦烦', '2017-09-24 19:22:15', '0', '0');
INSERT INTO `comment` VALUES ('163', '72', '173', '@炎曦九将：战英 你怎么样，签了吗？', '2017-09-24 19:22:37', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

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
INSERT INTO `followedandfans` VALUES ('31', '167', '172');
INSERT INTO `followedandfans` VALUES ('43', '167', '176');
INSERT INTO `followedandfans` VALUES ('46', '176', '173');

-- ----------------------------
-- Table structure for `fposts`
-- ----------------------------
DROP TABLE IF EXISTS `fposts`;
CREATE TABLE `fposts` (
  `fpostId` int(11) NOT NULL AUTO_INCREMENT,
  `fpostPid` int(11) NOT NULL,
  `fpostUid` int(11) NOT NULL,
  `fpostContent` varchar(255) NOT NULL,
  `fpostStartTime` varchar(30) NOT NULL,
  `fpostUp` int(11) NOT NULL,
  `fpostPic` varchar(50) NOT NULL,
  PRIMARY KEY (`fpostId`),
  KEY `fpostUid` (`fpostUid`),
  KEY `fpostPid` (`fpostPid`),
  CONSTRAINT `fposts_ibfk_1` FOREIGN KEY (`fpostUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fposts_ibfk_2` FOREIGN KEY (`fpostPid`) REFERENCES `post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fposts
-- ----------------------------
INSERT INTO `fposts` VALUES ('120', '10', '173', '烦烦烦方法', '2017-09-22 ', '0', 'upload_86013e18a7b3c0d65ccf4b0f4c43e91f');
INSERT INTO `fposts` VALUES ('121', '10', '173', '非吾', '2017-09-22 ', '0', 'upload_11521fdfce6dbf0b8ac47c0f1aca7f07');
INSERT INTO `fposts` VALUES ('122', '10', '173', 'few发', '2017-09-22 ', '0', 'upload_3671881fd8ec9af79511dea5d7fe1333');
INSERT INTO `fposts` VALUES ('123', '10', '173', '', '2017-09-22 ', '0', 'upload_4ad627eeafc98ccf7de875dcdd96731e.PNG');
INSERT INTO `fposts` VALUES ('124', '10', '173', '', '2017-09-22 ', '0', 'upload_120773a71d7a7018d5fadd3a50b08a51.PNG');
INSERT INTO `fposts` VALUES ('125', '10', '173', '', '2017-09-22 ', '0', 'upload_88dffe9cbf7c4bbea6efd2b242be09a0.PNG');
INSERT INTO `fposts` VALUES ('126', '10', '173', '', '2017-09-22 ', '0', 'upload_9fade417d22c2913d61cf4e667a1aeb0.PNG');
INSERT INTO `fposts` VALUES ('127', '10', '173', '', '2017-09-22 ', '0', 'upload_9101ee302e66d12e2f10832434780503.jpg');
INSERT INTO `fposts` VALUES ('128', '10', '173', '', '2017-09-22 ', '0', 'upload_7297b38f98cf794206498004cac32d60.jpg');
INSERT INTO `fposts` VALUES ('129', '10', '173', '', '2017-09-22 ', '0', 'upload_89934bf81366379d63afb1917e63562a.jpg');
INSERT INTO `fposts` VALUES ('130', '10', '173', '', '2017-09-22 ', '0', 'upload_1bd15cda746b307b220bf48122f2fae3.jpg');
INSERT INTO `fposts` VALUES ('131', '10', '173', '俄方微风', '2017-09-22 ', '0', 'upload_9c3a56295ef0983dde73d1c7480a8cd0.jpg');
INSERT INTO `fposts` VALUES ('132', '10', '173', '', '2017-09-22 ', '0', 'upload_b8f2859d63eed0e0ca7e0fc90016231a.jpg');
INSERT INTO `fposts` VALUES ('133', '8', '173', '点点滴滴', '2017-09-24 ', '0', 'upload_25ab448a61910727b0ca9baef5535311');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likeart
-- ----------------------------
INSERT INTO `likeart` VALUES ('1', '72', '167');
INSERT INTO `likeart` VALUES ('2', '72', '172');
INSERT INTO `likeart` VALUES ('5', '68', '172');
INSERT INTO `likeart` VALUES ('6', '71', '172');
INSERT INTO `likeart` VALUES ('7', '68', '167');
INSERT INTO `likeart` VALUES ('8', '51', '167');
INSERT INTO `likeart` VALUES ('9', '72', '172');
INSERT INTO `likeart` VALUES ('10', '55', '172');
INSERT INTO `likeart` VALUES ('11', '72', '173');
INSERT INTO `likeart` VALUES ('12', '84', '173');
INSERT INTO `likeart` VALUES ('13', '85', '173');
INSERT INTO `likeart` VALUES ('14', '68', '173');
INSERT INTO `likeart` VALUES ('15', '58', '173');
INSERT INTO `likeart` VALUES ('16', '74', '173');

-- ----------------------------
-- Table structure for `likepost`
-- ----------------------------
DROP TABLE IF EXISTS `likepost`;
CREATE TABLE `likepost` (
  `likeComId` int(11) NOT NULL,
  `likeUid` int(11) NOT NULL,
  `likePid` int(11) NOT NULL,
  PRIMARY KEY (`likeComId`),
  KEY `likeUid` (`likeUid`),
  KEY `likePid` (`likePid`),
  CONSTRAINT `likepost_ibfk_1` FOREIGN KEY (`likeUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likepost_ibfk_2` FOREIGN KEY (`likePid`) REFERENCES `post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likepost
-- ----------------------------

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `postUid` int(11) NOT NULL,
  `postCategory` varchar(11) NOT NULL,
  `postContent` varchar(2000) NOT NULL,
  `postStartTime` varchar(30) NOT NULL,
  `postUp` int(11) NOT NULL,
  `postTitle` varchar(11) NOT NULL,
  `postSaw` int(11) NOT NULL,
  `postPic` varchar(50) NOT NULL,
  `postSayNumber` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postId`),
  KEY `postUid` (`postUid`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`postUid`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '167', '历史', '微风拂过we\r\n帆帆帆帆帆帆帆帆帆帆帆帆帆帆                如果突然                 热管 ', '2017-08-23 ', '0', 'few', '285', '1.jpg', '34');
INSERT INTO `post` VALUES ('4', '167', '历史', '去污粉全微分', '2017-08-23 ', '0', ' 全五分五千', '218', '1.jpg', '54');
INSERT INTO `post` VALUES ('5', '167', '英雄', '                                                            非吾恋乡家，三老而已；\r\n                                                            非吾厌金银，有兄而已；\r\n                                                            非吾略时事，见惯而已，\r\n                                    ', '2017-09-10 ', '0', '明发不寐杜怀三驾到', '47', '1.jpg', '11');
INSERT INTO `post` VALUES ('6', '173', '解惑', '1.知道 2.不知道 3.知道也不知道。', '2017-09-17 ', '0', '你们知道，方丈遗少杜三', '21', 'upload_1cce', '6');
INSERT INTO `post` VALUES ('7', '173', '问情', '只教人复制粘贴', '2017-09-18 ', '0', '问世间情为何物？', '18', 'upload_c9eb', '7');
INSERT INTO `post` VALUES ('8', '173', '英雄', '杜维杰', '2017-09-22 ', '0', '6666', '6', 'upload_449bfe3d4dd760a5a198e825d4bf749c.PNG', '2');
INSERT INTO `post` VALUES ('9', '173', '英雄', '额分份未发', '2017-09-22 ', '0', '杜三贱', '10', 'upload_002a8a545d1c72c60dbc39fc03e92b67.PNG', '5');
INSERT INTO `post` VALUES ('10', '173', '英雄', '额我分分分俄方我', '2017-09-22 ', '0', '哇哇哇哇哇哇哇哇哇哇哇', '27', 'upload_354271635a3fcd641a2cf4bbe950a749.PNG', '14');

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
INSERT INTO `sessions` VALUES ('Pjb4q_wTi_UpHAVYZRiv4m4owkIb8oR5', '1506429077', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A7B22757365724E616D65223A22313233343536222C2275736572507764223A22313233343536222C22757365724E69636B223A22E7828EE69BA6E4B99DE5B086EFBC9AE68898E88BB1222C2275736572417661746172223A2275706C6F61645F65303138663737313663353435613430633631333139316131386563343666352E6A7067222C22757365724964223A3137332C2275736572436C617373223A31383030307D7D);

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(20) NOT NULL COMMENT '用户名',
  `userPwd` varchar(20) NOT NULL COMMENT '用户密码',
  `userNick` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `userHome` varchar(20) NOT NULL,
  `userClass` int(20) NOT NULL,
  `userSex` varchar(10) NOT NULL,
  `userAvatar` varchar(50) NOT NULL,
  `userBirth` varchar(50) NOT NULL,
  `userLogo` varchar(50) NOT NULL,
  `userAbout` varchar(50) NOT NULL,
  `userMoney` int(50) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `userNick` (`userNick`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('167', 'fzysdsj', '123456', '炎曦九将：白宓', '505589500@qq.com', '2147483647', '石家庄', '25200', '男', '1.jpg', '1995年七月初一', '方丈不灭，天下为炎。', '呵呵', '10000');
INSERT INTO `userinfo` VALUES ('172', 'duweijie', '123456', '炎曦九将：林风', '505589500@qq.com', '0', '', '12000', '男', '1.jpg', '', '', '', '10000');
INSERT INTO `userinfo` VALUES ('173', '123456', '123456', '炎曦九将：战英', '', '0', '', '18000', '男', 'upload_e018f7716c545a40c613191a18ec46f5.jpg', '', '', '', '10000');
INSERT INTO `userinfo` VALUES ('174', 'fzysdsjj', '123456', '炎曦九将：谢宁', '', '0', '', '800', '男', '1.jpg', '', '', '', '100000');
INSERT INTO `userinfo` VALUES ('175', 'fzysdsjjj', '123456', '炎曦九将：东镜', '', '0', '', '5000', '男', '1.jpg', '方丈元年', '方丈小弟', '方丈遗少小弟', '10000');
INSERT INTO `userinfo` VALUES ('176', 'fzyshhh', '123456', '杜维杰', '', '0', '', '0', '男', 'upload_dbec3c7af538016a13546199dbcd3ee5.jpg', '方丈元年', '方丈小弟', '方丈遗少小弟', '10000');
