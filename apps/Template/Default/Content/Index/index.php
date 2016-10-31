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



    <link href="{$config_siteurl}statics/default/css/index.css" rel="stylesheet" type="text/css" />

    <!-- <link href="{$config_siteurl}statics/default/css/layout.css" rel="stylesheet" type="text/css" /> -->

    <link href="{$config_siteurl}statics/yzjc/css/common.css" rel="stylesheet" type="text/css" />

    <script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <script type="text/javascript" src="{$config_siteurl}statics/yzjc//layer/2.1/layer.js"></script>

<base target="_blank" />

</head>

<body>

<template file="Content/header.php"/>



<!--幻灯片-->

<div id="imageShow">

    <div id="imgshow_mask"></div>

    <position action="position" order="listorder asc" posid="4">

    <ul class="imagebg" id="imagebg">

        <volist name="data" id="vo">

            <li class="bannerbg" data-sPic="{:thumb($vo['data']['thumb'],145,65)}">

                <div class="bannerbg_main" style="background:url('{$vo.data.thumb}') center no-repeat; cursor:pointer;"

                     onClick="window.open('{$vo.data.url}','_blank')"></div>

            </li>

        </volist>

    </ul>



    <div class="scrollbg">

        <div class="scroll">

            <a id="left_img_btn" class="s_pre" href="javascript:void(0)"></a>

            <div class="current" id="current"></div>

            <div class="outScroll_pic">

                <ul class="scroll_pic cls" id="small_pic"></ul>

            </div>

            <a id="right_img_btn" class="s_next" href="javascript:void(0)"></a>

        </div>

    </div>

</div>



<!--幻灯片 end-->



<div class="main">


    <div class="fontsize30 textC jc-title-pd">专注室内、车内空气质量检测 CMA权威检测资质</div>

    <div class="jc-hover-qw colwhite textC">

        <ul id="hoverclass">

            <li class="zl-1 active" onClick="window.open('/list-71.html'),'_blank'"><div><h3>CMA资质认定</h3><span class="sp1"></span></div></li>

            <li class="zl-2" onClick="window.open('{:getCategory(71,\'url\')}'),'_blank'"><div><h3>专业实验室</h3><span class="sp2"></span></div></li>

            <li class="zl-3" onClick="window.open('/list-28.html'),'_blank'"><div><h3>案例展示</h3><span class="sp3"></span></div></li>

            <li class="zl-4"><div><h3>我们的团队</h3><span class="sp4"></span></div></li>

        </ul>

        <div class="clear"></div>

    </div>


    <div class="fontsize30 textC jc-title-pd">支持淘宝第三方支付、交易更便捷、放心</div>

    <div class="jc-pay-mode">

        <ul>
			<li><span>
                    <a target="_blank" href="https://item.taobao.com/item.htm?id=537535936848&ali_refid=a3_420434_1006:1124148217:N:%E7%94%B2%E9%86%9B%E6%A3%80%E6%B5%8B:66a30c9135f398f2d4535865df1b4f64&ali_trackid=1_66a30c9135f398f2d4535865df1b4f64&spm=a230r.1.1957635.12.9HT4ZK">
                        <img src="{$config_siteurl}statics/yzjc/images/indexpic1.jpg" />
                    </a></span><p class="textC fontsize18"><a target="_blank" href="https://item.taobao.com/item.htm?id=537535936848&ali_refid=a3_420434_1006:1124148217:N:%E7%94%B2%E9%86%9B%E6%A3%80%E6%B5%8B:66a30c9135f398f2d4535865df1b4f64&ali_trackid=1_66a30c9135f398f2d4535865df1b4f64&spm=a230r.1.1957635.12.9HT4ZK">点击进入</a></p></li>

            <li><span class="sp1"><input type="text" placeholder="|" id="phone" /></span><p class="textC fontsize18"><a class="yuyue" href="javascript:;">立即预约</a></p></li>


        </ul>

        <div class="clear"></div>

    </div>


    <div class="fontsize30 textC jc-title-pd">装修污染危害新闻报道</div>

    <position action="position" posid="5">

        <div class="videobox">

            <div class="video-img">

                <content action="lists" catid="50" order="listorder asc" num="7">

                    <volist name="data" id="vo" key="k">

                        <embed id="js_videoCon_{$k}" class="js_videoCon"

                               src="{$vo[video_url]}"

                               allowFullScreen="true" quality="high" width="700" height="380" align="middle" allowScriptAccess="always"

                               type="application/x-shockwave-flash">



                        </embed>

                    </volist>

                </content>




            </div>

            <div class="video-list">

                <ul>

                    <content action="lists" catid="50" order="listorder asc" num="7">

                        <volist name="data" id="vo" key="k">

                            <li class="now" id="{$vo[video_url]}" video="{$k}" vid="{$k}" >

                                <img onerror="this.src='/statics/images/video.jpg'" src="{$vo['thumb']}" width="78" height="59" alt="{$vo['title']}">

                                <img  src="{$config_siteurl}statics/yzjc/images/video1.png" class="icon-video">

                            </li>

                        </volist>

                    </content>

               
                </ul>

            </div>



        </div>

    </position>


    <div class="fontsize30 textC jc-title-pd">各类空间空气质量检测 、出具CMA权威检测报告</div>

    <div class="jc-zs">

        <dl>

            <dt class="icon1"></dt>

            <dd><h3>幼儿园</h3><p>按照国家《室内空气质量标准》相关规定，托儿所、幼儿园及中小学进行校舍改建及装修之后，应当进行室内空气质量的检测，待检测合格后，方可在建筑内进行教学活动。检测标准主要包括装修材料及家具中的甲醛、苯、TVOC、氡等有害气体的浓度测试。</p></dd>

        </dl>

        <dl>

            <dt class="icon2"></dt>

            <dd><h3>办公写字楼</h3><p>对于室内装修最为普遍的污染是甲醛、苯、TVOC等毒害气体，而人们通常70%是在室内度过的，尤其是写字楼中的是上班人员80%左右是在室内环境中，通常室内装修所产生的甲醛污染持续3-10年的，而办公楼内往往装修过后便入住，室内空气中有害物质没有释放出去，从而对人体健康造成伤害。</p></dd>

        </dl>

        <dl>

            <dt class="icon3"></dt>

            <dd><h3>家庭空气质量检测</h3><p>家庭中的甲醛、苯、TVOC等毒害气体主要来自装修及家具污染，甲醛是一种无色但有强烈刺激性的气体，释放时间长，特别是板材中的甲醛，释放周期可达到3-15年，家里一般都有小孩及老人居住，危害性非常大，入住前对新房进行空气检测，查看是否适合居住。</p></dd>

        </dl>

        <dl>

            <dt class="icon4"></dt>

            <dd><h3>车内空气检测</h3><p>汽车内的有害物质主要是来自内配饰件，是各种胶粘剂、座套、脚垫这些东西造成的。因为它们一般都会加入阻燃剂、定型剂、防腐剂和胶粘剂等化学物质，这样在汽车狭小的、封闭的空间内会释放出更多的有害物质，造成恶性循环。产生的有害物质主要是挥发性的有机物，包括甲醛、苯、TVOC等。</p></dd>

        </dl>

        <div class="clear"></div>

    </div>

    <div class="jc-yuan">

        <ul>

            <li><span><h3>甲醛</h3></span><p>·眼红、眼痒</p><p>·咽喉不适</p><p>·声音嘶哑、喷嚏</p><p>·胸闷、气喘</p><p>·皮炎</p><p>·是众多疾病的主要诱因</p></li>

            <li><span><h3>苯</h3></span><p>·神经衰弱综合症</p><p>·损害骨髓</p><p>·导致白血病</p><p>·再生障碍性贫血</p></li>

            <li><span><h3>甲苯</h3></span><p>·头痛、失眠</p><p>·眩晕</p><p>·下肢疲惫</p><p>·淋巴瘤</p><p>·造血系统瘤</p></li>

            <li><span><h3>二甲苯</h3></span><p>·神经衰弱女性月经异常</p><p>·皮肤干燥皮肤皲裂</p><p>·皮炎</p></li>

            <li><span><h3>TVOC</h3></span><p>·神经衰弱头痛、失眠</p><p>·眩晕</p><p>·下肢疲惫</p><p>·患白血病的风险提高3倍</p></li>

            <li><span><h3>氨</h3></span><p>·鼻炎、咽炎、咳嗽</p><p>·痰内有血</p><p>·气胸</p><p>·纵隔气肿</p><p>·气管阻塞</p><p>·白内障</p></li>

            <li><span><h3>氡</h3></span><p>·容易引发肺癌</p><p>·呼吸系统疾病</p><p>·败血症</p><p>·肿瘤的发生</p></li>

        </ul>

        <div class="clear"></div>

    </div>

    <div class="fontsize30 textC jc-title-pd">全国服务网点分布</div>

    <div class="jc-fb-map">
        <embed allowscriptaccess="never" allownetworking="internal" invokeurls="false" src="{$config_siteurl}statics/yzjc/images/map.swf" 
pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" quality="high" autostart="0" wmode="transparent" width="1200" height="600" align="top" >
    </div>

    <div class="jc-news">

        <div class="news-class">

            <div class="classtitle"><span class="sp1">公司<font>动态</font></span><span class="fr"><a href="{:getCategory(34,'url')}" class="colhui">更多</a></span></div>

            <content action="lists" catid="34"  order="listorder asc" num="5">

            <ul>

                <volist name="data" id="vo" key="k">

                    <li><a alt="{$vo.title}" href="{$vo.url}">{$vo.title|str_cut=###,18}</a><span class="colhui">{:date('Y-m-d',$vo['updatetime'])}</span></li>

                </volist>

            </ul>

            </content>

        </div>

        <div class="news-class">

            <div class="classtitle"><span class="sp1">行业<font>动态</font></span><span class="fr"><a href="{:getCategory(35,'url')}" class="colhui">更多</a></span></div>

            <content action="lists" catid="35"  order="listorder asc" num="5">

            <ul>

                <volist name="data" id="vo" key="k">

                    <li><a alt="{$vo.title}" href="{$vo.url}">{$vo.title|str_cut=###,18}</a><span class="colhui">{:date('Y-m-d',$vo['updatetime'])}</span></li>

                </volist>

            </ul>

            </content>

        </div>

        <div class="news-class newsmg0">

            <div class="classtitle"><span class="sp1">政策<font>法规</font></span><span class="fr"><a href="{:getCategory(36,'url')}" class="colhui">更多</a></span></div>

            <content action="lists" catid="36"  order="listorder asc" num="5">

            <ul>

                <volist name="data" id="vo" key="k">

                    <li><a alt="{$vo.title}" href="{$vo.url}">{$vo.title|str_cut=###,18}</a><span class="colhui">{:date('Y-m-d',$vo['updatetime'])}</span></li>

                </volist>

            </ul>

            </content>

        </div>

        <div class="clear"></div>

    </div>





    <div class="fontsize30 textC jc-title-pd">我们的合作伙伴</div>

    <content action="lists" catid="33"  order="id DESC" num="24">



    <div class="jc-hz">

        <ul>

            <volist name="data" id="vo" key="k">

                <li><a alt="{$vo.title}" href="{$vo.url}"><img src="{$vo.thumb}" /></a></li>

            </volist>

        </ul>

        <div class="clear"></div>

    </div>



    </content>

<!-- 合作伙伴 end-->



</div>



<template file="Content/footer.php"/>



<script type="text/javascript">$(function (){$(window).toTop({showHeight : 100,0});});</script>

<script type="text/javascript" src="{$config_siteurl}statics/yzjc/js/jquery.imgSlider.js"></script>

<script src="{$config_siteurl}statics/yzjc/js/jquery.scrollbox.js"></script>

<script src="{$config_siteurl}statics/yzjc/js/scrolltop.js" type="text/javascript"></script>

<script type="text/javascript">



    $(function(){

        img.init();

        img.play(0);

        // $('#video-img').scrollbox({

        //   direction: 'h',

        //   distance: 140

        // });

        // $('#video-backward').click(function(){

        //   $('#video-img').trigger('backward');

        // });

        // $('#video-forward').click(function () {

        //   $('#video-img').trigger('forward');

        // });

        $(".video-list li").click(function(){

            var obj = $(this);

            var video_id = obj.attr("video");

            var path = obj.attr("id");

            var vid = obj.attr("vid");

            $(".js_videoCon").hide();

            $("#js_videoCon_"+vid).show();

            obj.addClass("now").siblings().removeClass("now");

        });

        $("#hoverclass li").hover(function(){

           // $(this).animate({width:"34%",borderRadius:"8px",zIndex:"100",marginLeft:"-50px"},50);

            $(this).addClass("active").siblings().removeClass("active");

            //$("#rdzxDIV > ul").eq($('#rdzxA a').index(this)).show().siblings().hide();



        });



        $(".yuyue").click(function () {

            var phone = $("#phone").val();

            $s = isPhoneNo(phone);

            if(!$s){

                layer.msg('手机号码格式不正确',{icon: 7});

                return false;

            }

            var url = "{:U('content/index/ajax_phone')}";

            $.ajax({

                cache: true,

                type: "POST",

                url:url,

                data:{'phone':phone},//参数

                async: false,

                dataType: "json",

                error: function(request) {

                    alert("Connection error");

                },

                success: function(data) {

                    if(data.status){

                        layer.msg(data.info,{'icon':1});

                        setTimeout(function(){

                                location.reload();

                            },

                            2000

                        );

                    }else{

                        layer.msg(data.info,{'icon':7});

                        return false;

                    }

                }

            });







        });

        // 验证手机号

        function isPhoneNo(phone) {

            var pattern = /^1[34578]\d{9}$/;

            return pattern.test(phone);

        }

    })



</script>

<a id="goTopBtn" href="javascript:;"></a>

<script type="text/javascript">goTopEx();</script>

</body>

</html>