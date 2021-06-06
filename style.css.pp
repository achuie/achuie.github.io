#lang pollen

◊(define multiplier 1.3)
◊(define link-color "#000000")

@font-face {
    font-family: "EBGaramond";
    src: url("EBGaramond12/fonts/otf/EBGaramond-Regular.otf")
    format("opentype");
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: "EBGaramond";
    src: url("EBGaramond12/fonts/otf/EBGaramond-Bold.otf")
    format("opentype");
    font-weight: bold;
    font-style: normal;
}

@font-face {
    font-family: "EBGaramond";
    src: url("EBGaramond12/fonts/otf/EBGaramond-Italic.otf")
    format("opentype");
    font-weight: normal;
    font-style: italic;
}

html, body {
    height: 100%;
    min-height: 100%;
    margin: 0;
    padding: 0;
    overflow: auto;
}

body {
    font-size: ◊|multiplier|em;
    line-height: ◊|multiplier|;
    font-family: "EBGaramond", serif;
}

.content {
    height: 100%;
    min-height: 100%;
    display: table;
    width: 70%;
    margin-left: auto;
    margin-right: auto;
}

.navbar-cell {
    display: table-cell;
    width: 20%;
}

.navbar {
    padding: 0.5em;
    font-size: ◊|multiplier|em;
    text-align: right;
}

a.navlink:link, a.navlink:visited {
    text-decoration: none;
    position: relative;
    color: ◊|link-color|;
}

a.navlink:hover, a.navlink:active {
    color: ◊|link-color|;
}

a.navlink:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0%;
    border-bottom: 1px solid;
    transition: 0.2s;
}

a.navlink:hover:after {
    width: 100%;
}

a.bodylink:link, a.bodylink:visited {
    text-decoration: none;
    position: relative;
    color: ◊|link-color|;
}

a.bodylink:hover, a.bodylink:active {
    color: #0000ee;
}

a.bodylink:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    border-bottom: 4px solid #e0e0e0;
    transition: 0.2s;
}

a.bodylink:hover:after {
    border-bottom: 1px solid #0000ee;
    bottom: 4px;
    color: #0000ee;
}

.main-cell {
    display: table-cell;
}

.main {
    padding: 0.5em;
}

.textwrap {
    float: right;
    margin: 0.5em;
}

h1 {
    font-feature-settings: "smcp";
    border-top: 1px solid;
}
