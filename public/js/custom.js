$(document).ready(function () {

    initInfiniteScroll();

});

/**
 *
 */
function initInfiniteScroll() {
    $('.ajax-load').infinitescroll({
            navSelector: "div.pagination",
            nextSelector: "div.pagination a:first",
            itemSelector: ".ajax-load .row",
            animate: false,
            prefill: true,
            loading: {
                finishedMsg: "",
                img: "/i/loading.gif",
                msg: null,
                msgText: ""
            }
        }
    );
}