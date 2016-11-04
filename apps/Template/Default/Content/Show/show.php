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


</head>


<body class="bgwhite">

<template file="Content/header.php"/>

<section>
    <div class="jlmain pd_tp_bt">

        <template file="Content/Show/menu.php"/>

        <div class="nr-rg-wd fr">
            <div class="rgcut">
                <span class="sptitle fontsize20 fl">{:get_firstmenu_title($catid)}</span>
            <span class="sp-pos fontsize12 textR fr">
                 <img src="/statics/xijule/images/posicon.gif" />当前位置：
                 <a href="{$config_siteurl}">首页</a> &gt; <navigate catid="$catid" space=" &gt; " />
            </span>
            </div>
            <div class="news-ny-content pd_tp_bt">
                <h1 class="textC fontsize26 h1title">{$title}</h1>
                <div class="newsinfo textC">更新时间：{$updatetime}　来源：本站原创　作者：admin　阅读：<span id="hits">0</span></div>
                <div class="news-detail fontsize16">
                    {$content}
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</section>

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