<?php if (!defined('SHUIPF_VERSION')) exit(); ?><link href="{$config_siteurl}statics/xijule/css/common.css" rel="stylesheet" type="text/css" /><header>    <div class="jltop fontsize13">        <div class="jlmain">            <span class="fr icon a3">429702447</span>            <span class="fr icon a2">400-89985870</span>            <span class="fr icon a1">13558695870</span>        </div>    </div>    <div class="jlmenu">        <div class="jlmain pos_pre">            <div class="logo fl"><a href="/"></a></div>            <div class="nav fr textC fontsize16">                <ul>                    <li><a href="/" <?php if(!$catid):?> class="selected" <?php endif;?> >首页</a></li>                    <content action="category" catid="0"  order="listorder ASC" >                        <volist name="data" id="vo">                           <li><a <?php if($catid && $catid==$vo['catid']):?> class="selected" <?php endif;?> href="<?php if($vo['catid']==28||$vo['catid']==49):?>{$vo.url}<?php else:?>{:get_menu_url($vo['catid'])}<?php endif;?>" >{$vo.catname}</a></li>                        </volist>                    </content>                </ul>            </div>            <div class="clear"></div>        </div>    </div></header><!--header end-->