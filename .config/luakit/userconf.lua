local c = require('palette')
local chrome = require('chrome')
local downloads = require('downloads')

downloads.default_dir = os.getenv("HOME") .. "/download"
	-- SOLVE: add custom module to use instead of viewpdf
	-- SOLVE: add style to error_page and document_page
	-- SOLVE: Find a way to store this string as a html file
	-- SOLVE: reduce the amounts of !important's
	-- WHAT A MESS
chrome.stylesheet = [===[
    * {
        box-sizing: border-box;
        border: 0px !important;
        border-radius: 0px !important;
        box-shadow: 0px 0px !important; 
    }
    body {
        background-color: ]===] .. c.bg0 .. [===[ !important;
        color: ]===] .. c.fg0 .. [===[ !important;
        display: block;
        margin: 0;
        padding: 0;
        font-family: sans-serif;
    }
    #page-header {
        display: flex;
        -webkit-align-items: center;
        background-color: ]===] .. c.bg0 .. [===[;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        margin: 0;
        padding: 0 1.5em;
        height: 3.5em;
        -webkit-user-select: none;
        overflow-y: hidden;
        z-index: 100000;
    }
    #page-header > h1 {
        font-size: 1.4rem;
        margin: 0 1em;
        color: #445;
        cursor: default;
    }
    #page-header > h1:first-child {
        margin-left: 0;
    }
    .content-margin {
        padding: 3.5em 1.5em 0 1.5em;
    }
    h2 { font-size: 1.2rem; }
    h3 { font-size: 1.1rem; color: #666; }

    #page-header input, .setting input, #edit-dialog input, #edit-dialog textarea {
        font-size: 0.8rem;
        padding: 0.5rem 0.75rem;
        border: none;
        outline: none;
        margin-top: 0;
        margin-bottom: 0;
    	background-color: ]===] .. c.bg3 .. [===[;
    	color: lightgrey;
    }

    #page-header #search-box {
        display: flex;
        padding: 0;
        background-color: #fff;
    }

    #page-header #search {
        width: 20em;
        font-weight: normal;
        margin: 0;
        padding-right: 0;
    }

    #page-header #clear-button {
        margin: 0;
        padding: 0.5rem 0.55rem;
        font-size: 1rem;
        line-height: 1rem;
    }

    #page-header #clear-button:hover {
        color: #000;
    }

    #page-header #clear-button:active {
    	background-color: ]===] .. c.bg3 .. [===[;
    }

    .button {
        margin: 1rem 0 1rem 0.5rem;
        color: #888;
        display: inline-block;
        line-height: 1.25;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -webkit-user-select: none;
        padding: .5rem 1rem;
        font-size: 1rem;
        transition: color .1s ease-in-out, background-color .1s ease-in-out;
        cursor: pointer;
    }

    #page-header .button:hover, .button:hover, #edit-dialog input[type="button"], #edit-dialog input[type="submit"] {
        color: #fff !important;
    }

    #page-header .button:active, .button:active {
    	background-color: ]===] .. c.bg3 .. [===[;
    }

    #page-header .button[disabled], .button[disabled] {
        color: #888;
	background-color: transparent;
        cursor: not-allowed;
    }

    #page-header .rhs {
        display: flex;
        -webkit-align-items: center;
        position: fixed;
        top: 0;
        right: 0;
        margin: 0;
        padding-right: 1.5em;
        height: 3.5em;
        margin: 0;
        background-color: inherit;
    }

    #page-header .rhs .button {
        margin-bottom: 0;
    }

    .license {
        font-family: monospace;
    }

    .hidden {
        display: none;
    }
    h3.mode-name, .bookmark .controls a:hover {
	-webkit-box-shadow: 0px 0px !important;
	background-color: transparent !important;
        color: ]===] .. c.fg0 .. [===[ !important;
    }
    .disable {
    	color: ]===] .. c.fg2 .. [===[;
    }
    .state_Enabled, .boolean > span[data-value=true]  {
	color: ]===] .. c.fg2 .. [===[ !important;
    }
    .state_Disabled, .boolean > span[data-value=false] {
        color: ]===] .. c.bl0 .. [===[ !important;
    }
    .bind .link-box a, .bind code, .title a, .item a, a:any-link {
	color: ]===] .. c.fg2 .. [===[ !important;
	text-decoration: none; 
    }
    #settings, .setting:not(.disabled), .bind pre, #blackout {
        background: transparent !important;
    }
    #edit-dialog input, #edit-dialog textarea {
	background-color: ]===] .. c.bg2 .. [===[ !important;
    }
    .setting:hover, .bind:hover, .item.selected, #edit-dialog {
        background: ]===] .. c.bg1 .. [===[ !important;
    }
    .setting.disabled {
        background: ]===] .. c.bl0  .. [===[ !important;
        cursor: not-allowed;
    }
]===]
