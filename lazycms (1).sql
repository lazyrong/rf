-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-07-19 18:41:09
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lazycms`
--

-- --------------------------------------------------------

--
-- 表的结构 `lazy_category`
--

CREATE TABLE `lazy_category` (
  `cat_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `type` tinyint(3) NOT NULL COMMENT '1 软文 2微博 3微信 4淘宝',
  `pid` int(10) NOT NULL,
  `sort` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lazy_news`
--

CREATE TABLE `lazy_news` (
  `news_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `news_url` varchar(255) DEFAULT NULL COMMENT '媒体链接',
  `case_url` varchar(255) DEFAULT NULL COMMENT '案例链接',
  `cat_id` int(6) NOT NULL COMMENT '分类',
  `price` int(6) NOT NULL COMMENT '价格',
  `link_type` tinyint(2) NOT NULL COMMENT '0 空，1 可带文本，2可带超链接，3 都不带',
  `sl_type` tinyint(2) NOT NULL COMMENT '收录说明 0空 1 2 3',
  `remark` varchar(255) DEFAULT NULL,
  `buy_link` varchar(255) DEFAULT NULL COMMENT '淘宝购买链接',
  `pubtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lazy_pengyouquan`
--

CREATE TABLE `lazy_pengyouquan` (
  `pyq_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `fans_num` int(16) DEFAULT NULL COMMENT '粉丝数量 单位',
  `cat_id` int(6) NOT NULL COMMENT '分类',
  `price` int(8) NOT NULL COMMENT '价格',
  `remark` varchar(255) DEFAULT NULL COMMENT '简介',
  `buy_link` varchar(255) DEFAULT NULL COMMENT '淘宝购买链接'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lazy_weibo`
--

CREATE TABLE `lazy_weibo` (
  `wb_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `wb_url` varchar(255) DEFAULT NULL COMMENT '微博链接',
  `rz_type` varchar(20) NOT NULL COMMENT '认证类型',
  `fans_num` int(16) DEFAULT NULL COMMENT '粉丝数量 单位',
  `cat_id` int(6) NOT NULL COMMENT '分类',
  `price` int(8) NOT NULL COMMENT '价格',
  `zfprice` int(8) NOT NULL COMMENT '转发价格',
  `area` char(8) NOT NULL COMMENT '地区',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `buy_link` varchar(255) DEFAULT NULL COMMENT '淘宝购买链接'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lazy_weixin`
--

CREATE TABLE `lazy_weixin` (
  `wx_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `wechat_id` varchar(60) DEFAULT NULL COMMENT '微信号ID',
  `isidentified` tinyint(1) NOT NULL COMMENT '是否认证',
  `fans_num` int(16) DEFAULT NULL COMMENT '粉丝数量 单位',
  `cat_id` int(6) NOT NULL COMMENT '分类',
  `fprice` int(8) NOT NULL COMMENT '头条价格',
  `nfprice` int(8) NOT NULL COMMENT '非头条价格',
  `area` char(8) NOT NULL COMMENT '地区',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `buy_link` varchar(255) DEFAULT NULL COMMENT '淘宝购买链接'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lazy_category`
--
ALTER TABLE `lazy_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `lazy_news`
--
ALTER TABLE `lazy_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `lazy_pengyouquan`
--
ALTER TABLE `lazy_pengyouquan`
  ADD PRIMARY KEY (`pyq_id`);

--
-- Indexes for table `lazy_weibo`
--
ALTER TABLE `lazy_weibo`
  ADD PRIMARY KEY (`wb_id`);

--
-- Indexes for table `lazy_weixin`
--
ALTER TABLE `lazy_weixin`
  ADD PRIMARY KEY (`wx_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lazy_category`
--
ALTER TABLE `lazy_category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `lazy_news`
--
ALTER TABLE `lazy_news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;
--
-- 使用表AUTO_INCREMENT `lazy_pengyouquan`
--
ALTER TABLE `lazy_pengyouquan`
  MODIFY `pyq_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `lazy_weibo`
--
ALTER TABLE `lazy_weibo`
  MODIFY `wb_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `lazy_weixin`
--
ALTER TABLE `lazy_weixin`
  MODIFY `wx_id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
