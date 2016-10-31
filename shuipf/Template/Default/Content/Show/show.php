<?php if (!defined('SHUIPF_VERSION')) exit(); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<link href="favicon.ico" rel="shortcut icon" />

<link rel="canonical" href="{$config_siteurl}" />

<title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>

<meta name="description" content="{$SEO['description']}" />

<meta name="keywords" content="{$SEO['keyword']}" />

<link href="{$config_siteurl}statics/default/css/article_list.css" rel="stylesheet" type="text/css" />

    <link href="{$config_siteurl}statics/yzjc/css/common.css" rel="stylesheet" type="text/css" />

    <script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=B3f7707c25da5b29a6ff69618788a296"></script>

<script type="text/javascript">

//全局变量

var GV = {

    DIMAUB: "{$config_siteurl}",

    JS_ROOT: "statics/js/"

};

</script>

<script src="{$config_siteurl}statics/js/jquery.js" type="text/javascript"></script>

<script src="{$config_siteurl}statics/default/js/w3cer.js" type="text/javascript"></script>

<script type="text/javascript" src="{$config_siteurl}statics/js/ajaxForm.js"></script>

</head>

<body>

<template file="Content/header.php"/>





<div class="main">

    <div class="content">

        <template file="Content/Show/menu.php"/>



        <div class="nr_right">
            <?php if($catid==28):?>
                <div class="current-wz mrbt15">
               <span>
                   <a href="{:getCategory($catid,'url')}" >{:getCategory($catid,'catname')}</a>
               </span>

                </div>
            <?php else:?>
                <div class="current-wz mrbt15">
                    <ul>
                        <volist name="lists" id="v" >
                            <li <?php if($_GET['catid']==$v['catid']):?> class="selected" <?php endif;?>><a {$v['catid']} href="{$v.url}" class="">{$v.title}</a></li>
                        </volist>
                    </ul>
                </div>
            <?php endif;?>

            <div class="contenttitle">{$title}</div>

            <div class="newsinfo">更新时间：{$updatetime}　来源：{$copyfrom?$copyfrom:"本站原创"}　作者：{$username}　阅读：<span id="hits">0</span></div>

            <div class="rgcontent fontsize14">

                {$content}

            </div>

            <div class="page">
                <p>上一篇：<pre  target="1" msg="已经没有了" /> </p>
                <p>下一篇：<next target="1" msg="已经没有了" /> </p>
            </div>
        </div>

        <div class="clear"></div>


    </div>



</div>



<template file="Content/footer.php"/>



<script type="text/javascript">

$(function (){

	$(window).toTop({showHeight : 100});

	//点击

	$.get("{$config_siteurl}api.php?m=Hits&catid={$catid}&id={$id}", function (data) {

	    $("#hits").html(data.views);

	}, "json");

});

//评论

var commentsQuery = {

    'catid': '{$catid}',

    'id': '{$id}',

    'size': 10

};

(function () {

    var ds = document.createElement('script');

    ds.type = 'text/javascript';

    ds.async = true;

    ds.src = GV.DIMAUB+'statics/js/comment/embed.js';

    ds.charset = 'UTF-8';

    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);

})();

//评论结束

</script> 

</body>

</html>