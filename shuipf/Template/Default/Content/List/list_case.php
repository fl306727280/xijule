<?php if (!defined('SHUIPF_VERSION')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><link href="favicon.ico" rel="shortcut icon" /><link rel="canonical" href="{$config_siteurl}" /><title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title><meta name="description" content="{$SEO['description']}" /><meta name="keywords" content="{$SEO['keyword']}" />    <link href="{$config_siteurl}statics/default/css/index.css" rel="stylesheet" type="text/css" /><link href="{$config_siteurl}statics/default/css/article_list.css" rel="stylesheet" type="text/css" /><link href="{$config_siteurl}statics/yzjc/css/common.css" rel="stylesheet" type="text/css" /><script src="{$config_siteurl}statics/js/jquery.js" type="text/javascript"></script><script src="{$config_siteurl}statics/default/js/w3cer.js" type="text/javascript"></script></head><body><template file="Content/header.php"/><div class="main">    <div class="content">        <template file="Content/Show/menu.php"/>        <div class="nr_right">           <div class="current-wz mrbt15">               <span>                   <a href="{:getCategory($catid,'url')}" >{:getCategory($catid,'catname')}</a>               </span>            </div>            <div class="cpfor">                <content action="lists" catid="$catid" order="listorder asc" num="20" page="$page">                <ul class="news_ct_list_pic fontsize14">                    <volist name="data" id="vo" key="k">                        <li><span><a  alt="{$vo.title}" href="{$vo.url}"><img height="160" width="160" src="{:thumb($vo[thumb],160,160)}"></a></span>                            <h2><a alt="{$vo.title}" href="{$vo.url}">{$vo.title|str_cut=###,18}</a></h2>                            <p class="colhui">{:date('Y-m-d',$vo['updatetime'])}</p>                        </li>                    </volist>                </ul>                </content>                <div class="clear"></div>                <div class="systempage">                        {$pages}                    <div style="clear:both"></div>                </div>            </div>        </div>        <div class="clear"></div>    </div></div><template file="Content/footer.php"/><script type="text/javascript">$(function (){$(window).toTop({showHeight : 100,0});});</script></body></html>