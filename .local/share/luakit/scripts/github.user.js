// ==UserScript==
// @name          clipboard-for-github
// @namespace     http://blog.tfiu.de
// @description   Fix github's 100% CPU usage due to unhandled clipboard errors
// @include       https://github.com*
// ==/UserScript==
navigator.clipboard = Object()
navigator.clipboard.read = function() {
        return "";
}
