<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
    <Admintemplate file="Common/Nav"/>
    <div class="h_a">搜索</div>
    <form method="post" action="{:U('index')}">
        <div class="search_type cc mb10">
            <div class="mb10"> <span class="mr20">
      预约时间：
        <input type="text" name="startime" class="input length_2 J_date" value="{$_GET.startime}">
        -
        <input type="text" class="input length_2 J_date" name="endtime" value="{$_GET.endtime}">

                    预约电话：
        <input type="text" class="input length_2" name="phone" style="width:200px;" value="{$_GET.phone}" placeholder="请输入预约电话...">
        <button class="btn">搜索</button>
        </span> </div>
        </div>
    </form>
    <form name="myform" action="{:U('Content/content/delete_yuyue')}" method="post" class="J_ajaxForm">
    <div class="table_list">
        <table width="100%" cellspacing="0">
            <thead>
            <tr>
                <td width="45" align="center"><input type="checkbox" class="J_check_all" data-direction="x" data-checklist="J_check_x">全选</td>
                <td width="40" align="center">ID</td>
                <td width="70" align="center" >预约电话 </td>
                <td width="120" align="center">预约时间</td>
                <td width="100" align="center">管理操作</td>
            </tr>
            </thead>
            <tbody>
            <volist name="data" id="vo">
                <tr>
                    <td align="center"><input type="checkbox" class="J_check" data-yid="J_check_y" data-xid="J_check_x" name="id[]" value="{$vo.id}" id="att_{$vo.id}" /></td>
                    <td align="center">{$vo.id}</td>
                    <td align="center">{$vo.phone}</td>
                    <td align="center">{$vo.create_time|date="Y-m-d H:i:s",###}</td>
                    <td align="center">
                        <a class="J_ajax_del" href="{:U('Content/content/delete_yuyue',array('id'=>$vo['id']))}">删除</a>
                    </td>
                </tr>
            </volist>
            </tbody>
        </table>
        <div class="p10">
            <div class="pages"> {$Page} </div>
        </div>
    </div>
    <div class="btn_wrap">
        <div class="btn_wrap_pd">
            <label class="mr20"><input type="checkbox" class="J_check_all" data-direction="y" data-checklist="J_check_y">全选</label>
            <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">删除预约</button>
        </div>
    </div>
    </form>
</div>
<script src="{$config_siteurl}statics/js/common.js?v"></script>
<script src="{$config_siteurl}statics/js/content_addtop.js?v"></script>
<script type="text/javascript">



</script>
</body>
</html>