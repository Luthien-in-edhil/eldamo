<%@ page contentType="text/html; charset=UTF-8" %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Eldamo : Home</title>
    <link rel="stylesheet" type="text/css" href="css/global.css">
</head>
<body>
<h1>Eldamo - An Elvish Lexicon</h1>
<% if ("true".equals(request.getAttribute("PUB_MODE"))) { %>
<p><i>by Paul Strack &mdash; v<%= xdb.dom.DomManager.getDoc().getDocumentElement().getAttribute("version") %> &mdash;
generated on <%= java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.LONG, java.text.DateFormat.LONG).format(new java.util.Date()) %></i></p>
<p>This collection of documents is a lexicon of Tolkien’s invented languages, particularly his Elvish languages, which
are the most detailed. The collection is called a “lexicon” because it is not a dictionary in the traditional sense; it
also analyzes the relationships between the languages and their development both within Tolkien’s fictional history and
conceptual changes through Tolkien’s lifetime. The title “Eldamo” superficially resembles an Elvish word, but it is
actually is an abbreviation for <u>El</u>vish <u>Da</u>ta <u>Mo</u>del, since its content is derived from an
<a href="content/data-model/eldamo-data.xml">XML data model</a> describing Tolkien’s languages and their relationships.
</p>
<p>Readers new to the Elvish languages might want to look first at the <a href="general/getting-started.html">Getting 
Started</a> document. More experienced readers may want to start with the discussion of the
<a href="general/motivations-and-methodology.html">Motivations and Methodology</a> for this lexicon. Everyone is invited
to look at the <a href="content/languages/index.html">Language Index</a>, particularly the sections on
<a href="content/language-pages/lang-q.html">Quenya</a> and <a href="content/language-pages/lang-s.html">Sindarin</a>.
Information about the source material used to compile this lexicon can be found in the
<a href="content/references/index.html">References Index</a>.</p>
<p>The material in this lexicon, including its XML data model, can be used freely in accordance with the
<a href="https://creativecommons.org/licenses/by/4.0/">Creative Commons (Attribution) License</a>, which basically
allows you to do whatever you want with it provided you credit my work. However, these documents are based on
the copyrighted materials of other authors, most notably those owned by the Tolkien Estate, and nothing in these
documents should be considered a challenge to or indemnification against those copyrights.</p>
<p>As it stands, this lexicon is currently in an early draft or “alpha” state. It includes most of the words from the
major vocabulary lists of Tolkien’s languages: <i><a href="content/references/ref-Ety.html">The Etymologies</a></i>,
the <i><a href="content/references/ref-GL.html">Gnomish</a></i> and <i><a href="content/references/ref-QL.html">Qenya
Lexicons</a></i>, <a href="content/references/ref-PE17.html">“Words, Phrases and Passages from <i>The Lord of the
Rings</i>”</a> (PE17) as well as <i><a href="content/references/ref-LotR.html">The Lord of the Rings</a></i> itself.
However, there is a great deal of published material not yet included in the data model, and the material within the
lexicon has only undergone minimal review for errors. As such, I have barely begun the work of analyzing and comparing
the various word forms, and any conclusions in the current version of the lexicon must be considered preliminary.</p>
<hr/>
<p><b>Primary Content</b></p>
<% } %>
<ul>
<li><a href="content/languages/index.html">Languages</a></li>
<li><a href="content/references/index.html">References</a></li>
<li><a href="content/search/search.html">Search</a></li>
</ul>
<p><b>General Information</b></p>
<ul>
<li><a href="general/getting-started.html">Getting Started</a></li>
<li><a href="general/motivations-and-methodology.html">Motivations and Methodology</a></li>
<li><a href="general/terminology-and-notations.html">Terminology and Notations</a></li>
<li><a href="general/conceptual-history.html">Conceptual History of Tolkien’s Languages</a></li>
<li><a href="general/phonetic-descriptions.html">Phonetic Descriptions</a></li>
<li><a href="general/elvish-fonts.html">Elvish Fonts</a></li>
<li><a href="general/version-history.html">Version History</a></li>
</ul>
<% if ("true".equals(request.getAttribute("PUB_MODE"))) { %>
<p><b>Downloads</b></p>
<ul>
<li>Raw data - <a href="content/data-model/eldamo-data.xml">eldamo-data.xml</a> [right-click and choose “Save As...”]</li>
<li>Schema documentation - in <a href="general/eldamo-schema.html">HTML</a> and <a href="general/eldamo-schema.xsd">formal XSD</a></li>
<!--
<li>Full lexicon downloads at <a href="https://sourceforge.net/projects/eldamo/">Sourceforge</a></li>
-->
<li>Full lexicon downloads at <a href="https://github.com/pfstrack/eldamo/releases">Github</a></li>
</ul>
<hr/>
<p>
© 2008 - <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %>, Paul Strack.
This work is licensed under the Creative Commons Attribution 4.0 International License. To view a copy of this license,
visit <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">http://creativecommons.org/licenses/by/4.0/</a>.
</p>
<p>
The <i>Tengwar Eldamar</i> font is © Måns Björkman and is used with permission (see 
<a rel="license" href="http://at.mansbjorkman.net">http://at.mansbjorkman.net</a> for more information and the latest
version of this font). The version of this font used by this lexicon is the web font
(<a href="css/tengwar-eldamar-glaemscrafu.woff">tengwar-eldamar-glaemscrafu.woff</a>)
created by Benjamin Babut and Bertrand Bellet for the <a rel="license" href="http://www.jrrvf.com/~glaemscrafu/">Glǽmscrafu</a>
web site, also used with permission. Please consult the owners of this font and the relevant licenses before using it in
other projects.
</p>
<p>
The tengwar transcriptions in this lexicon are processed via the 
<a href="https://github.com/BenTalagan/glaemscribe">Glǽmscribe Javascript Library</a>, © Benjamin Babut, used in
accordance with its
<a rel="license" href="https://raw.githubusercontent.com/BenTalagan/glaemscribe/master/LICENSE.txt">license</a>.
</p>
<!--
<div class="sf-logo">
<a href="https://sourceforge.net/p/eldamo/" rel="nofollow"><img alt="Download Eldamo" src="https://sourceforge.net/sflogo.php?type=13&group_id=2399536"></a>
</div>
-->
<% } %>
<% if (!"true".equals(request.getAttribute("PUB_MODE"))) { %>
<hr>
<p><a href="content/errors/unmatched-links.html">Unmatched Links</a></p>
<p><a href="content/errors/misordered-rules.html">Misordered Rules</a></p>
<p><a href="merge.jsp">Merge Data</a></p>
<p><a href="content/compare-refs.html">Compare Refs</a></p>
<% } %>
</body>
</html>
