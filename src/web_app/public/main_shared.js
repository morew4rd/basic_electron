function get_toolbar() {
    return $("#main_topbar");
}

function get_statusbar() {
    return $("#main_bottombar");
}

function set_title(new_title) {
    document.title = new_title;
    $("#electron_titlebar_text").text(new_title);
}
