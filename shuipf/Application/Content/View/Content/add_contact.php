<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>添加新文章 - 系统后台 - {$Config.sitename} - by ShuipFCMS</title>
    <Admintemplate file="Admin/Common/Cssjs"/>
    <script type="text/javascript">
        var catid = 49;
    </script>
    <style type="text/css">
        .col-auto {
            overflow: hidden;
            _zoom: 1;
            _float: left;
            border: 1px solid #c2d1d8;
        }
        .col-right {
            float: right;
            width: 210px;
            overflow: hidden;
            margin-left: 6px;
            border: 1px solid #c2d1d8;
        }

        body fieldset {
            border: 1px solid #D8D8D8;
            padding: 10px;
            background-color: #FFF;
        }
        body fieldset legend {
            background-color: #F9F9F9;
            border: 1px solid #D8D8D8;
            font-weight: 700;
            padding: 3px 8px;
        }
        .list-dot{ padding-bottom:10px}
        .list-dot li,.list-dot-othors li{padding:5px 0; border-bottom:1px dotted #c6dde0; font-family:"宋体"; color:#bbb; position:relative;_height:22px}
        .list-dot li span,.list-dot-othors li span{color:#004499}
        .list-dot li a.close span,.list-dot-othors li a.close span{display:none}
        .list-dot li a.close,.list-dot-othors li a.close{ background: url("{$config_siteurl}statics/images/cross.png") no-repeat left 3px; display:block; width:16px; height:16px;position: absolute;outline:none;right:5px; bottom:5px}
        .list-dot li a.close:hover,.list-dot-othors li a.close:hover{background-position: left -46px}
        .list-dot-othors li{float:left;width:24%;overflow:hidden;}
    </style>
</head>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
    <form name="myform" id="myform" action="{:U('Content/edit')}" method="post" class="J_ajaxForms" enctype="multipart/form-data">
    <div class="col-right">
        <div class="table_full">
            <table width="100%">
                <?php
                if(is_array($forminfos['senior'])) {
                    foreach($forminfos['senior'] as $field=>$info) {
                        if($info['isomnipotent']) continue;
                        if($info['formtype']=='omnipotent') {
                            foreach($forminfos['base'] as $_fm=>$_fm_value) {
                                if($_fm_value['isomnipotent']) {
                                    $info['form'] = str_replace('{'.$_fm.'}',$_fm_value['form'],$info['form']);
                                }
                            }
                            foreach($forminfos['senior'] as $_fm=>$_fm_value) {
                                if($_fm_value['isomnipotent']) {
                                    $info['form'] = str_replace('{'.$_fm.'}',$_fm_value['form'],$info['form']);
                                }
                            }
                        }
                        ?>
                        <tr>
                            <td><b><?php echo $info['name']?></b><?php if($info['star']){ ?><font color="red">*</font><?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $info['form'];?><span><?php echo $info['tips'];?></span></td>
                        </tr>
                    <?php
                    }
                }
                ?>

            </table>
        </div>
    </div>
    <div class="col-auto">
        <div class="h_a">联系我们</div>
        <div class="table_full">
            <table width="100%">
                <?php

                if(is_array($forminfos['base'])) {
                    foreach($forminfos['base'] as $field=>$info) {
                        if($info['isomnipotent']) continue;
                        if($info['formtype']=='omnipotent') {
                           /* foreach($forminfos['base'] as $_fm=>$_fm_value) {
                                if($_fm_value['isomnipotent']) {
                                    $info['form'] = str_replace('{'.$_fm.'}',$_fm_value['form'],$info['form']);
                                }
                            }
                            foreach($forminfos['senior'] as $_fm=>$_fm_value) {
                                if($_fm_value['isomnipotent']) {
                                    $info['form'] = str_replace('{'.$_fm.'}',$_fm_value['form'],$info['form']);
                                }
                            }*/
                            $info['form'] = '<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=B3f7707c25da5b29a6ff69618788a296"></script>
<input type="text" name="info[address]" id="address" style="width:280px;" placeholder="'.$data[address].'" value="'.$data[address].'" class="input">
<input type="hidden" value="'.$data[lng].'" name="info[lng]" id="lng"/>
<input type="hidden" value="'.$data[lat].'" name="info[lat]" id="lat"/>
<div id="allmap" class="addbmdmap" style="height:438px; width:600px;" ></div>
<script type="text/javascript">
    var lng = "'.$data[lng].'";
    var lat = "'.$data[lat].'";
    var map = new BMap.Map("allmap");
    if(lng=="" && lat==""){
        var point = new BMap.Point(104.026623,30.676945);
    }else{
        var point = new BMap.Point(lng,lat);
    }
    var geoc = new BMap.Geocoder();
    //map.enableScrollWheelZoom(true);
    map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    map.centerAndZoom(point, 16);
    map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
    if(lng!="" && lat!=""){
       // var myIcon = new BMap.Icon("http://developer.baidu.com/map/jsdemo/img/fox.gif", new BMap.Size(300,157));
        var marker1 = new BMap.Marker(point/*,{icon:myIcon}*/);  // 创建标注
        map.addOverlay(marker1);
        marker1.enableDragging();// 将标注添加到地图中
        marker1.addEventListener("dragend", function(a){
            $("#lng").val(a.point.lng);
            $("#lat").val(a.point.lat);
            var pt = a.point;
            geoc.getLocation(pt, function(rs){
                var addComp = rs.addressComponents;
                $("#address").val(addComp.province + " " + addComp.city + " " + addComp.district + " " + addComp.street + " " + addComp.streetNumber);
            });
        });
   }
	function myFun(result){
		var cityName = result.name;
		map.setCenter(cityName);
	}
	//点击生成经纬度
	map.addEventListener("click",function(e){
		var lng = e.point.lng;
		var lat = e.point.lat;
		$("#lng").val(lng);
		$("#lat").val(lat);
		var ptr = e.point;
		geoc.getLocation(ptr, function(rs){
			var addComp = rs.addressComponents;
			$("#address").val(addComp.province + " " + addComp.city + " " + addComp.district + " " + addComp.street + " " + addComp.streetNumber);
		});
		map.removeOverlay(marker1);  //删除原先的标注点
		if(mak){ map.removeOverlay(mak);}
	   //创建小狐狸
		var pt = new BMap.Point(e.point.lng, e.point.lat);
		//var myIcon = new BMap.Icon("http://developer.baidu.com/map/jsdemo/img/fox.gif", new BMap.Size(300,157));
		var marker2 = new BMap.Marker(pt/*,{icon:myIcon}*/);  // 创建标注
		marker1 = marker2;   //把新标注点存放入marker1
		map.addOverlay(marker2);   //创建一个标注点
		marker2.enableDragging();// 将标注添加到地图中
		marker2.addEventListener("dragend", function(a){
			$("#lng").val(a.point.lng);
			$("#lat").val(a.point.lat);
			var pt = a.point;
			geoc.getLocation(pt, function(rs){
				var addComp = rs.addressComponents;
				$("#address").val(addComp.province + " " + addComp.city + " " + addComp.district + " " + addComp.street + " " + addComp.streetNumber);
			});
		});

	});
	function G(id) {
		return document.getElementById(id);
	}
	var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
		{"input" : "address"
		,"location" : map
	});
	ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
		var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
		
		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
		G("searchResultPanel").innerHTML = str;
	});

		var myValue;
		ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
		var _value = e.item.value;
			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
			G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
			
			setPlace();
		});
		var mak;
		function setPlace(){
			map.clearOverlays();    //清除地图上所有覆盖物
			function myFun(){
				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
				map.centerAndZoom(pp, 18);
				 mak =new BMap.Marker(pp);
				map.addOverlay(mak);    //添加标注
			}
			var local = new BMap.LocalSearch(map, { //智能搜索
			  onSearchComplete: myFun
			});
			local.search(myValue);
		}
</script>';

                        }
                        ?>
                        <tr>
                            <th width="80">
                                <?php echo $info['name'];?>
                            </th>
                            <td><?php if($info['star']){ ?><span class="must_red">*</span><?php } ?><?php echo $info['form'];?> <span><?php echo $info['tips'];?></span></td>
                        </tr>
                    <?php
                    } }
                ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="btn_wrap" style="z-index:999;text-align: center;">
        <div class="btn_wrap_pd">
            <input type="hidden" name="info[id]" value="1">
            <input type="hidden" name="info[catid]" value="49">
            <input type="hidden" name="ajax" value="1" />
            <button class="btn btn_submit J_ajax_submit_btn1"type="submit">提交</button>
        </div>
    </div>
    </form>
</div>
<script type="text/javascript" src="{$config_siteurl}statics/js/common.js"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/content_addtop.js"></script>
<script type="text/javascript">
    $(function () {
        $(".J_ajax_close_btn").on('click', function (e) {
            e.preventDefault();
            Wind.use("artDialog", function () {
                art.dialog({
                    id: "question",
                    icon: "question",
                    fixed: true,
                    lock: true,
                    background: "#CCCCCC",
                    opacity: 0,
                    content: "您确定需要关闭当前页面嘛？",
                    ok:function(){
                        setCookie("refersh_time",1);
                        window.close();
                        return true;
                    }
                });
            });
        });
        Wind.use('validate', 'ajaxForm', 'artDialog', function () {
            //javascript
            {$formJavascript}
            var form = $('form.J_ajaxForms');
            //ie处理placeholder提交问题
            if ($.browser.msie) {
                form.find('[placeholder]').each(function () {
                    var input = $(this);
                    if (input.val() == input.attr('placeholder')) {
                        input.val('');
                    }
                });
            }
            //表单验证开始
            form.validate({
                //是否在获取焦点时验证
                onfocusout:false,
                //是否在敲击键盘时验证
                onkeyup:false,
                //当鼠标掉级时验证
                onclick: false,
                //验证错误
                showErrors: function (errorMap, errorArr) {
                    //errorMap {'name':'错误信息'}
                    //errorArr [{'message':'错误信息',element:({})}]
                    try{
                        $(errorArr[0].element).focus();
                        art.dialog({
                            id:'error',
                            icon: 'error',
                            lock: true,
                            fixed: true,
                            background:"#CCCCCC",
                            opacity:0,
                            content: errorArr[0].message,
                            cancelVal: '确定',
                            cancel: function(){
                                $(errorArr[0].element).focus();
                            }
                        });
                    }catch(err){
                    }
                },
                //验证规则
                rules: {$formValidateRules},
                //验证未通过提示消息
                messages: {$formValidateMessages},
                //给未通过验证的元素加效果,闪烁等
                highlight: false,
                //是否在获取焦点时验证
                onfocusout: false,
                //验证通过，提交表单
                submitHandler: function (forms) {
                    var dialog = art.dialog({id: 'loading',fixed: true,lock: true,background: "#CCCCCC",opacity: 0,esc:false,title: false});
                    $(forms).ajaxSubmit({
                        url: form.attr('action'), //按钮上是否自定义提交地址(多按钮情况)
                        dataType: 'json',
                        beforeSubmit: function (arr, $form, options) {

                        },
                        success: function (data, statusText, xhr, $form) {
                            dialog.close();
                            if(data.status){
                                setCookie("refersh_time",1);
                                //添加成功
                                Wind.use("artDialog", function () {
                                    art.dialog({
                                        id: "succeed",
                                        icon: "succeed",
                                        fixed: true,
                                        lock: true,
                                        background: "#CCCCCC",
                                        opacity: 0,
                                        content: data.info
                                    });
                                });
                                window.location.reload();
                            }else{
                                isalert(data.info);
                            }
                        }
                    });
                }
            });
        });
    });
</script>
</body>
</html>