/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm0dq3x
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm0dq3x` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm0dq3x`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618152195552 DEFAULT CHARSET=utf8 COMMENT='客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (101,'2021-04-11 22:26:00',1,1,'提问1','回复1',1),(102,'2021-04-11 22:26:00',2,2,'提问2','回复2',2),(103,'2021-04-11 22:26:00',3,3,'提问3','回复3',3),(104,'2021-04-11 22:26:00',4,4,'提问4','回复4',4),(105,'2021-04-11 22:26:00',5,5,'提问5','回复5',5),(106,'2021-04-11 22:26:00',6,6,'提问6','回复6',6),(1618152195551,'2021-04-11 22:43:14',11,NULL,'这里能跟客服聊天',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm0dq3x/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm0dq3x/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm0dq3x/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussqiche` */

DROP TABLE IF EXISTS `discussqiche`;

CREATE TABLE `discussqiche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='汽车评论表';

/*Data for the table `discussqiche` */

insert  into `discussqiche`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-11 22:26:00',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-04-11 22:26:00',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-04-11 22:26:00',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-04-11 22:26:00',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-04-11 22:26:00',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-04-11 22:26:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussqichemeirong` */

DROP TABLE IF EXISTS `discussqichemeirong`;

CREATE TABLE `discussqichemeirong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='汽车美容评论表';

/*Data for the table `discussqichemeirong` */

insert  into `discussqichemeirong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-11 22:26:00',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-11 22:26:00',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-11 22:26:00',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-11 22:26:00',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-11 22:26:00',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-11 22:26:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `goumaijilu` */

DROP TABLE IF EXISTS `goumaijilu`;

CREATE TABLE `goumaijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiadanriqi` date DEFAULT NULL COMMENT '下单日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618152099517 DEFAULT CHARSET=utf8 COMMENT='购买记录';

/*Data for the table `goumaijilu` */

insert  into `goumaijilu`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`fenlei`,`guige`,`jiage`,`xiadanriqi`,`beizhu`,`zhanghao`,`shouji`,`sfsh`,`shhf`,`ispay`) values (81,'2021-04-11 22:26:00','订单编号1','商品名称1','分类1','规格1',1,'2021-04-11','备注1','账号1','手机1','是','','未支付'),(82,'2021-04-11 22:26:00','订单编号2','商品名称2','分类2','规格2',2,'2021-04-11','备注2','账号2','手机2','是','','未支付'),(83,'2021-04-11 22:26:00','订单编号3','商品名称3','分类3','规格3',3,'2021-04-11','备注3','账号3','手机3','是','','未支付'),(84,'2021-04-11 22:26:00','订单编号4','商品名称4','分类4','规格4',4,'2021-04-11','备注4','账号4','手机4','是','','未支付'),(85,'2021-04-11 22:26:00','订单编号5','商品名称5','分类5','规格5',5,'2021-04-11','备注5','账号5','手机5','是','','未支付'),(86,'2021-04-11 22:26:00','订单编号6','商品名称6','分类6','规格6',6,'2021-04-11','备注6','账号6','手机6','是','','未支付'),(1618152057858,'2021-04-11 22:40:57','202141122412888518647','','','',NULL,NULL,'','用户1','13823888881','否',NULL,'未支付'),(1618152099516,'2021-04-11 22:41:38','202141122421055897542','','','',NULL,NULL,'','用户1','13823888881','否',NULL,'未支付');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-04-11 22:26:00','标题1','简介1','http://localhost:8080/ssm0dq3x/upload/news_picture1.jpg','内容1'),(122,'2021-04-11 22:26:00','标题2','简介2','http://localhost:8080/ssm0dq3x/upload/news_picture2.jpg','内容2'),(123,'2021-04-11 22:26:00','标题3','简介3','http://localhost:8080/ssm0dq3x/upload/news_picture3.jpg','内容3'),(124,'2021-04-11 22:26:00','标题4','简介4','http://localhost:8080/ssm0dq3x/upload/news_picture4.jpg','内容4'),(125,'2021-04-11 22:26:00','标题5','简介5','http://localhost:8080/ssm0dq3x/upload/news_picture5.jpg','内容5'),(126,'2021-04-11 22:26:00','标题6','简介6','http://localhost:8080/ssm0dq3x/upload/news_picture6.jpg','内容6');

/*Table structure for table `peijian` */

DROP TABLE IF EXISTS `peijian`;

CREATE TABLE `peijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `peijianmingcheng` varchar(200) DEFAULT NULL COMMENT '配件名称',
  `peijianfenlei` varchar(200) DEFAULT NULL COMMENT '配件分类',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `gongxiaoshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供销商名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `peijiantupian` varchar(200) DEFAULT NULL COMMENT '配件图片',
  `peijianjiage` int(11) NOT NULL COMMENT '配件价格',
  `peijianjieshao` longtext COMMENT '配件介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='配件';

/*Data for the table `peijian` */

insert  into `peijian`(`id`,`addtime`,`shangpinbianhao`,`peijianmingcheng`,`peijianfenlei`,`pailiang`,`gongxiaoshangmingcheng`,`dizhi`,`fuzeren`,`lianxifangshi`,`shuliang`,`peijiantupian`,`peijianjiage`,`peijianjieshao`) values (51,'2021-04-11 22:26:00','商品编号1','配件名称1','配件分类1','排量1','供销商名称1','地址1','负责人1','联系方式1','数量1','http://localhost:8080/ssm0dq3x/upload/peijian_peijiantupian1.jpg',1,'配件介绍1'),(52,'2021-04-11 22:26:00','商品编号2','配件名称2','配件分类2','排量2','供销商名称2','地址2','负责人2','联系方式2','数量2','http://localhost:8080/ssm0dq3x/upload/peijian_peijiantupian2.jpg',2,'配件介绍2'),(53,'2021-04-11 22:26:00','商品编号3','配件名称3','配件分类3','排量3','供销商名称3','地址3','负责人3','联系方式3','数量3','http://localhost:8080/ssm0dq3x/upload/peijian_peijiantupian3.jpg',3,'配件介绍3'),(54,'2021-04-11 22:26:00','商品编号4','配件名称4','配件分类4','排量4','供销商名称4','地址4','负责人4','联系方式4','数量4','http://localhost:8080/ssm0dq3x/upload/peijian_peijiantupian4.jpg',4,'配件介绍4'),(55,'2021-04-11 22:26:00','商品编号5','配件名称5','配件分类5','排量5','供销商名称5','地址5','负责人5','联系方式5','数量5','http://localhost:8080/ssm0dq3x/upload/peijian_peijiantupian5.jpg',5,'配件介绍5'),(56,'2021-04-11 22:26:00','商品编号6','配件名称6','配件分类6','排量6','供销商名称6','地址6','负责人6','联系方式6','数量6','http://localhost:8080/ssm0dq3x/upload/peijian_peijiantupian6.jpg',6,'配件介绍6');

/*Table structure for table `qiche` */

DROP TABLE IF EXISTS `qiche`;

CREATE TABLE `qiche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) NOT NULL COMMENT '汽车名称',
  `qichefenlei` varchar(200) NOT NULL COMMENT '汽车分类',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `qicheyanse` varchar(200) NOT NULL COMMENT '汽车颜色',
  `qichetupian` varchar(200) DEFAULT NULL COMMENT '汽车图片',
  `tianchuang` varchar(200) DEFAULT NULL COMMENT '天窗',
  `huandangfangshi` varchar(200) DEFAULT NULL COMMENT '换挡方式',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `qichepailiang` varchar(200) DEFAULT NULL COMMENT '汽车排量',
  `shangshinianfen` varchar(200) DEFAULT NULL COMMENT '上市年份',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `qichexiangqing` longtext COMMENT '汽车详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='汽车';

/*Data for the table `qiche` */

insert  into `qiche`(`id`,`addtime`,`qichemingcheng`,`qichefenlei`,`qichepinpai`,`qicheyanse`,`qichetupian`,`tianchuang`,`huandangfangshi`,`zuowei`,`qichepailiang`,`shangshinianfen`,`shuliang`,`qichexiangqing`,`clicktime`,`clicknum`) values (31,'2021-04-11 22:26:00','汽车名称1','微型车','奔驰','红色','http://localhost:8080/ssm0dq3x/upload/qiche_qichetupian1.jpg','有天窗','手动挡','2座','汽车排量1','上市年份1',1,'汽车详情1','2021-04-11 22:26:00',1),(32,'2021-04-11 22:26:00','汽车名称2','微型车','奔驰','红色','http://localhost:8080/ssm0dq3x/upload/qiche_qichetupian2.jpg','有天窗','手动挡','2座','汽车排量2','上市年份2',2,'汽车详情2','2021-04-11 22:41:12',8),(33,'2021-04-11 22:26:00','汽车名称3','微型车','奔驰','红色','http://localhost:8080/ssm0dq3x/upload/qiche_qichetupian3.jpg','有天窗','手动挡','2座','汽车排量3','上市年份3',3,'汽车详情3','2021-04-11 22:26:00',3),(34,'2021-04-11 22:26:00','汽车名称4','微型车','奔驰','红色','http://localhost:8080/ssm0dq3x/upload/qiche_qichetupian4.jpg','有天窗','手动挡','2座','汽车排量4','上市年份4',4,'汽车详情4','2021-04-11 22:26:00',4),(35,'2021-04-11 22:26:00','汽车名称5','微型车','奔驰','红色','http://localhost:8080/ssm0dq3x/upload/qiche_qichetupian5.jpg','有天窗','手动挡','2座','汽车排量5','上市年份5',5,'汽车详情5','2021-04-11 22:26:00',5),(36,'2021-04-11 22:26:00','汽车名称6','微型车','奔驰','红色','http://localhost:8080/ssm0dq3x/upload/qiche_qichetupian6.jpg','有天窗','手动挡','2座','汽车排量6','上市年份6',6,'汽车详情6','2021-04-11 22:26:00',6);

/*Table structure for table `qichefenlei` */

DROP TABLE IF EXISTS `qichefenlei`;

CREATE TABLE `qichefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichefenlei` varchar(200) NOT NULL COMMENT '汽车分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichefenlei` (`qichefenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='汽车分类';

/*Data for the table `qichefenlei` */

insert  into `qichefenlei`(`id`,`addtime`,`qichefenlei`,`tupian`) values (21,'2021-04-11 22:26:00','汽车分类1','http://localhost:8080/ssm0dq3x/upload/qichefenlei_tupian1.jpg'),(22,'2021-04-11 22:26:00','汽车分类2','http://localhost:8080/ssm0dq3x/upload/qichefenlei_tupian2.jpg'),(23,'2021-04-11 22:26:00','汽车分类3','http://localhost:8080/ssm0dq3x/upload/qichefenlei_tupian3.jpg'),(24,'2021-04-11 22:26:00','汽车分类4','http://localhost:8080/ssm0dq3x/upload/qichefenlei_tupian4.jpg'),(25,'2021-04-11 22:26:00','汽车分类5','http://localhost:8080/ssm0dq3x/upload/qichefenlei_tupian5.jpg'),(26,'2021-04-11 22:26:00','汽车分类6','http://localhost:8080/ssm0dq3x/upload/qichefenlei_tupian6.jpg');

/*Table structure for table `qichemeirong` */

DROP TABLE IF EXISTS `qichemeirong`;

CREATE TABLE `qichemeirong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmutupian` varchar(200) DEFAULT NULL COMMENT '项目图片',
  `xiangmujiage` int(11) DEFAULT NULL COMMENT '项目价格',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuebeizhu` varchar(200) DEFAULT NULL COMMENT '预约备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='汽车美容';

/*Data for the table `qichemeirong` */

insert  into `qichemeirong`(`id`,`addtime`,`xiangmumingcheng`,`xiangmuleixing`,`xiangmutupian`,`xiangmujiage`,`keyueshijian`,`yuyueshijian`,`yuyuebeizhu`,`sfsh`,`shhf`) values (41,'2021-04-11 22:26:00','项目名称1','项目类型1','http://localhost:8080/ssm0dq3x/upload/qichemeirong_xiangmutupian1.jpg',1,'可约时间1','2021-04-11 22:26:00','预约备注1','是',''),(42,'2021-04-11 22:26:00','项目名称2','项目类型2','http://localhost:8080/ssm0dq3x/upload/qichemeirong_xiangmutupian2.jpg',2,'可约时间2','2021-04-11 22:26:00','预约备注2','是',''),(43,'2021-04-11 22:26:00','项目名称3','项目类型3','http://localhost:8080/ssm0dq3x/upload/qichemeirong_xiangmutupian3.jpg',3,'可约时间3','2021-04-11 22:26:00','预约备注3','是',''),(44,'2021-04-11 22:26:00','项目名称4','项目类型4','http://localhost:8080/ssm0dq3x/upload/qichemeirong_xiangmutupian4.jpg',4,'可约时间4','2021-04-11 22:26:00','预约备注4','是',''),(45,'2021-04-11 22:26:00','项目名称5','项目类型5','http://localhost:8080/ssm0dq3x/upload/qichemeirong_xiangmutupian5.jpg',5,'可约时间5','2021-04-11 22:26:00','预约备注5','是',''),(46,'2021-04-11 22:26:00','项目名称6','项目类型6','http://localhost:8080/ssm0dq3x/upload/qichemeirong_xiangmutupian6.jpg',6,'可约时间6','2021-04-11 22:26:00','预约备注6','是','');

/*Table structure for table `shouhoufuwu` */

DROP TABLE IF EXISTS `shouhoufuwu`;

CREATE TABLE `shouhoufuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `xiaoshoudanhao` varchar(200) DEFAULT NULL COMMENT '销售单号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `shenqingyuanyin` varchar(200) DEFAULT NULL COMMENT '申请原因',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshoudanhao` (`xiaoshoudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618152069532 DEFAULT CHARSET=utf8 COMMENT='售后服务';

/*Data for the table `shouhoufuwu` */

insert  into `shouhoufuwu`(`id`,`addtime`,`fuwuleixing`,`xiaoshoudanhao`,`tupian`,`leixing`,`zongjia`,`shenqingshijian`,`shenqingyuanyin`,`zhanghao`,`xingming`,`shouji`,`userid`) values (61,'2021-04-11 22:26:00','服务类型1','销售单号1','http://localhost:8080/ssm0dq3x/upload/shouhoufuwu_tupian1.jpg','退货','总价1','2021-04-11 22:26:00','申请原因1','账号1','姓名1','手机1',1),(62,'2021-04-11 22:26:00','服务类型2','销售单号2','http://localhost:8080/ssm0dq3x/upload/shouhoufuwu_tupian2.jpg','退货','总价2','2021-04-11 22:26:00','申请原因2','账号2','姓名2','手机2',2),(63,'2021-04-11 22:26:00','服务类型3','销售单号3','http://localhost:8080/ssm0dq3x/upload/shouhoufuwu_tupian3.jpg','换货','总价3','2021-04-11 22:26:00','申请原因3','账号3','姓名3','手机3',3),(64,'2021-04-11 22:26:00','服务类型4','销售单号4','http://localhost:8080/ssm0dq3x/upload/shouhoufuwu_tupian4.jpg','换货','总价4','2021-04-11 22:26:00','申请原因4','账号4','姓名4','手机4',4),(65,'2021-04-11 22:26:00','服务类型5','销售单号5','http://localhost:8080/ssm0dq3x/upload/shouhoufuwu_tupian5.jpg','退货','总价5','2021-04-11 22:26:00','申请原因5','账号5','姓名5','手机5',5),(66,'2021-04-11 22:26:00','服务类型6','销售单号6','http://localhost:8080/ssm0dq3x/upload/shouhoufuwu_tupian6.jpg','退货','总价6','2021-04-11 22:26:00','申请原因6','账号6','姓名6','手机6',6),(1618152069531,'2021-04-11 22:41:08','','20214112241384530482',NULL,'','',NULL,'','用户1','姓名1','13823888881',11);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','lecjgagcgjw1h1c30stodsfixsvyypa5','2021-04-11 22:31:30','2021-04-12 08:12:25'),(2,1,'abo','users','管理员','kq5oo345evmj7n0rk5g92ql00o1rrg4t','2021-04-11 22:34:42','2021-04-11 23:43:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'管理员','abo','管理员','2021-04-11 22:26:00');

/*Table structure for table `weixiubaoyang` */

DROP TABLE IF EXISTS `weixiubaoyang`;

CREATE TABLE `weixiubaoyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiudanhao` varchar(200) DEFAULT NULL COMMENT '维修单号',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `weixiuriqi` date DEFAULT NULL COMMENT '维修日期',
  `weixiuwenti` longtext COMMENT '维修问题',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixiudanhao` (`weixiudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='维修保养';

/*Data for the table `weixiubaoyang` */

insert  into `weixiubaoyang`(`id`,`addtime`,`weixiudanhao`,`leixing`,`weixiuriqi`,`weixiuwenti`,`beizhu`,`tupian`) values (71,'2021-04-11 22:26:00','维修单号1','类型1','2021-04-11','维修问题1','备注1','http://localhost:8080/ssm0dq3x/upload/weixiubaoyang_tupian1.jpg'),(72,'2021-04-11 22:26:00','维修单号2','类型2','2021-04-11','维修问题2','备注2','http://localhost:8080/ssm0dq3x/upload/weixiubaoyang_tupian2.jpg'),(73,'2021-04-11 22:26:00','维修单号3','类型3','2021-04-11','维修问题3','备注3','http://localhost:8080/ssm0dq3x/upload/weixiubaoyang_tupian3.jpg'),(74,'2021-04-11 22:26:00','维修单号4','类型4','2021-04-11','维修问题4','备注4','http://localhost:8080/ssm0dq3x/upload/weixiubaoyang_tupian4.jpg'),(75,'2021-04-11 22:26:00','维修单号5','类型5','2021-04-11','维修问题5','备注5','http://localhost:8080/ssm0dq3x/upload/weixiubaoyang_tupian5.jpg'),(76,'2021-04-11 22:26:00','维修单号6','类型6','2021-04-11','维修问题6','备注6','http://localhost:8080/ssm0dq3x/upload/weixiubaoyang_tupian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`beizhu`) values (11,'2021-04-11 22:26:00','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm0dq3x/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-04-11 22:26:00','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm0dq3x/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-11 22:26:00','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm0dq3x/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-11 22:26:00','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm0dq3x/upload/yonghu_zhaopian4.jpg','备注4'),(16,'2021-04-11 22:26:00','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm0dq3x/upload/yonghu_zhaopian6.jpg','备注6');

/*Table structure for table `yuyuejilu` */

DROP TABLE IF EXISTS `yuyuejilu`;

CREATE TABLE `yuyuejilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuedanhao` varchar(200) DEFAULT NULL COMMENT '预约单号',
  `yuyuexiangmu` varchar(200) DEFAULT NULL COMMENT '预约项目',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuedanhao` (`yuyuedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618152117668 DEFAULT CHARSET=utf8 COMMENT='预约记录';

/*Data for the table `yuyuejilu` */

insert  into `yuyuejilu`(`id`,`addtime`,`yuyuedanhao`,`yuyuexiangmu`,`yuyueriqi`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`) values (91,'2021-04-11 22:26:00','预约单号1','预约项目1','2021-04-11','备注1','账号1','姓名1','13823888881','是','','未支付'),(92,'2021-04-11 22:26:00','预约单号2','预约项目2','2021-04-11','备注2','账号2','姓名2','13823888882','是','','未支付'),(93,'2021-04-11 22:26:00','预约单号3','预约项目3','2021-04-11','备注3','账号3','姓名3','13823888883','是','','未支付'),(94,'2021-04-11 22:26:00','预约单号4','预约项目4','2021-04-11','备注4','账号4','姓名4','13823888884','是','','未支付'),(95,'2021-04-11 22:26:00','预约单号5','预约项目5','2021-04-11','备注5','账号5','姓名5','13823888885','是','','未支付'),(96,'2021-04-11 22:26:00','预约单号6','预约项目6','2021-04-11','备注6','账号6','姓名6','13823888886','是','','未支付'),(1618152084569,'2021-04-11 22:41:23','202141122415353657775','','2021-04-11','','用户1','姓名1','13823888881','否',NULL,'未支付'),(1618152117667,'2021-04-11 22:41:56','202141122422531279756','','2021-04-11','备注3','用户1','姓名1','13823888881','否',NULL,'未支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
