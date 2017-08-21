/**
 * Created by ross on 8/20/17.
 */



$(document).on('page:change', function() {
    if (window._gaq != null) {
        return _gaq.push(['_trackPageview']);
    } else if (window.pageTracker != null) {
        return pageTracker._trackPageview();
    }
});

