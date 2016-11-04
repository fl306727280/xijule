<?php if (!defined('SHUIPF_VERSION')) exit();?>

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

            <div class="pd_tp_bt">
                <form action="" method="post" name="form1" id="form1">
                    <div class="message_input"><input name="name" type="text" id="name" class="textbox" placeholder="请输入您的名字或昵称"><em id="nametishi"></em></div>
                    <div class="message_input"><input name="email" type="text" id="email" class="textbox" placeholder="请输入您常用的邮箱地址"><em id="emailtishi"></em></div>
                    <div class="message_input"><textarea name="lytext" cols="60" rows="12" id="lytext" placeholder="请输入您要留言的内容，我会尽快跟你取得联系"></textarea><em id="lytextts"></em></div>
                    <div class="message_input"><input type="submit" class="messagebtn" name="Submit3" value=" "></div>
                    <input name="enews" type="hidden" id="enews" value="AddGbook">
                    <input name="bid" type="hidden" value="1">
                    <input type="hidden" name="ecmsfrom" value="/">
                </form>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</section>


<template file="Content/footer.php"/>


<script src="{$config_siteurl}statics/js/jquery.js"></script>
<script type="text/javascript" src="{$config_siteurl}statics/xijule/js/unslider.min.js"></script>

<script language="javascript">
        //判断浏览器是否支持placeholder属性
        supportPlaceholder='placeholder'in document.createElement('input'),

            placeholder=function(input){

                var text = input.attr('placeholder'),
                    defaultValue = input.defaultValue;

                if(!defaultValue){

                    input.val(text).addClass("phcolor");
                }

                input.focus(function(){

                    if(input.val() == text){

                        $(this).val("");
                    }
                });


                input.blur(function(){

                    if(input.val() == ""){

                        $(this).val(text).addClass("phcolor");
                    }
                });

                //输入的字符不为灰色
                input.keydown(function(){

                    $(this).removeClass("phcolor");
                });
            };

        //当浏览器不支持placeholder属性时，调用placeholder函数
        if(!supportPlaceholder){

            $('input').each(function(){

                text = $(this).attr("placeholder");

                if($(this).attr("type") == "text"){

                    placeholder($(this));
                }
            });
        }
    });
</script>
</body>
</html>