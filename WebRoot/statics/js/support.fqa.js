var documentLinks = document.getElementsByTagName('a');
var i;
for (i = 0; i < documentLinks.length; i++) {
    var feedbackLink = documentLinks[i];
    if (feedbackLink.getAttribute('href') && (feedbackLink.getAttribute('href').indexOf('www.fang.com/service/feedback/LeaveMess.aspx') >= 0 || feedbackLink.getAttribute('href').indexOf('www.soufun.com/service/feedback/LeaveMess.aspx') >= 0)) {
        var laiyuan = encodeURIComponent(window.location.href);
        var url = "http://support.fang.com/faq/Index.html?laiyuanurl=" + laiyuan;
        feedbackLink.setAttribute('href', url);
        feedbackLink.href = url;
        feedbackLink.setAttribute('target', '_blank');
        feedbackLink.target = '_blank';
    }
}