<?php if (!defined('SHUIPF_VERSION')) exit(); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="喜居乐">
    <meta name="description" content="喜居乐">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />

    <link href="favicon.ico" rel="shortcut icon" />
    <link rel="canonical" href="{$config_siteurl}" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/xijule/css/common.css" />
    <script src="{$config_siteurl}statics/js/jquery.js"></script>
    <script type="text/javascript" src="{$config_siteurl}statics/xijule/js/unslider.min.js"></script>
    <script type="text/javascript" src="{$config_siteurl}statics/xijule/layer/2.1/layer.js"></script>

<base target="_blank" />

</head>

<body>

<template file="Content/header.php"/>

<!--幻灯片-->
<section>
    <div class="banner">
        <position action="position" order="listorder asc" posid="4">
        <ul>
            <volist name="data" id="vo">
                <li style="background:url({$vo['data']['thumb']}) no-repeat center center;">
                    <a href="{$vo.data.url}" target="_blank"></a>
                </li>
            </volist>
        </ul>
        </position>
    </div>
</section>

<script language="javascript">
    $(function() {
        $('.banner').unslider({
            speed: 800,               //  The speed to animate each slide (in milliseconds)
            delay: 5000,              //  The delay between slide animations (in milliseconds)
            complete: function() {},  //  A function that gets called after every slide animation
            keys: true,               //  Enable keyboard (left, right) arrow shortcuts
            dots: true,               //  Display dot navigation
            fluid: false              //  Support responsive design. May break non-responsive designs
        });
    });
</script>
<!--幻灯片 end-->


<section>
    <div class="bgwhite">
        <div class="jlmain pdct1">
            <div class="textC xj-lf fl"><img src="/statics/xijule/images/logo1.gif" class="mrbt10" /><h1 class="colty">空气污染品质管家</h1></div>
            <div class="xj-rg fr fontsize24 lg32">        喜居乐是一家致力于室内污染检测、甲醛治理、空气净化的高科技环保企业。公司本着求实创新、品质服务的经营理念。2007年至今，风雨同舟9载，
                服务覆盖成都、重庆、石家庄等全国市场。累积服务客户达150000余家，用实际行动赢得了广大客户的一致好评和喜爱。专业检测（甲醛、苯、TVOC、氨、氡等室内污染）金牌治理，喜居乐除甲醛十年口碑品牌。
            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>
<section>
    <div class="xjcontent1">
        <h2 class="xjtitle textC col0">专业团队</h2>
        <div class="jlmain">
            <img src="/statics/xijule/images/team-pic1.jpg" />
            <img src="/statics/xijule/images/team-pic2.jpg" />
        </div>
    </div>
</section>
<section>
    <div class="xjcontent2">
        <div class="jlmain">
            <h2 class="textC fontsize35 mrbt40">权威资质</h2>
            <ul>
                <li><img src="/statics/xijule/images/zl-pic1.jpg" /></li>
                <li class="max"><img src="/statics/xijule/images/zl-pic2.jpg" /></li>
                <li><img src="/statics/xijule/images/zl-pic3.jpg" /></li>
                <li class="mg0"><img src="/statics/xijule/images/zl-pic4.jpg" /></li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <div class="xj-bt-icon mrbt20"></div>
</section>
<section>
    <div class="jlmain">
        <h2 class="xjtitle textC col0 mrbt30">服务流程</h2>
        <div class="fwlcontent">
            <dl>
                <dt><img src="/statics/xijule/images/lcpic1.png" /></dt>
                <dd><h2 class="fontsize20 textC mrbt15">预约咨询</h2><p class="fontsize16">家庭及单位客户根据自身需求，通过网络或者电话咨询相关事宜，并预定服务时间、地址、项目。</p></dd>
            </dl>
            <dl>
                <dt><img src="/statics/xijule/images/lcpic2.png" /></dt>
                <dd><h2 class="fontsize20 textC mrbt15">检测诊断</h2><p class="fontsize16">项目负责人根据客户所定事项上门进行空气质量检测及污染诊断。</p></dd>
            </dl>
            <dl>
                <dt><img src="/statics/xijule/images/lcpic3.png" /></dt>
                <dd><h2 class="fontsize20 textC mrbt15">制定方案</h2><p class="fontsize16">工程师傅根据客户自身污染数据、家具材质、居住情况、治理标准进行施工方案制定并传达。</p></dd>
            </dl>
            <dl>
                <dt><img src="/statics/xijule/images/lcpic4.png" /></dt>
                <dd><h2 class="fontsize20 textC mrbt15">方案实施</h2><p class="fontsize16">工程负责小组按施工方案逐步实施，精细治理。协调好与之相关的各项事宜。</p></dd>
            </dl>
            <dl>
                <dt><img src="/statics/xijule/images/lcpic5.png" /></dt>
                <dd><h2 class="fontsize20 textC mrbt15">工程验收</h2><p class="fontsize16">施工治理完后，根据客户约定的验收时间，由检测组负责人上门进行工程验收，并出具相关报告。</p></dd>
            </dl>
            <dl>
                <dt><img src="/statics/xijule/images/lcpic6.png" /></dt>
                <dd><h2 class="fontsize20 textC mrbt15">售后服务</h2><p class="fontsize16">验收完成后，在合同约定的服务期限内，定期上门为客户做好售后工作，客户如有相关需求，及时处理完善。</p></dd>
            </dl>
        </div>
        <div class="clear"></div>
    </div>
</section>
<section>
    <div class="jlmain">
        <h2 class="xjtitle textC col0 mrbt30">服务内容</h2>
        <div class="fwnrcontent">
            <a href="javascript:void(0)" class="fl bgwhite a1">
                <i></i><h2 class="fontsize26 textC">空气检测</h2><p class="lg32 fontsize16">由喜居乐专业检测工程师傅，使用国家计量认证过的专业检测设备。上门检测（甲醛、苯系物、TVOC氨、氡等室内污染物质）并依据现场情况予以客户客观、公正、专业的检测报告及居住建议。</p>
            </a>
            <a href="javascript:void(0)" class="fl bgwhite a2">
                <i></i><h2 class="fontsize26 textC">空气治理</h2><p class="lg32 fontsize16">以客户室内空气污染情况，分析
                    超标污染物质。解析室内污染材料，由中、高治理工程师制定详细的污染治理方案，并精细实施，达到彻底的治理效果。并长期售后跟踪，为客户筑起健康的生命防线。</p>
            </a>
            <a href="javascript:void(0)" class="fl bgwhite a3">
                <i></i><h2 class="fontsize26 textC">公司产品</h2><p class="lg32 fontsize16">喜居乐精选的各类空气净化用品，经过多年的实践证明，品质上乘、服务到位，特别是针对新装的办公室。空气净化器租用服务，深受各大银行、政府机构、学校一致推荐。既为公司节省成本，又享受了商品质的净化服务。</p>
            </a>
            <div class="clear"></div>
        </div>
    </div>
</section>
<section>
    <div class="jlmain">
        <h2 class="xjtitle textC col0 mrbt30">项目案例</h2>
        <div class="casecontent">
            <content action="lists" catid="28"  order="listorder asc" num="8">
            <ul>
                <volist name="data" id="v">
                    <li>
                        <span><a href="{$v.url}" target="_blank"><img width="240" height="226" src="{$v.thumb}" /></a></span>
                        <p class="textC fontsize18"><a href="{$v.url}" target="_blank" class="colty">{$v.title|str_cut=###,12}</a></p>
                    </li>
                </volist>


                <!--<li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case2.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>
                <li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case1.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>
                <li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case2.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>
                <li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case1.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>
                <li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case2.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>
                <li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case1.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>
                <li><span><a href="#" target="_blank"><img src="/statics/xijule/images/case2.jpg" /></a></span><p class="textC fontsize18"><a href="#" target="_blank" class="colty">建设银行</a></p></li>-->
            </ul>
            </content>

            <div class="clear"></div>
            <div class="casemore textR"><a href="{:getCategory(28,'url')}" target="_blank" class="colwhite fontsize16">更多&nbsp;&nbsp;<i></i></a></div>
        </div>
    </div>
</section>
<section>
    <div class="xjcontent2" style="padding-bottom: 50px">
        <div class="jlmain">
            <h2 class="textC fontsize35 mrbt40">淘宝交易</h2>
            <div class="taobao fl">
                <img src="/statics/xijule/images/taobaopic1.jpg" class="mrbt20" />
                <p class="textC fontsize18"><a href="#" class="colwhite">点击进入</a></p>
            </div>
            <div class="taobao fr">
                <img src="/statics/xijule/images/taobaopic2.jpg" class="mrbt20" />
                <p class="textC fontsize18"><a href="#" class="colwhite">点击进入</a></p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="xj-bt-icon mrbt20"></div>
</section>
<section>
    <div class="jlmain">
        <h2 class="textC fontsize35 mrbt40">网店分布</h2>
        <div class="mapitemr">
            <ul>
                <li><h2 class="colwhite fontsize20 textC">成都</h2><p class="fontsize16 lg26">喜居乐总部基地，创立于2007年，位于成华区万科凯德广场，集技术运营、服务、实验于一体的综合企业。</p></li>
                <li><h2 class="colwhite fontsize20 textC">重庆</h2><p class="fontsize16 lg26">创立于于2014年，位于江北区红旗河沟弗瑞登，所有服务体系全部按照总部要求实施，严格统一管理，全国联保。</p></li>
                <li><h2 class="colwhite fontsize20 textC">石家庄</h2><p class="fontsize16 lg26">创立于2015年，位于珠江大道水榭花都，所有服务体系全部按照总部要求实施，严格统一管理，全国联保。</p></li>
            </ul>
            <div class="clear"></div>
            <div class="mrbt20"><img src="/statics/xijule/images/map.gif" /></div>
        </div>
    </div>
    <div class="xj-bt-icon1"></div>
</section>
<section>
    <div class="bgwhite pd_tp_bt">
        <div class="jlmain">
            <h2 class="textC fontsize35 mrbt40">相关视频</h2>
            <div class="xjvideo">
                <ul>
                    <li><span><a href="#"><img src="/statics/xijule/images/video.gif" /></a></span><h2 class="textC"><a href="#">视频相关介绍</a></h2></li>
                    <li><span><a href="#"><img src="/statics/xijule/images/video.gif" /></a></span><h2 class="textC"><a href="#">视频相关介绍</a></h2></li>
                    <li><span><a href="#"><img src="/statics/xijule/images/video.gif" /></a></span><h2 class="textC"><a href="#">视频相关介绍</a></h2></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="xjcontent1" style="padding-bottom:20px;">
        <h2 class="textC fontsize35 mrbt40">公司新闻</h2>
        <div class="jc-news jlmain">
            <div class="news-class">
                <div class="classtitle"><span class="sp1">公司<font>动态</font></span><span class="fr"><a href="{:getCategory(34,'url')}" class="colhui">更多</a></span></div>

                <content action="lists" catid="34"  order="listorder asc" num="5">

                    <ul>
                        <volist name="data" id="vo" key="k">
                            <li><a alt="{$vo.title}" target="_blank" href="{$vo.url}">{$vo.title|str_cut=###,18}</a><span class="colhui">{:date('Y-m-d',$vo['updatetime'])}</span></li>
                        </volist>
                    </ul>

                </content>

                <!--<ul>
                    <li><a href="#" target="_blank">孕妇怎样预防甲醛中毒？</a><span class="colhui">2016-08-04</span></li>
                    <li><a href="#" target="_blank">甲醛对孕妇及胎儿影响巨大</a><span class="colhui">2016-07-15</span></li>
                    <li><a href="#" target="_blank">国家质检总局：进口阿玛尼童装甲醛超标...</a><span class="colhui">2016-08-31</span></li>
                    <li><a href="#" target="_blank">硅藻泥不能充当“空气净化器”</a><span class="colhui">2016-09-02</span></li>
                    <li><a href="#" target="_blank">除了装修污染，室内空气污染还会来自哪...</a><span class="colhui">2016-09-13</span></li>
                </ul>-->
            </div>
            <div class="news-class">
                <div class="classtitle"><span class="sp1">行业<font>动态</font></span><span class="fr"><a href="{:getCategory(35,'url')}" class="colhui">更多</a></span></div>
                <content action="lists" catid="35"  order="listorder asc" num="5">

                    <ul>
                        <volist name="data" id="vo" key="k">
                            <li><a alt="{$vo.title}" target="_blank" href="{$vo.url}">{$vo.title|str_cut=###,18}</a><span class="colhui">{:date('Y-m-d',$vo['updatetime'])}</span></li>
                        </volist>
                    </ul>

                </content>

               <!-- <ul>
                    <li><a href="#" target="_blank">孕妇怎样预防甲醛中毒？</a><span class="colhui">2016-08-04</span></li>
                    <li><a href="#" target="_blank">甲醛对孕妇及胎儿影响巨大</a><span class="colhui">2016-07-15</span></li>
                    <li><a href="#" target="_blank">国家质检总局：进口阿玛尼童装甲醛超标...</a><span class="colhui">2016-08-31</span></li>
                    <li><a href="#" target="_blank">硅藻泥不能充当“空气净化器”</a><span class="colhui">2016-09-02</span></li>
                    <li><a href="#" target="_blank">除了装修污染，室内空气污染还会来自哪...</a><span class="colhui">2016-09-13</span></li>
                </ul>-->
            </div>
            <div class="news-class newsmg0">
                <div class="classtitle"><span class="sp1">常见<font>问题</font></span><span class="fr"><a href="{:getCategory(36,'url')}" class="colhui">更多</a></span></div>
                <content action="lists" catid="36"  order="listorder asc" num="5">

                    <ul>
                        <volist name="data" id="vo" key="k">
                            <li><a alt="{$vo.title}" target="_blank" href="{$vo.url}">{$vo.title|str_cut=###,18}</a><span class="colhui">{:date('Y-m-d',$vo['updatetime'])}</span></li>
                        </volist>
                    </ul>

                </content>

                <!--<ul>
                    <li><a href="#" target="_blank">孕妇怎样预防甲醛中毒？</a><span class="colhui">2016-08-04</span></li>
                    <li><a href="#" target="_blank">甲醛对孕妇及胎儿影响巨大</a><span class="colhui">2016-07-15</span></li>
                    <li><a href="#" target="_blank">国家质检总局：进口阿玛尼童装甲醛超标...</a><span class="colhui">2016-08-31</span></li>
                    <li><a href="#" target="_blank">硅藻泥不能充当“空气净化器”</a><span class="colhui">2016-09-02</span></li>
                    <li><a href="#" target="_blank">除了装修污染，室内空气污染还会来自哪...</a><span class="colhui">2016-09-13</span></li>
                </ul>-->
            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>
<section>
    <div class="huoban">
        <h2 class="xjtitle textC colwhite mrbt30 titlebg1">合作伙伴</h2>
        <div class="jlmain">
            <content action="lists" catid="33"  order="id DESC" num="16">


            <ul>
                <volist name="data" id="vo" key="k">

                    <li><a alt="{$vo.title}" href="javascript:;"><img src="{$vo.thumb}" /></a></li>

                </volist>
               <!-- <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>
                <li><img src="/statics/xijule/images/hbpic1.png" /></li>-->
            </ul>
            </content>
            <div class="clear"></div>
        </div>
    </div>
</section>






<template file="Content/footer.php"/>


</body>

</html>