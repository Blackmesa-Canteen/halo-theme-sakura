<#--
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Akina
 */
-->
<#global res_base_url = settings.cdn?then("//cdn.jsdelivr.net/gh/Blackmesa-Canteen/halo-theme-sakura@1.3.3", theme_base)/>
<#macro footer>
</div><!-- #content -->
<#include "comments.ftl">
<#if is_post??>
	<@comment post,"post" />
<#elseif is_sheet??>
	<@comment sheet,"sheet" />
</#if>
<!-- 定义可变属性，会根据页面的改变而变化 -->
<script type='text/javascript'>
	/* <![CDATA[ */
    var PageAttr = {
        "metas": {
			<#if metas??>
				<#list metas?keys as key>
					"${key}": "${metas['${key}']}",
				</#list>
			</#if>
        },
    }
	/* ]]> */
</script>
</div><!-- #page Pjax container-->
<footer id="colophon" class="site-footer" role="contentinfo">
	<div class="site-info">
		<div class="footertext">
			<p class="foo-logo"
			   style="background-image: url('${settings.footer_logo?default('${res_base_url!}/source/images/sakura.svg')}');"></p>
			<@global.footer />
		</div>
		<div class="footer-device">
			<!-- 接力 -->
			<a href="https://travellings.link/" target="_blank" rel="noopener" title="开往-友链接力">
				<img src="https://cdn.jsdelivr.net/gh/volfclub/travellings@12.0/assets/logo.gif" alt="开往-友链接力" width="120">
			</a>
			<!-- 请尊重作者，请务必保留版权 -->
			<p style="font-family: 'Ubuntu', sans-serif;">Open-Source Project:</p>
			<p style="font-family: 'Ubuntu', sans-serif;">
				<span>Back-End is powered
 					<i class="fa fa-vimeo animated" style="color: #e74c3c;"></i>
					by
					<a rel="me" target="_blank"  href="https://github.com/halo-dev/halo" title="一个优秀的开源博客发布应用" style="text-decoration:none;">Halo</a>
				</span>
				•
				<span>Front-End is crafted with
 					<i class="fa fa-heart animated" style="color: #e74c3c;"></i>
					by
					<a rel="me" target="_blank" href="https://github.com/LIlGG/halo-theme-sakura" style="text-decoration:none;">LIlGG</a>
                  	&
                    <a rel="me" target="_blank" href="https://github.com/Blackmesa-Canteen/halo-theme-sakura" style="text-decoration:none;">996worker</a>
				</span>
			</p>
			<p id="htmer_time" style="font-family: 'Ubuntu', sans-serif;" />
			<p>
				© ${.now?string("yyyy")} ${(user.nickname)!}
				<#if settings.footer_case_number??  && settings.footer_case_number != "">
				&nbsp;
				<a href="https://beian.miit.gov.cn/" target="_blank">${settings.footer_case_number}</a>
				</#if>
				<#if settings.footer_ga_case_number??  && settings.footer_ga_case_number != "">
				&nbsp;
				<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=${settings.footer_ga_select_number!}" target="_blank">
					<img src="${res_base_url!}/source/images/other/gongan.png">${settings.footer_ga_case_number}
				</a>
				</#if>
			</p>
		</div>
	</div><!-- .site-info -->
</footer><!-- #colophon -->
<div class="openNav">
	<div class="iconflat">
		<div class="icon"></div>
	</div>
	<div class="site-branding">
		<#if blog_logo?? && blog_logo!=''>
			<div class="site-title">
				<a href="${blog_url!}">
					<img src="${blog_logo!}">
				</a>
			</div>
		<#else>
			<h1 class="site-title"><a href="${blog_url!}">${blog_title!}</a></h1>
		</#if>
	</div>
</div><!-- m-nav-bar -->
</section><!-- #section -->
<!-- m-nav-center -->
<div id="mo-nav">
	<div class="m-avatar">
		<img src="${(user.avatar)!'${res_base_url!}/source/images/avatar.jpg'}">
	</div>

	<#if settings.glitch_text??>
		<p style="text-align: center; color: #333; font-weight: 900; font-family: 'Ubuntu', sans-serif; letter-spacing: 1.5px">${settings.glitch_text}</p>
	</#if>

	<#if settings.focus_infos!true>
		<p style="display:flex; justify-content:center;">
			<#if settings.twitter??>
				<a href="${settings.twitter!}" class="social social-twitter" target="_blank"><img src="${res_base_url!}/source/images/sns/twitter.png" width="18"/></a>
			</#if>
			<#if settings.sina??>
				<a href="${settings.sina!}" class="social social-sina" target="_blank"><img src="${res_base_url!}/source/images/sns/sina.png" width="18"/></a>
			</#if>
			<#if settings.github??>
				<a href="${settings.github!}" class="social social-github" target="_blank"><img src="${res_base_url!}/source/images/sns/github.png" width="18"/></a>
			</#if>
			<#if settings.wechat??>
				<a href="${settings.wechat!}" class="social social-wechat" target="_blank"><img src="${res_base_url!}/source/images/sns/wechat.png" width="18"/></a>
			</#if>
			<#if settings.qq??>
				<a href="//wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" class="social social-wangyiyun" target="_blank"><img src="${res_base_url!}/source/images/sns/qq.png" width="18"/></a>
			</#if>
			<#if settings.bili??>
				<a href="${settings.bili!}" class="social social-bili" target="_blank"><img src="${res_base_url!}/source/images/sns/bilibili.png" width="18"/></a>
			</#if>
			<#if settings.wangyiyun??>
				<a href="${settings.wangyiyun!}" class="social social-wangyiyun" target="_blank"><img src="${res_base_url!}/source/images/sns/wangyiyun.png" width="18"/></a>
			</#if>
			<#if settings.customize_link?? && settings.customize_icon?? && settings.customize_title??>
				<a href="${settings.customize_link!}" class="social" target="_blank" title="${settings.customize_title!}">
					<img src="${settings.customize_icon}" width="18"/>
				</a>
			</#if>
		</p>
	</#if>

	<div class="m-search">
		<form class="m-search-form" method="get" action="/search" role="search">
			<input class="m-search-input" type="search" name="keyword" placeholder="搜索..." required>
		</form>
	</div>
	<#include "layouts/nav.ftl">
	<p class="m-footer">© ${.now?string("yyyy")} ${(user.nickname)!}</p>
</div><!-- m-nav-center end -->
<a href="#" class="cd-top"></a>
<!-- m-cd-top start -->
<button class="m-cd-top" title="Go to top">
	<i class="fa fa-chevron-up" aria-hidden="true"></i>
</button>
<!-- m-cd-top end -->
<!-- search start -->
<form class="js-search search-form search-form--modal" method="get" action="/search" role="search">
	<div class="search-form__inner">
		<div>
			<p class="micro mb-">输入后按回车搜索 ...</p>
			<i class="iconfont icon-search"></i>
			<input class="text-input" type="search" name="keyword" placeholder="Search" required>
		</div>
	</div>
	<div class="search_close"></div>
</form>
<!-- search end -->
<!-- aplayer start -->
<#if settings.is_aplayer && settings.aplayer_float>
<div id="aplayer-float" style="z-index: 100;" class="aplayer" data-global="true" data-id="${settings.aplayer_id!'2345868969'}" data-server="${settings.aplayer_server!'netease'}" data-type="${settings.aplayer_type!'playlist'}" data-fixed="true" data-preload="${settings.aplayer_preload!'none'}" data-order="${settings.aplayer_order!'list'}" data-theme="${settings.aplayer_theme!'orange'}" data-autoplay="${(settings.aplayer_autoplay!false)?string('true', 'false')}"></div>
</#if>
<!-- aplayer end -->
<!-- theme-change start -->
<#if settings.theme_change!true>
<div class="changeSkin-gear no-select">
	<div class="keys">
        <span id="open-skinMenu">切换主题 | SCHEME TOOL &nbsp;<i class="iconfont icon-gear inline-block rotating"></i></span>
    </div>
</div>
<div class="skin-menu no-select">
	<div class="theme-controls row-container">
		<ul class="menu-list">
			<#list 0..7 as i>
			<#assign iconStr="settings.bg_icon_${i}" icon = (iconStr?eval)?default("fa fa-television") />
			<#assign descStr="settings.bg_desc_${i}" desc = (descStr?eval)?default("") />
			<li id="bg_${i}" data-text="${desc}">
            	<i class="${icon}" aria-hidden="true" ></i>
          	</li>
			</#list>
		</ul>
	</div>
</div>
</#if>
<!-- theme-change end -->
<!-- 定义全局属性 -->
<script type='text/javascript'>
	/* <![CDATA[ */
	var Poi = {
		"pjax":"${(settings.poi_pjax!true)?string('true','')}",
		"windowheight":"${(!(settings.focus_height!true))?string('fixed','auto')}",
		"ajaxurl":"${blog_url!}",
		"resBaseUrl": "${res_base_url!}",
		"formpostion":"bottom",
		"toc": "${(settings.post_toc!true)?string('true','')}",
		"codeLine": "${(settings.code_line!true)?string('true','')}",
		"themeChange": "${(settings.code_line!true)?string('true','')}",
		"headFocus": "${(settings.head_focus!true)?string('true','')}",
		"bgvideo": "${(settings.bgvideo!true)?string('true','')}",
		"tagRandomColorMin": "${settings.tag_randomColorMin!0.965}",
		"tagRandomColorMax": "${settings.tag_randomColorMax!0.969}",
		"nickname": "${user.nickname!}",
		"sitename": "${blog_title!}",
		"themeBase": "${theme_base!}",
		"openToast": "${(settings.open_toast!true)?string('true','')}",
		"toastWidth": ${settings.toast_width!},
		"toastHeight": ${settings.toast_height!},
		"toastTop": "${settings.toast_top!}",
		"toastBackground": "${settings.theme_skin!}",
		"toastColor": "${settings.toast_color!}",
		"toastFontSize": ${settings.toast_font_size!},
		"copyMonitor": "${(settings.copy_monitor!true)?string('true','')}",
		"copyrightNotice": "${(settings.copyright_notice!true)?string('true','')}",
		"photosStyle": "${(settings.photos_style)!'justify'}",
		"photosGutter": ${(settings.photos_gutter)!10},
		"tocDepth": ${(settings.toc_depth)!0},
		"i18n": "${settings.i18n!'auto'}",
		"mathjax": "${(settings.mathjax!false)?string('true','')}",
		"coverNum": "${(settings.rimage_cover_back_num)!'0'}",
		"rimageUrl": "${(settings.rimage_url)!''}",
		"coverOpen": "${(settings.rimage_cover_back_open!false)?string('true','')}",
		"meEmail": "${(settings.email)!''}",
		"defaultTheme": "${(settings.default_theme)!'bg_0'}",
		"defaultGroup": "${(settings.default_group)?replace(' ', '-')}"
	};
	var bgConfig = {
	<#list 0..7 as i>
		<#assign name = (("settings.bg_name_" + i)?eval)?default(""),
				desc = (("settings.bg_desc_" + i)?eval)?default(""),
				url = (("settings.bg_url_" + i)?eval)?default(""),
				strategy = (("settings.bg_img_strategy_" + i)?eval)?default(""),
				isNight = (("settings.bg_night_" + i)?eval)?default("") />

		"bg_${i}": {
			"id": "${i}",
			"name": "${name}",
			"desc": "${desc}",
			"url": "${url}",
			"strategy": "${strategy}",
			"isNight": "${(isNight!true)?string('true', '')}"
		},
	</#list>
	};
	/* ]]> */
</script>
<script type='text/javascript' src='${res_base_url!}/script/utils.min.js?ver=1.3.3'></script>
<script type="text/javascript" src="${res_base_url!}/source/lib/lazysizes/lazysizes.min.js"></script>
<script type="text/javascript" src="${res_base_url!}/source/js/lib.js"></script>
<!-- 相册 -->
<#if settings.photos_style == "justify">
<script src="${res_base_url!}/source/lib/justifiedGallery/jquery.justifiedGallery.min.js"></script>
<#elseif settings.photos_style == "masonry" || settings.photos_style == "packery">
<script src="${res_base_url!}/source/lib/isotope.pkgd.min/index.js"></script>
<script src="${res_base_url!}/source/lib/imagesloaded/imagesloaded.pkgd.min.js"></script>
<#if settings.photos_style == "packery">
<script type='text/javascript' src='${res_base_url!}/source/lib/packery-mode.pkgd.min/index.js'></script>
</#if>
</#if>
<script type="text/javascript" src="${res_base_url!}/source/js/highlight/highlight.pack.js"></script>
<#if settings.code_line!true>
	<script type="text/javascript" src="${res_base_url!}/source/js/highlight/highlightjs-line-numbers.min.js"></script>
</#if>
<#if settings.is_aplayer!false>
	<script src="${res_base_url!}/source/lib/APlayer/APlayer.min.js" defer></script>
	<script src="${res_base_url!}/plugins/aplayer/js/index.js" defer></script>
</#if>
<#if settings.post_toc!true>
	<script src="${res_base_url!}/source/lib/tocbot/dist/tocbot.min.js" defer></script>
</#if>
<script src="${settings.comment_mode!'//cdn.jsdelivr.net/gh/LIlGG/halo-comment-sakura@v1.3.1/dist/halo-comment.min.js'}" defer></script>
<#if settings.tag_cloud!true>
<script src="${res_base_url!}/source/lib/jqcloud2/jqcloud.min.js" defer></script>
<script type='text/javascript'>
	var wordcloud = [
		<@tagTag method="list">
		<#list tags as tag>
		{'text': '${tag.name!}', 'weight': '${tag.postCount!}', 'link': '${tag.fullPath!}'},
		</#list>
		</@tagTag>
	]
</script>
</#if>
<#if settings.category_radar!true>
<script src="${res_base_url!}/source/js/echarts/echarts.min.js" defer></script>
<script type='text/javascript'>
	var categoryRadar = {
		<@categoryTag method="list">
		<#list categories as category>
		'${category.name!}': '${category.postCount!}',
		</#list>
		</@categoryTag>
	}
</script>
</#if>
<script type='text/javascript' src='${res_base_url!}/source/js/qrcode.min.js' defer></script>
<script type='text/javascript' src='${res_base_url!}/source/lib/flv.min/index.js' defer></script>
<script type='text/javascript' src='${res_base_url!}/script/i18n.min.js?ver=1.3.3' defer></script>
<script type='text/javascript' src='${theme_base!}/script/app.min.js?ver=1.3.3'></script>
<!--运行日期-->
<script>
	function secondToDate(second){if(!second){return 0}var time=new Array(0,0,0,0,0);if(second>=365*24*3600){time[0]=parseInt(second/(365*24*3600));second%=365*24*3600}if(second>=24*3600){time[1]=parseInt(second/(24*3600));second%=24*3600}if(second>=3600){time[2]=parseInt(second/3600);second%=3600}if(second>=60){time[3]=parseInt(second/60);second%=60}if(second>0){time[4]=second}return time};
</script>
<script type="text/javascript" language="javascript">
	function setTime(){var create_time=Math.round(new Date(Date.UTC(2021,6,21,11,42,23)).getTime()/1000);var timestamp=Math.round((new Date().getTime()+8*60*60*1000)/1000);currentTime=secondToDate((timestamp-create_time));currentTimeHtml="This site has been running for："+currentTime[0]+" yrs "+currentTime[1]+" d "+currentTime[2]+" h "+currentTime[3]+" m "+currentTime[4]+" s ";document.getElementById("htmer_time").innerHTML=currentTimeHtml}setInterval(setTime,1000);
</script>
<#nested />
<#if settings.live2d_switch!true>
<script src="${res_base_url!}/source/lib/jquery-ui/jquery-ui.min.js" async defer></script>
<#include "plugins/live2d/ftl/live2d.ftl">
<@live2d/>
</#if>
<div class="site-statistics">
	<@global.statistics />
</div>
</body>
</html>
</#macro>