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
    <link href="{$config_siteurl}statics/default/css/layout.css" rel="stylesheet" type="text/css" />
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
            <div class="current-wz mrbt15"><span><navigate catid="$catid" space=" &gt; " /></span></div>
            <p style="text-indent:0px; line-height:30px;" class="fontsize14"><strong>电话：</strong>028-69218566 </p>
            <p style="text-indent:0px; line-height:30px;" class="fontsize14"><strong>手机：</strong>18113037097</p>
            <p style="text-indent:0px; line-height:30px;" class="fontsize14"><strong>传真：</strong>028-69218566</p>
            <p style="text-indent:0px; line-height:30px;" class="fontsize14"><strong>全国服务热线：</strong>4006607097</p>
            <p style="text-indent:0px; line-height:30px;" class="fontsize14"><strong>全国统一咨询邮箱：</strong>zixun@scyaozhong.com</p>
            <p style="text-indent:0px; line-height:30px;" class="fontsize14 mrbt15"><strong>地址：</strong>成都市成华区万宇路200号</p>
            <div class="bigdiv"><div id="allmap"></div></div>
        </div>
        <div class="clear"></div>

    </div>

</div>

<template file="Content/footer.php"/>
<script type="text/javascript">
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(104.162018,30.63374);
    //map.enableScrollWheelZoom(true);
    map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    map.centerAndZoom(point,17);
    map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
    var marker = new BMap.Marker(point);  // 创建标注
    map.addOverlay(marker);              // 将标注添加到地图中
    marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
    //创建信息窗口
    var sContent ="<div class='myclass'>名称：成都蓝宇健康咨询有限公司 <br>地址：成都市武侯区科华北路139号三强大厦4楼408<br>电话：028-123456788<br></div>";
    var infoWindow = new BMap.InfoWindow(sContent,{enableMessage:false});  // 创建信息窗口对象
    map.centerAndZoom(point, 17);
    map.addOverlay(marker);
    marker.addEventListener("click", function(){
        this.openInfoWindow(infoWindow);
        //图片加载完毕重绘infowindow
        document.getElementById('imgDemo').onload = function (){
            infoWindow.redraw();
        }
    });
</script>
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