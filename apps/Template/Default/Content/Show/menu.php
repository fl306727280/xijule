<div class="ny-lf-wd fl">
    <div class="ny-cut colwhite fontsize20">{:get_firstmenu_title($category['catid'])}</div>
    <div class="ny-bor fontsize18 mrbt20">
        <ul>
            <?php if($lists):?>
            <volist name="lists" id="v" >
                <li <?php if($catid==$v['catid']):?> class="selected" <?php endif;?>><a href="{$v.url}" class="">{$v.title|str_cut=###,10}</a></li>
            </volist>
            <?php else:?>
                <li <?php if($catid==$category['catid']):?> class="selected" <?php endif;?>><a href="{$category.url}" class="">{$category.catname}</a></li>
            <?php endif;?>
        </ul>
    </div>
    <div class="ny-cut colwhite fontsize20">联系我们</div>
    <div class="ny-bor fontsize16 mrbt10 botbt">
        <p class="textC lg32 botbt fontsize18">成都喜居乐环保科技有限公司</p>
        <div class="addressnr fontsize16">
            <p>400-89985870</p>
            <p>13558695870</p>
            <p>429702447</p>
            <p>成都市成华区万科路9号万科金库1单元1127</p>
        </div>
    </div>
</div>