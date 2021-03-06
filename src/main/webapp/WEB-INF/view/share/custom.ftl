<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <base href="${ctx}/static/share/">
    <meta charset="utf-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
    <title>辣条</title>
    <link rel="stylesheet" href="dist/css/custom.css">
    <script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div id="topBar" class="bar bar-header"
     style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);z-index: 999999;">
    <button onclick="closeTopBar()"
            style="float: left; touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
        <i class="ion-top-banner-close"></i>
    </button>
    <button class="button button-icon logo-button">
        <i class="x-land-log"></i>
    </button>
    <div class="logo-title">辣条</div>
    <button class="button follow j-ga" data-ga_category="引导下载点击" data-ga_action="下载点击-顶部" data-ga_tag=""
            style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
        <a class="ui-btn ui-btn-primary" href="${appUrl}" style="padding:0 20px;">下载</a>
    </button>
</div>
<div class="topContent">
    <div id="iframe-box" style="display: none;">
        <iframe id="iframe" src="${url}" frameborder="0" height="100%" width="100%"
                marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>
    </div>
    <div id="content"></div>
    <section class="comments" style="display: none;">
        <div style="padding: 5px;">
            <a class="download-app j-ga" data-ga_category="引导下载点击" data-ga_action="下载点击-更多评论" data-ga_tag=""
               href="${appUrl}"
               style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                下载辣条
                立享优惠
            </a>
        </div>
    </section>
</div>
<script>
    function closeTopBar() {
        $('#topBar').hide();
        $('body').css('padding-top', '0');
        $('#iframe-box').height($(window).height() - 65);
    }

    $(function () {
        //$('iframe').width($(window).width());
//        $('#iframe-box').height($(window).height() - 80);

        $.get('${url}', function (data) {
            data = data.replace(/\"\/index.php/g, '${url.getProtocol()}://${url.getHost()}/index.php');
            $('#content').html(data);

        <#--$('a').each(function () {-->
        <#--var $this = $(this);-->
        <#--if ($this.attr('href').startsWith('/')) {-->
        <#--var href = $this.attr('href');-->
        <#--$this.attr('href', '${url.getProtocol()}://${url.getHost()}' + href);-->
        <#--}-->
        <#--});-->
        });
    <#--$('#content').load('${url}', function () {-->
    <#--$('a').each(function () {-->
    <#--var $this = $(this);-->
    <#--if ($this.attr('href').startsWith('/')) {-->
    <#--var href = $this.attr('href');-->
    <#--$this.attr('href', '${url.getProtocol()}://${url.getHost()}' + href);-->
    <#--}-->
    <#--});-->
    <#--});-->
    });

    //    var ifram = document.getElementById('iframe');
    //    if (navigator.userAgent.match(/iPad|iPhone/i)) {
    //        var iframe_box = document.getElementById('iframe-box');
    //        iframe_box.style.width = 100 + '%';
    //        iframe_box.style.overflowX = 'hidden';
    //        iframe_box.style.overflowY = 'scroll';
    //        iframe_box.style.webkitOverflowScrolling = 'touch';
    //        //        ifram.setAttribute('scrolling', 'no');
    //        iframe_box.appendChild(ifram)
    //    }

</script>

<script src="https://s19.cnzz.com/z_stat.php?id=1262914216&web_id=1262914216" language="JavaScript"></script>
<script>
    $(function () {
        $('a[title="站长统计"]').hide()
    });
</script>
</body>
</html>