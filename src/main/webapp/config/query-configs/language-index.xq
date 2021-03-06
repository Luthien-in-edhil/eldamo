import module namespace c = "common.xq" at "common.xq";

declare variable $pubmode external;
declare variable $lang-cats := /*/language-cat;

declare function local:show-language($lang as element()) as element() {
    <li> { (
        if ($lang/@id) then (
            <a href="../language-pages/lang-{$lang/@id}.html"><b>{$lang/@name/string()}</b></a>,
            concat(' (', translate(c:convert-lang(string($lang/@id)), ' ', ''), ')')
        ) else (
            <b><i>{$lang/@name/string()}</i></b>
        ),
        if (not($lang/language)) then () else
        <ul> {
            for $child in $lang/language return local:show-language($child)
        } </ul>
    ) } </li>
};

declare function local:has-lang($lang as xs:string?) as xs:boolean {
    if ($lang-cats//language[@id = $lang]) then (true()) else false()
};

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Eldamo : Language Index</title>
<link type="text/css" rel="stylesheet" href="../../css/global.css" />
</head>
<body>
<p>[<a href="../../index.html">Home</a>]</p>
<hr/>
<h1>Language Index</h1>
<p>Here is a list of the languages included in this lexicon, broken down by time period (Early, Middle and Late). Within
each period, languages are arranged hierarchically by descent: child languages that were derived from more ancient languages.</p>
<div> {
for $lang-cat in /*/language-cat
return (
<p><b><u>{$lang-cat/@name/string()}</u></b></p>,
<ul> {
for $lang in $lang-cat/language|$lang-cat/language-cat
return
    local:show-language($lang)
} </ul>
) } </div>

<div> {
let $unex-langs := distinct-values(//word/@l)
let $lang-list := (
<ul> {
for $unex-lang in $unex-langs[not(local:has-lang(.))][$pubmode != 'true']
return (
    <li>{ $unex-lang }</li>
) } </ul>
)
return if (normalize-space($lang-list) = '') then () else (
    <p><b>Unexplained Languages</b></p>,
    $lang-list
) } </div>
</body>
</html>
