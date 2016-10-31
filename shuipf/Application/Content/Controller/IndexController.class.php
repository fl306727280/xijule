<?php

// +----------------------------------------------------------------------
// | ShuipFCMS 网站前台
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2014 http://www.shuipfcms.com, All rights reserved.
// +----------------------------------------------------------------------
// | Author: 水平凡 <admin@abc3210.com>
// +----------------------------------------------------------------------

namespace Content\Controller;

use Common\Controller\Base;
use Content\Model\ContentModel;

class IndexController extends Base {

    //初始化
    protected function _initialize()
    {
        parent::_initialize();
        $leftMenu = ContentModel::getInstance(5)->relation(true)->where(array("id" => 1, 'status' => 99))->find();
        
        if(isset($_GET['catid'])){
            $catid = get_top_parentid($_GET['catid']);//获取顶级栏目catid
            $category = M('category')->where(['catid'=>$catid])->field('catid,catname,catdir')->find();

            if($category['catid']==51){
                $list = M('category')->where(['parentid'=>$category['catid']])->field('catid,catname as title,url')->select();

                $this->assign('lists',$list);

            }elseif ($category['catid']==28){

            }elseif ($category['catid']==49){

            }else{
                $cate = M('category')->where(['parentid'=>$category['catid']])->field('catid')->select();
                $n = array_column($cate,'catid');
                $list = M('page')->where(['catid'=>['in',$n]])->field('catid,title,updatetime')->select();
                foreach ($list as $k=>$v){
                    $list[$k]['url'] = M('category')->where(['catid'=>$v['catid']])->getField('url');
                }
                $this->assign('lists',$list);
            }
            $this->assign('category',$category);
        }
        $this->assign('menu',$leftMenu);

    }




    //首页
    public function index() {
        $page = isset($_GET[C("VAR_PAGE")]) ? $_GET[C("VAR_PAGE")] : 1;
        $page = max($page, 1);
        //模板处理
        $tp = explode(".", self::$Cache['Config']['indextp']);
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //生成路径
        $urls = $this->Url->index($page);
        $GLOBALS['URLRULE'] = $urls['page'];
        
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //把分页分配到模板
        $this->assign(C("VAR_PAGE"), $page);
        $this->display("Index:" . $tp[0]);
    }

    //列表
    public function lists() {
        //栏目ID
        $catid = I('get.catid', 0, 'intval');
        //分页
        $page = isset($_GET[C("VAR_PAGE")]) ? $_GET[C("VAR_PAGE")] : 1;
        //获取栏目数据
        $category = getCategory($catid);

        if (empty($category)) {
            send_http_status(404);
            exit;
        }
        //栏目扩展配置信息
        $setting = $category['setting'];
        //检查是否禁止访问动态页
        if ($setting['listoffmoving']) {
            send_http_status(404);
            exit;
        }
        //生成静态分页数
        $repagenum = (int) $setting['repagenum'];
        if ($repagenum && !$GLOBALS['dynamicRules']) {
            //设置动态访问规则给page分页使用
            $GLOBALS['Rule_Static_Size'] = $repagenum;
            $GLOBALS['dynamicRules'] = CONFIG_SITEURL_MODEL . "index.php?a=lists&catid={$catid}&page=*";
        }
        //父目录
        $parentdir = $category['parentdir'];
        //目录
        $catdir = $category['catdir'];
        //生成路径
        $category_url = $this->Url->category_url($catid, $page);
        //取得URL规则
        $urls = $category_url['page'];

        //生成类型为0的栏目
        if ($category['type'] == 0) {

            //栏目首页模板
            $template = $setting['category_template'] ? $setting['category_template'] : 'category';
            //栏目列表页模板
            $template_list = $setting['list_template'] ? $setting['list_template'] : 'list';
            //判断使用模板类型，如果有子栏目使用频道页模板，终极栏目使用的是列表模板
            $template = $category['child'] ? "Category/{$template}" : "List/{$template_list}";
            //去除后缀开始
            $tpar = explode(".", $template, 2);
            //去除完后缀的模板
            $template = $tpar[0];
            unset($tpar);
            $GLOBALS['URLRULE'] = $urls;
            if($template == "Category/category_new"){
                $cate = M('category')->where(['parentid'=>$category['catid']])->field('catid')->select();
                $n = array_column($cate,'catid');
                $list = M('page')->where(['catid'=>['in',$n]])->field('catid,title,updatetime')->select();
                foreach ($list as $k=>$v){
                    $list[$k]['url'] = M('category')->where(['catid'=>$v['catid']])->getField('url');
                }
                $this->assign('list',$list);
            }
        } else if ($category['type'] == 1) {//单页
            $db = D('Content/Page');
            $template = $setting['page_template'] ? $setting['page_template'] : 'page';
            //判断使用模板类型，如果有子栏目使用频道页模板，终极栏目使用的是列表模板
            $template = "Page/{$template}";
            //去除后缀开始
            $tpar = explode(".", $template, 2);
            //去除完后缀的模板
            $template = $tpar[0];
            unset($tpar);
            if($_GET['catid']==49){
                $id = 1;
                $Categorys = getCategory(49);
                $model = ContentModel::getInstance(5);
                //取得数据，这里使用关联查询
                $data = $model->relation(true)->where(array("id" => $id))->find();

                $model->dataMerger($data);

                //引入输入表单处理类
                $content_form = new \content_form(5, $this->catid);
                //字段内容
                $forminfos = $content_form->get($data);

                //生成对应的JS验证规则
                $formValidateRules = $content_form->formValidateRules;
                //js验证不通过提示语
                $formValidateMessages = $content_form->formValidateMessages;
                //js
                $formJavascript = $content_form->formJavascript;
                $this->assign("category", $Categorys);
                $this->assign("list", $data);
                $this->assign("catid", $this->catid);
                $this->assign("id", $id);
                $this->assign("content_form", $content_form);
                $this->assign("forminfos", $forminfos);
                $this->assign("formValidateRules", $formValidateRules);
                $this->assign("formValidateMessages", $formValidateMessages);
                $this->assign("formJavascript", $formJavascript);
            }
            $GLOBALS['URLRULE'] = $urls;
            $info = $db->getPage($catid);
            $this->assign($category['setting']['extend']);
            $this->assign($info);

        }
        //把分页分配到模板
        $this->assign(C("VAR_PAGE"), $page);
        //分配变量到模板 
        $this->assign($category);
        //seo分配到模板
        $seo = seo($catid, $setting['meta_title'], $setting['meta_description'], $setting['meta_keywords']);
        $this->assign("SEO", $seo);
        $this->display($template);
    }

    //内容页
    public function shows() {
        $catid = I('get.catid', 0, 'intval');
        $id = I('get.id', 0, 'intval');
        $page = intval($_GET[C("VAR_PAGE")]);
        $page = max($page, 1);
        //获取当前栏目数据
        $category = getCategory($catid);
        if (empty($category)) {
            send_http_status(404);
            exit;
        }
        //反序列化栏目配置
        $category['setting'] = $category['setting'];
        //检查是否禁止访问动态页
        if ($category['setting']['showoffmoving']) {
            send_http_status(404);
            exit;
        }
        //模型ID
        $modelid = $category['modelid'];
        $data = ContentModel::getInstance($modelid)->relation(true)->where(array("id" => $id, 'status' => 99))->find();
        if (empty($data)) {
            send_http_status(404);
            exit;
        }
        ContentModel::getInstance($modelid)->dataMerger($data);
        //分页方式
        if (isset($data['paginationtype'])) {
            //分页方式 
            $paginationtype = $data['paginationtype'];
            //自动分页字符数
            $maxcharperpage = (int) $data['maxcharperpage'];
        } else {
            //默认不分页
            $paginationtype = 0;
        }
        //tag
        tag('html_shwo_buildhtml', $data);
        $content_output = new \content_output($modelid);
        //获取字段类型处理以后的数据
        $output_data = $content_output->get($data);
        $output_data['id'] = $id;
        $output_data['title'] = strip_tags($output_data['title']);
        //SEO
        $seo_keywords = '';
        if (!empty($output_data['keywords'])) {
            $seo_keywords = implode(',', $output_data['keywords']);
        }
        $seo = seo($catid, $output_data['title'], $output_data['description'], $seo_keywords);

        //内容页模板
        $template = $output_data['template'] ? $output_data['template'] : $category['setting']['show_template'];
        //去除模板文件后缀
        $newstempid = explode(".", $template);
        $template = $newstempid[0];
        unset($newstempid);
        //分页处理
        $pages = $titles = '';
        //分配解析后的文章数据到模板
        $this->assign($output_data);
        //seo分配到模板
        $this->assign("SEO", $seo);
        //栏目ID
        $this->assign("catid", $catid);
        //分页生成处理
        //分页方式 0不分页 1自动分页 2手动分页

        if ($data['paginationtype'] > 0) {
            $urlrules = $this->Url->show($data, $page);
            //手动分页
            $CONTENT_POS = strpos($output_data['content'], '[page]');
            if ($CONTENT_POS !== false) {
                $contents = array_filter(explode('[page]', $output_data['content']));
                $pagenumber = count($contents);
                $pages = page($pagenumber, 1, $page, array(
                    'isrule' => true,
                    'rule' => $urlrules['page'],
                        ))->show("default");
                //判断[page]出现的位置是否在第一位 
                if ($CONTENT_POS < 7) {
                    $content = $contents[$page];
                } else {
                    $content = $contents[$page - 1];
                }

                //分页
                $this->assign("pages", $pages);
                $this->assign("content", $content);
            }
        } else {
            $this->assign("content", $output_data['content']);
        }
        $this->display("Show/{$template}");
    }

    //tags标签
    public function tags() {
        $tagid = I('get.tagid', 0, 'intval');
        $tag = I('get.tag', '', '');
        $where = array();
        if (!empty($tagid)) {
            $where['tagid'] = $tagid;
        } else if (!empty($tag)) {
            $where['tag'] = $tag;
        }
        //如果条件为空，则显示标签首页
        if (empty($where)) {
            $key = 'Tags_Index_index';
            $dataCache = S($key);
            if (empty($dataCache)) {
                $data = M('Tags')->order(array('hits' => 'DESC'))->limit(100)->select();
                if (!empty($data)) {
                    //查询每个tag最新的一条数据
                    $tagsContent = M('TagsContent');
                    foreach ($data as $k => $r) {
					    $url = $this->Url->tags($r);
                        $data[$k]['url'] = $url['url'];
                        $data[$k]['info'] = $tagsContent->where(array('tag' => $r['tag']))->order(array('updatetime' => 'DESC'))->find();
                    }
                    //进行缓存
                    S($key, $data, 3600);
                }
            } else {
                $data = $dataCache;
            }
            $SEO = seo('', '标签');
            //seo分配到模板
            $this->assign("SEO", $SEO);
            $this->assign('list', $data);
            $this->display("Tags/index");
            return true;
        }
        //分页号
        $page = isset($_GET[C("VAR_PAGE")]) ? $_GET[C("VAR_PAGE")] : 1;
        //根据条件获取tag信息
        $info = M('Tags')->where($where)->find();
        if (empty($info)) {
            $this->error('抱歉，沒有找到您需要的内容！');
        }
        //访问数+1
        M('Tags')->where($where)->setInc("hits");
        //更新最后访问时间
        M('Tags')->where($where)->save(array("lasthittime" => time()));
        $this->assign($data);
        $Urlrules = cache('Urlrules');
        //取得tag分页规则
        $urlrules = $Urlrules[self::$Cache['Config']['tagurl']];
        if (empty($urlrules)) {
            $urlrules = 'index.php?g=Tags&tagid={$tagid}|index.php?g=Tags&tagid={$tagid}&page={$page}';
        }else{
            $urlrules = $urlrules['urlrule'];
        }
        $GLOBALS['URLRULE'] = str_replace('|', '~', str_replace(array('{$tag}', '{$tagid}'), array($info['tag'], $info['tagid']), $urlrules));
        $SEO = seo();
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //把分页分配到模板
        $this->assign(C("VAR_PAGE"), $page);
        $this->assign($info);
        $this->display("Tags/tag");
    }

    public function ajax_phone()
    {
        if(IS_POST){
            $phone = I('post.phone',0,'trim');
            if(!$phone) $this->error("手机号不能为空");
            $add = [
                'phone'=>$phone,
                'status'=>0,
                'create_time'=>time()
            ];
            $n = M('subscribe')->where(['phone'=>$phone])->find();
            if($n){
                $this->error("你已预约过了，无需重复提交");
            }
            $stauts = M('subscribe')->add($add);
            if($stauts){
                $this->success("预约成功");
            }else{
                $this->error("预约失败，请重新提交");
            }
        }
    }
}
