/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : boke

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2016-11-19 14:49:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '文章内容',
  `pubtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  `read_number` int(11) DEFAULT '0',
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content2` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ghcl8vj985gdv3mp4ragthfoc` (`type_id`),
  KEY `FK_tcgc5bv7iarylc19wy17n3r6c` (`user_id`),
  CONSTRAINT `FK_ghcl8vj985gdv3mp4ragthfoc` FOREIGN KEY (`type_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_tcgc5bv7iarylc19wy17n3r6c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '人生没有如果', '刚才走在路上，看着满天繁星，突然间意识到没有多久2016年即将结束，离2017年考研也只有仅仅41天。25岁已经过了一个半月了，一翻过年去，那就是占着26岁了，离30岁没有几年了，可是到现在为止，工作，没有，男朋友，没有，钱，更没有。\r\n\r\n今年考研算是第三次了吧，不对，加上应届那年报名了没有去考试，应该是第四次了，真正的老司机了。第一次报名没有去考试，我对自己说的是不想读那个学校那个专业，当初报名就是为了顺大流，不知道自己要干什么，到考试了觉得自己什么都不知道，就不去了；第二次考试，刚毕业那年，换了专业，觉得考研也就那样，随便看看书，自然是考不上的，差很多；第三次考试，有了前一次的教训，虽然在上班，但是还是有意识的去看书，有了重点，考下来有进步了，刚刚进复试，调剂了专业，但一样的，不当回事，复试专业课的题目压根不会，复试被刷，因此有了这第四次考试。到现在都不知道自己到底在坚持什么了，考的还是那个学校，又换回了本专业，辞职考。今夜突然在想，假如，明年真的考上研究生了，等我毕业了那也是两年之后，2019年，已经快28，当年一起毕业的同学已经工作5年，不管是什么行业的都有自己的圈子，甚至升职到了一定的职位，在职场打拼出了一片属于自己的天空，我却才是刚刚出来；最近几年结婚的同学很多，到那个时候人孩子都打酱油了吧，或许我还没有结婚。现在也会在幻想，如果当年第一次考试好好去准备，现在已经毕业工作，甚至于第二次考试去认真准备，那也即将面对毕业，第三次考试好好复试，现在也已经在学校里面学习，可是人生没有如果，现在的事实就是我仍然在家，还在准备2017年的考研。\r\n\r\n读书时候，我总是抱怨学校没有图书馆，甚至于连上自习的教室都没有，可是我们学校却是极佳的运动锻炼场所，学校里到处都是身材姣好的，可我还是胖着一直到了现在，平时的体能训练都是能逃就逃，懒。 哪怕坚持一个学期，或许现在也是另外一种身材，而我就这样放弃了改变的机会。\r\n\r\n还记得今年看的《爱丽丝梦游仙境2》结尾时候的一段话，人们都说时间残忍，可是时间总是先给予，然后才拿走。可不是么，机会给你了，是你不珍惜。当初坚持跑步，现在就是一个瘦子，当初好好准备考试，现在就已经是一名准研究生。可是，过去的就是过去，人生没有如果，更没有后悔药，只能向前看。如果不珍惜现在，明年还是只有后悔。看，22点回到家，现在已经22:40,40分钟就这样过去了， 今日事今日毕，今天，你学习了吗？记住，人生没有如果，向前才是正道。', '2016-11-08 12:16:04', '500', '1', '155', '刚才走在路上，看着满天繁星，突然间意识到没有多久2016年即将结束，离2017年考研也只有仅仅41天。25岁已经过了一个半月了，一翻过年去，那就是占着26岁了，离30岁没有几年了，可是到现在为止，工作，没有，男朋友，没有，钱，更没有。', '1');
INSERT INTO `article` VALUES ('2', '说说我的忧虑', '纯文学有用吗？\r\n\r\n可能现在很多人会说没用，一定会觉得不吸引人吧？\r\n\r\n为什么如此之说呢？且先拿我的大女儿说说事吧。大女儿今年刚读研，看她看的书都是现在的流行趋势，要么古今言情小说，要么武侠玄幻之类的。我把我写的自认为挺优美的散文给她看，她竟来一句：“写的真的挺好的，可是太文学了，现在没几个人会看，现在的人都喜欢刺激类的，比如科幻冒险的或武侠神话的，再或者漫画悬疑之类的，以前朱自清呀等文学家之类的纯文学已少有人看了！”女儿说的这些话真的是事实,可是从自己读研的女儿嘴里说出来，我的心竟感觉好沉重！\r\n\r\n记得大女儿小时候喜欢看杨红樱的《马小跳》之类等写校园故事的作家的那些书。其实都是写孩子的一些古怪或调皮的事，孩子们爱看，而且这种类型的书太多太泛滥，适量看也没什么不好，看多了，我个人觉得并没有纯文学的内涵深度。\r\n\r\n中学后，大女儿开始跟着流行看言情小说，依然跟纯文学不沾多少边，没觉得对她作文有太大的帮助，就这样一直跟着流行走而没真正受名著文学之类的熏陶长大的女儿，写文章上我总觉不够优美！\r\n\r\n再来说说正读六年级的小女儿吧。在她小的时候，我便特意引导她看名著，因为不想她向姐姐那样，跟着形势走去看流行书，而且基本没让她接触那些校园故事书，大都以名著为主。这样，从她一年级时便开始坚持着的看名著的好习惯，结果从今年春天开始完全被流行趋势带偏了。刚开始我并不阻拦她看悬疑小说，因为书读百家，才会知识面广嘛！何况她已看了几年我为她买的好书，思想上已熏陶的差不多了，不会再被带偏了吧。结果她竟看得一发而不可收，迷上了！\r\n\r\n不让多看，她会反感，说班上人吹牛聊天的内容，我都不知说的什么，于是恶补似的看了太多悬疑梦幻之类的书。而且仿佛“中毒”挺深，不但常一个人坐房间发呆似的冥思，而且还偷偷写起类似小说了！这些我觉得也倒没什么，毕竟天马行空似的胡编乱造也是开发大脑想象力的呀，没什么不好吧？可是当我再买外国名著的书让她看时，她已没有以前的喜不自禁的表情了，且已不愿看了！\r\n\r\n我写诗呀散文呀，她会说，你就风呀云呀的不无聊吗？我，竟无言以对！确实，纯文学不好玩，不是稀奇古怪的故事，没有扣人心悬的刺激感，对于现在年轻人来说可能就一苍白无力的语言。\r\n\r\n我迷茫了！现在的人都怎么了？似乎只有有事才叫文章，无事写景叫无病呻吟似的。\r\n\r\n读过有关写上海大学中文系教授、博士生导师杨逢彬的文章，名字叫：《中文系教授谈学术：一本课外书没看过，你说可怕不可怕？》。有一推荐免试研究生去面试，教授问她小学到现在，除了课本以外，看过几本书?竟然一本课外书没看过！还说现在中文系学生连丰子恺是谁都没听说过！真的太可怕了！现在中文系的学生不看课外书了！\r\n\r\n文学是什么？文学就是语言文字的艺术，是指有文采的语言作品 。以不同的形式，也就是体裁，比如诗歌、散文等，表现内心和再现一定时期、一定地域的社会生活。\r\n\r\n记得网上有过一个段子：说之所以要多读书，就是因为当我们看到一群鸟在湖面飞过的时候，我们能够呤诵出:落霞与孤鹭齐飞，秋水共长天一色。而不是在那吵吵：“我去，全都是鸟！”在我们去戈壁旅游，骑着骏马奔腾之时，心里默念着：大漠孤烟直，长河落日圆。而不是在那喊：“哎呀妈呀，都是沙子！”虽说这些都是调侃，但却足以说明读书与不读书的区别。于我来说，就是所谓文学的重要性！\r\n\r\n现在的孩子看的书也没什么不好，但是真正的文学也不能丢呀！记得在微信上看过一篇高考满分作文，那学生结合古今所写的关于爱情的一篇情感文章，里面引经据典不但提到了古代的《梁山伯与祝英台》以及外国的《罗密欧与朱丽叶》，还说到了流行电视剧《神雕侠侣》里的杨过与小龙女，那文章写的真叫好！说明他中外古今通晓，我既欣赏又佩服！现在的孩子就应该这样，既要跟上时代还不要忘了真正的文学！\r\n\r\n现在，大女儿也已开始读些文学之类的书了，我很欣慰！其实多读些名家的书不一定是为了写作，我觉得更多的应该是提高修养，因为我认为品行的好坏与多读书是分不开的，尤其是多读好书，多读纯文学的书！\r\n\r\n所以，为了社会更好的发展，为了能让自己生活在更文明的环境氛围中，还是奉劝大家都多读书，读好书，才是真正得延续了我国五千年文明古国的传统，让文学继续传扬并发展下去吧!', '2016-11-16 12:18:27', '102', '1', '155', '大女儿今年刚读研，看她看的书都是现在的流行趋势，要么古今言情小说，要么武侠玄幻之类的。我把我写的自认为挺优美的散文给她看，她竟来一句：“写的真的挺好的，可是太文学了，现在没几个人会看，现在的人都喜欢刺激类的，比如科幻冒险的或武侠神话的，再或者漫画悬疑之类的，以前朱自清呀等文学家之类的纯文学已少有人看了！”女儿说的这些话真的是事实,可是从自己读研的女儿嘴里说出来，我的心竟感觉好沉重！', '1');
INSERT INTO `article` VALUES ('3', '人生的看清与看透', '人世间真正高明的人，向上可以看透苍天，向下可以看清黄泉，世界万象了然于心，在任何时刻都可以神色不变，气定神闲。\r\n\r\n越是把人看清，越要懂得以宽容的心态与人相处；越是把人世间看透，越要懂得以宽容的心态去理解这个世界，更加热爱自己的人生。\r\n\r\n看见的人，不如看清的人；看清的人，不如看透的人；看透的人，不如看开的人。\r\n\r\n用心灵去感受大自然，去看清世界，看透自己，才能领悟人生存的奥义。\r\n\r\n人生看清了，不过是是非；事业看透了，不过是取舍。\r\n\r\n看清一件事，开窍了；看透一件事，成熟了。\r\n\r\n人生大喜大悲看清自己，大起大落看透身边的人。\r\n\r\n看清的重点在于清，是清楚，是明白，是明晰，是本质；看透的重点在于透，是透彻，不糊涂，不迷茫，不疑问。\r\n\r\n看清需要智慧，看透需要阅历，不看破则需要一种胸襟。\r\n\r\n看清了是深入了还未走出，看透是看空了进去又出来了。\r\n\r\n看清，不等于看懂；看透，不等于看开。\r\n\r\n看懂一个人，一定是你在意过；看清一个人，一定是你落魄过；看破一个人，一定是你较量过；看透一个人，一定是你付出过。\r\n\r\n看清的是别人的真面目，看透的确是世间的沧桑。\r\n\r\n时间不仅让你看透别人，也让你认清自己。\r\n\r\n看到的不等于看见，看见的不等于看清，看清的不等于看透，看透的不等于看开。\r\n\r\n人生首先要是望远镜，看远；再就是显微镜，看清；接下来是放大镜，看透；其次是太阳镜，看淡；最后是哈哈镜，笑看生活。\r\n\r\n鹰眼说，看清自己，看透世界。\r\n\r\n看透了人世间的恋爱红尘，看清楚了人与人之间的虚伪谎言，看明白了红尘世间所谓的爱情。看清是了解了所有的细节，不受欺骗蒙蔽；看透是了解了联系各细节的因果由来，确定某事物对于整个世界有什么影响。\r\n\r\n看清的阶段是对事物外表的清楚明白，而看透的阶段已是对事物内在的清楚与明白了。\r\n\r\n能看清的人，不一定能看透；能看透的人，不一定能看淡；能看淡的人不一定能看空。\r\n\r\n看清，我们知道了原因，抬起头；看透，我们知道了苦难，低下头；看破，我们知道了结果，回过头。\r\n\r\n看懂人生，看清生活，看破欲望，看淡烦恼，天天开心。\r\n\r\n真正聪明的人，看清了过程，看透了结果，表面佯装不知，心中有数又不说破。', '2016-11-17 12:20:50', '205', '1', '155', '人世间真正高明的人，向上可以看透苍天，向下可以看清黄泉，世界万象了然于心，在任何时刻都可以神色不变，气定神闲。\r\n\r\n越是把人看清，越要懂得以宽容的心态与人相处；越是把人世间看透，越要懂得以宽容的心态去理解这个世界，更加热爱自己的人生。', '1');
INSERT INTO `article` VALUES ('4', '外媒：特朗普给中国送了一份大礼', '中国议题已经被美国的民粹主义炒作了长达30年，而2016年总统大选也不例外。前国务卿希拉里反复保证将会对抗中国，并将要求中国服从国际贸易秩序，但是她熟练的政治语言给她留出了很多周旋的空间，避免她和中国爆发冲突。但是总统当选人特朗普的反贸易反中国的言论，让他不得不对中国做出很多明确的行动。\r\n\r\n现在，当选总统的特朗普要做出一些困难的选择，要兑现哪些竞选承诺，而且要如何兑现它们。目前国会由共和党控制， 所以特朗普如果不能够兑现自己的诺言，他将不能够将责任怪到国会身上。事实上，他针对中国问题做出的竞选承诺，绝大多数都可以通过行政命令来完成，不需要国会的支持。比如中美的气候合作，只需要特朗普签个名字就可以被终止。\r\n\r\n在竞选初期，特朗普承诺将会在上任第一天就把中国列为货币操纵国（2012年总统大选中，共和党候选人罗姆尼也做过这个承诺）。特朗普还承诺将会采用法律手段对抗北京，如果北京不接受美国的国内和国际贸易规则，将会对中国出口美国的产品施加惩罚性关税。言之凿凿，没有斡旋的余地。\r\n\r\n特朗普还承诺将要废除作为奥巴马政府所核心贸易政策的跨太平洋伙伴关系协定（TPP）。理论上，TPP应该获得来自美国建制派的广泛支持，但是在实际上，TPP已经变成了一个政治毒药。这是一个传播美国国际影响力的工具，但是特朗普认为这最终将变成中国人陷害美国的的特洛伊木马。\r\n\r\n以上是一些针对中国的竞选承诺。那么现实会如何？可以想象，总统特朗普的对华政策相比候选人特朗普来说，肯定不能那么具有攻击性。他的言辞可能不想希拉里那么修饰美观，但是他也不可能像他表现出来的那么极端。中国可能会对特朗普的不确定性怀有警惕，但是中国也有可能会从特朗普的政策中获得许多利益。\r\n\r\n第一天\r\n\r\n特朗普曾经反复承诺，他将会在上任第一天就让他的财政部长把中国列为货币操纵国。这值得怀疑。大家都知道中国操纵货币（观察者网注：不是自由浮动汇率）已经40多年了。其实每个国家都会对货币汇率进行或多或少的干预，只是中国做的更加全面而已。外交政治是中国可以保持汇率操纵这么长时间的唯一原因。\r\n\r\n特朗普的观点是近期中国更有可能操纵其货币。大多数被指控货币操纵的国家都是将将货币贬值以增加出口竞争力。事实上，在美国财政部观察列表上的货币操纵国中，有五个国家正在使其货币贬值。\r\n\r\n相比之下，根据最近美国财政部报告，中国在外汇市场上进行了大量干预，以“防止人民币快速贬值”。公报指出，去年中国已经“销售了超过5700亿美元的外汇资产，以防止人民币贬值更快”。这是一个巨大的市场干预，保持人民币强势，降低中国的出口竞争力。\r\n\r\n中国当然不是为了使美国出口商获利而操纵货增值。人民币加入国际货币基金组织的特别提款权货币篮子，并对2015年底和2016年初的大规模资本外逃做出了规定。因此，尽管中国是一个货币操纵国，而且特朗普政府可能会将中国列为货币操纵国，但是这么做唯一能做的也只是监测中国而已。现在，北京的防止货币贬值的行为其实正在帮助美国出口商，而不是伤害他们。', '2016-11-18 12:22:26', '40', '3', '93', '特朗普在竞选总统期间曾针对中美关系做出了大量的评论和选民承诺。比如他要和中国打贸易战等等。但是他真的能如愿以偿吗？16日，美国《外交（Foreign Affairs）》杂志发文表示，特朗普不单单不会给中国造成什么影响，反而他的政策可能会送给中国一个大礼。', '3');
INSERT INTO `article` VALUES ('5', '农妇李桂英“追凶”17年后成“维权名人”：有上千人来求助', '李桂英一家20年前的全家福 央视网 资料图\r\n10月初，李桂英的小女儿出嫁，男方在酒店摆了30桌酒席。当天，屋外桂花飘香，屋内宾客满堂，李桂英却想起了往事，悲喜交加。\r\n1998年农历正月初三，河南项城市南顿镇齐坡村农妇李桂英的丈夫齐元德被同村五人伤害致死，随后五人在一夜间销声匿迹。从此，李桂英开始了长达17年的“追凶”生涯，她称自己找遍十余省份，运用心理侦查、秘密侦查和伪装侦查等，找出四名“凶手”。\r\n2015年11月，李桂英找到媒体，曝出17年的追凶事迹，媒体报道后第17天，2015年12月3日，第五名“凶手”齐扩军在新疆落网。“我用了17年去找仇人，但媒体报道后，却只用了不到17天。”她说。\r\n一场因邻里矛盾引发的血案，改变了齐坡村的六个家庭，引出17年的追凶传奇。李桂英成了“法治人物”，她以自己的名字成立了一家法律维权网站，来自四面八方的求助者有时挤满了她家客厅。\r\n此后，有媒体质疑嫌犯的追逃线索并非是李桂英提供。项城警方一名工作人员在接受媒体采访时说，“这可能是信息不对称导致的，她有可能尽过这方面的努力，所以她就觉得是她提供的。”\r\n但李桂英坚持称“追凶”线索来自自己。\r\n18年里，“追凶”彻底改变了李桂英的生活轨迹，她中断了自己的生意，独自养大五个孩子，至今未再结婚。在“凶手”落网后，她仍否决了别人为她介绍老伴的建议，村民提起这位泼辣的女人有一种复杂的情绪：“比男人还厉害”。\r\n如今，她的“追凶战争”还在继续。今年10月，她和律师裴文魁到周口市检察院和河南省检察院，分别对五名“凶手”的三份判决书提请抗诉，要求判更重的刑，并在抗诉书上提出三百多万元的赔偿。\r\n虽然认为提请抗诉获准的可能性不高，但李桂英不愿放手。从沉甸甸的柿子树旁走过，进入一个小巷子，不超过五十米的距离，推开一扇深红色的铁门，就能看见宽阔的院子和几间平房，这里是李桂英的家，曾属南顿镇东风行政村，几年前划入光武办事处。\r\n“1998年出事后，就从齐坡村搬了出来，不敢在里面继续住了。”李桂英说。\r\n项城市法院2000年的判决书显示：1998年元月30日下午，齐学山在李桂英门口骂李桂英，李桂英与齐学山对骂，齐学山用砖头砸李桂英，后齐学山叫其哥齐金山等人过来打架，齐金山、齐保山、齐扩军和齐海英（后改名齐好记）过来后，齐金山用杀猪刀在李桂英肚子上扎两刀，这时李桂英的丈夫齐元德过来，拿着一把镰刀。齐海英用木棍打住齐元德左肩，齐元德举镰还击，齐金山用杀猪刀朝齐元德的上身左侧扎了一刀，齐元德赶紧往家跑。齐海英从齐元德身后打一棍，齐元德倒地后，齐保山又在齐元德身上拍了一锹，最终导致齐元德失血休克抢救无效死亡，李桂英法学鉴定为轻伤。\r\n2016年10月的一个下午，李桂英蹲在家门前筛选簸箕里的黄豆，一切看上去似乎归于平静——刚结婚不久的小女儿，回了一趟家后又出去了；大儿子把小孩放家里，并不时过来看望母亲和儿子。\r\n隐藏在门口和院子的五个摄像头，如果不经提醒，少有人能发现它们的存在。“它们更新换代五次了，都记不清有多少年了。”李桂英的大儿子周周说，因为怕被“凶手”那边人报复，家里还养了一条大狗。\r\n这五名“凶手”，如今有三名在监狱，两名刑满释放后已外出打工。“他们的亲戚，七大姑八大姨都在村子里。”李桂英挨到澎湃新闻（www.thepaper.cn）记者身边，突然把声音压低说，“齐元德（家）就只有他一个，没有其他的兄弟，所以都是我一个人去‘追凶’”。\r\n1998年，凶案发生后，李桂英跑到项城市公安局询问情况，有工作人员告诉她：已经对5人立案追逃，“你有线索吗，你有线索我们就去抓。”李桂英说，她就自己跑去找线索。\r\n“齐金山络腮胡子大眼睛头发少，齐海营塌鼻子小眼睛，齐扩军卷头发翻嘴唇。”她描述三个嫌犯的面容，发动在外打工的村里人帮忙找。接着，她自己也开始外出“缉凶”，一有风吹草动就扑过去，足迹遍布了新疆、云南、海南、山东、广西、北京等十来个省市区。\r\n齐坡村大部分人都姓齐，据说是一个老祖宗的后代。在村子里，李桂英和齐金山两家曾经最亲。“齐元德和齐金山是一个老太爷的（后代）”，齐金山的母亲李桂荣说，出事后，李桂英上她家吵，还“扒”了她家的房子。\r\n不过，李桂英对“吵架、扒房子”的指责表示否认。\r\n“第一次追凶，是2000年的时候，我去新疆找齐金山，当时我和我姐姐哥哥一起去的……”李桂英说着说着，突然提高声音，接着又压低声音，“到了乌鲁木齐，我给自己乔装打扮了一番，买了一副墨镜和一顶帽子。”\r\n“我睡在操场，鞋底烂了，光着脚底……”李桂英突然哽咽起来，很快又恢复平静，她说，那时自己因为丢了钱，只能几天不洗澡，带着豆腐乳吃馍馍，“好吃还节约钱”。\r\n出事前，她的家庭条件不错，是村子较早盖楼房，买拖拉机的。夫妇两人拉过土方，开过砖窑，最后买了机床放家里做铆钉生意。李桂英性格泼辣，经常骑着自行车到处推销钉子，丈夫齐元德则在家里做铆钉加工。\r\n齐元德过世后，李桂英一个人去推销钉子。她曾对媒体说：我推着自行车回来，路上走了四个小时，脚上的棉靴湿透了。我就想啊，假如孩子他爸在，肯定来接我了。\r\n一个人追凶的路途异常艰辛，有人劝李桂英找个男人一起去，但她说这样会被人说闲话，有时候她就带着二儿子一起去。\r\n齐元德过世后，李桂英一个人抚养五个小孩长大，至今没有再找伴儿。李桂英说，“最难的日子都过去了，现在也没那必要了。”而李桂英大姐李欣兰说：“（那时）一个女人带五个小孩，你怎么再找（男人）？”\r\n在“追凶”17年后，事情在去年秋冬出现了转折。\r\n去年10月，李桂英到北京上访，有人建议她求助媒体。“他还给了我电话，我打电话到电视台，开始一直打不通。”直到11月初，河南电视台播出了她的“追凶”故事，随后全国各地媒体都跟进报道了。\r\n李桂英的事情在中央电视台播出后，项城市政法委、省公安厅官员，教育委员会和宣传部的领导召开会议，通报了案件的处理进度，并向李桂英承诺，他们将全力追捕最后一名“凶手”齐扩军。\r\n17天后，齐扩军在新疆落网。 “17天能破获的案子，为什么让我等17年？”李桂英当时接受媒体采访时反问道。\r\n“维权名人”\r\n“追凶”让李桂英成了名人和“斗士”。\r\n她有三个儿子、两个女儿，全都上了大学，如今全部参加工作了。\r\n“我的孩子都很争气”，李桂英自豪地说，三个已经成家了，几个儿媳妇和女婿都很好，“两个儿媳都陪嫁了车过来，老三和老四今明年也会成家”。\r\n如果算上女婿，家里当警察的有好几个。李桂英曾对媒体说，她经常给他们“上课”说：“做任何事情前，都要想着像我这样的人，想想你老娘当年受的罪。”', '2016-11-18 12:24:51', '5', '3', '93', '李桂英家附近的齐元恒，曾经和李桂英吵过架，“她脾气很暴躁，（吵架的时候），还踢了我一脚。”齐元恒老婆说，后来他们搬离了李桂英家。\r\n2015年底，项城市公安局新闻发言人张亚飞接受采访时表示，李桂英追凶事件暴露出侦办民警工作责任心不强、对剩余逃犯追逃懈怠等问题，“我们也在进行反思”。张亚飞还称，他们已成立由纪委书记牵头的倒查组，严查不同时期、不同阶段办案人员的责任，一经发现违法违纪问题，将依法依纪严肃处理。', '3');
INSERT INTO `article` VALUES ('6', 'Java （计算机编程语言）', '20世纪90年代，硬件领域出现了单片式计算机系统，这种价格低廉的系统一出现就立即引起了自动控制领域人员的注意，因为使用它可以大幅度提升消费类电子产品（如电视机顶盒、面包烤箱、移动电话等）的智能化程度。Sun公司为了抢占市场先机，在1991年成立了一个称为Green的项目小组，帕特里克、詹姆斯·高斯林、麦克·舍林丹和其他几个工程师一起组成的工作小组在加利福尼亚州门洛帕克市沙丘路的一个小工作室里面研究开发新技术，专攻计算机在家电产品上的嵌入式应用。\r\n由于C++所具有的优势，该项目组的研究人员首先考虑采用C++来编写程序。但对于硬件资源极其匮乏的单片式系统来说，C++程序过于复杂和庞大。另外由于消费电子产品所采用的嵌入式处理器芯片的种类繁杂，如何让编写的程序跨平台运行也是个难题。为了解决困难，他们首先着眼于语言的开发，假设了一种结构简单、符合嵌入式应用需要的硬件平台体系结构并为其制定了相应的规范，其中就定义了这种硬件平台的二进制机器码指令系统（即后来成为“字节码”的指令系统），以待语言开发成功后，能有半导体芯片生产商开发和生产这种硬件平台。对于新语言的设计，Sun公司研发人员并没有开发一种全新的语言，而是根据嵌入式软件的要求，对C++进行了改造，去除了留在C++的一些不太实用及影响安全的成分，并结合嵌入式系统的实时性要求，开发了一种称为Oak的面向对象语言。\r\n由于在开发Oak语言时，尚且不存在运行字节码的硬件平台，所以为了在开发时可以对这种语言进行实验研究，他们就在已有的硬件和软件平台基础上，按照自己所指定的规范，用软件建设了一个运行平台，整个系统除了比C++更加简单之外，没有什么大的区别。1992年的夏天，当Oak语言开发成功后，研究者们向硬件生产商进行演示了Green操作系统、Oak的程序设计语言、类库和其硬件，以说服他们使用Oak语言生产硬件芯片，但是，硬件生产商并未对此产生极大的热情。因为他们认为，在所有人对Oak语言还一无所知的情况下，就生产硬件产品的风险实在太大了，所以Oak语言也就因为缺乏硬件的支持而无法进入市场，从而被搁置了下来。\r\n1994年6、7月间，在经历了一场历时三天的讨论之后，团队决定再一次改变了努力的目标，这次他们决定将该技术应用于万维网。他们认为随着Mosaic浏览器的到来，因特网正在向同样的高度互动的远景演变，而这一远景正是他们在有线电视网中看到的。作为原型，帕特里克·诺顿写了一个小型万维网浏览器WebRunner。[4] \r\n1995年，互联网的蓬勃发展给了Oak机会。业界为了使死板、单调的静态网页能够“灵活”起来，急需一种软件技术来开发一种程序，这种程序可以通过网络传播并且能够跨平台运行。于是，世界各大IT企业为此纷纷投入了大量的人力、物力和财力。这个时候，Sun公司想起了那个被搁置起来很久的Oak，并且重新审视了那个用软件编写的试验平台，由于它是按照按照嵌入式系统硬件平台体系结构进行编写的，所以非常小，特色适用于网络上的传输系统，而Oak也是一种精简的语言，程序非常小，适合在网络上传输。Sun公司首先推出了可以嵌入网页并且可以随同网页在网络上传输的Applet（Applet是一种将小程序嵌入到网页中进行执行的技术），并将Oak更名为Java（在申请注册商标时，发现Oak已经被人使用了，再想了一系列名字之后，最终，使用了提议者在喝一杯Java咖啡时无意提到的Java词语）。5月23日，Sun公司在Sun world会议上正式发布Java和HotJava浏览器。IBM、Apple、DEC、Adobe、HP、Oracle、Netscape和微软等各大公司都纷纷停止了自己的相关开发项目，竞相购买了Java使用许可证，并为自己的产品开发了相应的Java平台。[5-6] \r\n1996年1月，Sun公司发布了Java的第一个开发工具包（JDK 1.0），这是Java发展历程中的重要里程碑，标志着Java成为一种独立的开发工具。9月，约8.3万个网页应用了Java技术来制作。10月，Sun公司发布了Java平台的第一个即时（JIT）编译器。\r\n1997年2月，JDK 1.1面世，在随后的3周时间里，达到了22万次的下载量。4月2日，Java One会议召开，参会者逾一万人，创当时全球同类会议规模之纪录。9月，Java Developer Connection社区成员超过10万。\r\n1998年12月8日，第二代Java平台的企业版J2EE发布。1999年6月，Sun公司发布了第二代Java平台（简称为Java2）的3个版本：J2ME（Java2 Micro Edition，Java2平台的微型版），应用于移动、无线及有限资源的环境；J2SE（Java 2 Standard Edition，Java 2平台的标准版），应用于桌面环境；J2EE（Java 2Enterprise Edition，Java 2平台的企业版），应用于基于Java的应用服务器。Java 2平台的发布，是Java发展过程中最重要的一个里程碑，标志着Java的应用开始普及。\r\n1999年4月27日，HotSpot虚拟机发布。HotSpot虚拟机发布时是作为JDK 1.2的附加程序提供的，后来它成为了JDK 1.3及之后所有版本的Sun JDK的默认虚拟机[7]  。\r\n2000年5月，JDK1.3、JDK1.4和J2SE1.3相继发布，几周后其获得了Apple公司Mac OS X的工业标准的支持。2001年9月24日，J2EE1.3发布。2002年2月26日，J2SE1.4发布。自此Java的计算能力有了大幅提升，与J2SE1.3相比，其多了近62%的类和接口。在这些新特性当中，还提供了广泛的XML支持、安全套接字（Socket）支持（通过SSL与TLS协议）、全新的I/OAPI、正则表达式、日志与断言。2004年9月30日，J2SE1.5发布，成为Java语言发展史上的又一里程碑。为了表示该版本的重要性，J2SE 1.5更名为Java SE 5.0（内部版本号1.5.0），代号为“Tiger”，Tiger包含了从1996年发布1.0版本以来的最重大的更新，其中包括泛型支持、基本类型的自动装箱、改进的循环、枚举类型、格式化I/O及可变参数。\r\n2005年6月，在Java One大会上，Sun公司发布了Java SE 6。此时，Java的各种版本已经更名，已取消其中的数字2，如J2EE更名为JavaEE，J2SE更名为JavaSE，J2ME更名为JavaME。[8] \r\n2006年11月13日，Java技术的发明者Sun公司宣布，将Java技术作为免费软件对外发布。Sun公司正式发布的有关Java平台标准版的第一批源代码，以及Java迷你版的可执行源代码。从2007年3月起，全世界所有的开发人员均可对Java源代码进行修改[9]  。', '2016-11-19 12:27:32', '852', '2', '155', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程[1]  。', '2');
INSERT INTO `article` VALUES ('7', 'mySQL （关系型数据库管理系统）', 'MySQL是一个关系型数据库管理系统，由瑞典MySQL AB 公司开发，目前属于 Oracle 旗下产品。MySQL 最流行的关系型数据库管理系统，在 WEB 应用方面MySQL是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之一。\r\nMySQL是一种关联数据库管理系统，关联数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。\r\nMySQL所使用的 SQL 语言是用于访问数据库的最常用标准化语言。MySQL 软件采用了双授权政策，它分为社区版和商业版，由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，一般中小型网站的开发都选择 MySQL 作为网站数据库。\r\n由于其社区版的性能卓越，搭配 PHP 和 Apache 可组成良好的开发环境。[1] ', '2016-11-19 12:29:05', '0', '2', '93', 'MySQL是一个关系型数据库管理系统，由瑞典MySQL AB 公司开发，目前属于 Oracle 旗下产品。MySQL 最流行的关系型数据库管理系统，在 WEB 应用方面MySQL是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之一。\r\nMySQL是一种关联数据库管理系统，关联数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。', '2');
INSERT INTO `article` VALUES ('8', '蔡依林恋情不被看好 锦荣罕见发声反击', '北京时间11月19日消息，据台湾媒体报道，蔡依林（Jolin）与男友锦荣交往约7年，一度传出论及婚嫁，也被旁人催促快结婚，虽然小俩口鲜少秀恩爱，但感情一直很稳定。但日前蔡依林遭台湾命理师江柏乐断言会变心，被算出和锦荣勉强还能再撑1年。对此，锦荣罕见发声反击，并间接证实和蔡依林恋情依旧稳定。\r\n据报导，命理师江柏乐直言，2017年在演艺圈中，会有很多和桃花有关的新闻，不乏偷吃、闪婚、离婚等，更进一步断言蔡依林会变心，和锦荣勉强还能再撑1年。\r\n针对此事，一向话少的锦荣，18日主持《王子的移动城堡》受访时，罕见发声反击，对于命理师指出蔡依林恐变心一事，做出了正面回应，“他们每年都这样讲，结果呢？好像也没人说他们不准！”一番话公开后，也间接证实了和女友蔡依林感情依旧稳定。', '2016-11-19 12:30:59', '52', '4', '155', '据台湾媒体报道，蔡依林（Jolin）与男友锦荣交往约7年，一度传出论及婚嫁，也被旁人催促快结婚，虽然小俩口鲜少秀恩爱，但感情一直很稳定。但日前蔡依林遭台湾命理师江柏乐断言会变心，被算出和锦荣勉强还能再撑1年。对此，锦荣罕见发声反击，并间接证实和蔡依林恋情依旧稳定。', '4');
INSERT INTO `article` VALUES ('32', '生活很美好', '生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我生活爱我', '2016-11-19 12:32:13', null, '1', '155', '我爱生活', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称（前端，后端，嵌入式，安卓  四选一）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '日常生活');
INSERT INTO `category` VALUES ('2', '学习分享');
INSERT INTO `category` VALUES ('3', '时事新闻');
INSERT INTO `category` VALUES ('4', '娱乐八卦');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `content` text COMMENT '内容',
  `article_id` bigint(20) DEFAULT '20',
  `review_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT '95',
  PRIMARY KEY (`id`),
  KEY `FK_qcs11flwx2d930p5pbefo5mj4` (`article_id`),
  KEY `FK_jdnb3cnup5vq6opj19kbm8w4d` (`user_id`),
  KEY `FK_r5l24vpi1wf35q8h3e7lejuar` (`review_id`),
  CONSTRAINT `FK_jdnb3cnup5vq6opj19kbm8w4d` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_qcs11flwx2d930p5pbefo5mj4` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `FK_r5l24vpi1wf35q8h3e7lejuar` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('35', '2016-11-19 12:32:27', ' 傻逼', '32', null, '155');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mark` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员', 'ADMIN');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  KEY `FK_njajel6a2q8tr36emb9l8vw7n` (`user_id`),
  KEY `FK_1p4td69hdcg4iaau4pvj20m3h` (`role_id`),
  CONSTRAINT `FK_1p4td69hdcg4iaau4pvj20m3h` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK_njajel6a2q8tr36emb9l8vw7n` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '149');

-- ----------------------------
-- Table structure for temporary_article
-- ----------------------------
DROP TABLE IF EXISTS `temporary_article`;
CREATE TABLE `temporary_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `save_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nxkrxtv9wk5dheqt3yn82v30c` (`user_id`),
  CONSTRAINT `FK_nxkrxtv9wk5dheqt3yn82v30c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temporary_article
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `password` varchar(15) NOT NULL COMMENT '密码',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `roles_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ntc01ead2d77ypev4qkp2x7si` (`roles_id`),
  CONSTRAINT `FK_ntc01ead2d77ypev4qkp2x7si` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('93', '李刚', '123456', null, null, null);
INSERT INTO `user` VALUES ('149', 'Admin', 'Admin', null, null, '1');
INSERT INTO `user` VALUES ('155', '赵禾才', '666666', null, '', null);
SET FOREIGN_KEY_CHECKS=1;