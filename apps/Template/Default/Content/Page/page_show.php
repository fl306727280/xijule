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


    <link href="{$config_siteurl}statics/xijule/css/common.css" rel="stylesheet" type="text/css" />
    
    <script src="{$config_siteurl}statics/js/jquery.js" type="text/javascript"></script>




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
                <div class="news-detail fontsize16">
                    {$content}
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</section>


<template file="Content/footer.php"/>


</body>

</html>