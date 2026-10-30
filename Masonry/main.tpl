<!doctype html>
<html lang="ru">
<head>
<meta name="color-scheme" content="light dark">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" sizes="16x16" href="{THEME}/images/favicon.ico">
{headers}
<link rel="preload" href="{THEME}/fonts/montserrat-cyrillic-wght-normal.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="{THEME}/fonts/montserrat-latin-wght-normal.woff2" as="font" type="font/woff2" crossorigin>
<link rel="stylesheet" href="{THEME}/css/site.css?v=1.0.0">
<script>(()=>{let t;try{t=localStorage.getItem("masonry-theme")||localStorage.getItem("theme")}catch{}if(!["light","dark"].includes(t))t=matchMedia("(prefers-color-scheme: dark)").matches?"dark":"light";document.documentElement.dataset.theme=t})();</script>
</head>

<body>
<a class="skip-link" href="#site-content">К содержимому</a>

  
{include file="modules/header.tpl"}
<main id="site-content">

[not-available=main|cat|lastnews|newposts|tags|favorites]
<section class="section pt-55 ">
<div class="container-fluid">
[available=lastcomments]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h1>Последние <span> комментарии</span></h1><p>На этой странице вы можете просмотреть все комментарии к статьям и новостям.</p></div>[/available]
<div class="row">
<div class="col-lg-8 mb-20">
[available=lastcomments]<div class="widget mb-50"><div class="widget-comments">[/available]
{content}{info}
[available=lastcomments]</div></div>[/available]
</div>
{include file="modules/sidebar.tpl"}
</div></div></section>
[/not-available]
    
[available=main|cat|lastnews|newposts|tags|favorites]
<section class="section masonry-layout pt-45">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12">
[available=main]
<div class="widget-author inner-width mb-40 intro">
<span class="intro-kicker">Журнал о жизни и идеях</span>
<h1>Истории, которые <span>вдохновляют</span></h1>
<p>Люди, культура, путешествия и технологии. Находите интересное, сохраняйте важное и делитесь своим взглядом.</p>
<a class="btn-custom" href="#publications">Читать журнал <span aria-hidden="true">↓</span></a>
</div>
[/available]
[available=newposts]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h1>Непрочитанные <span> статьи</span></h1><p>На этой странице вы можете просмотреть непрочитанные статьи и новости.</p></div>[/available]
[available=main]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h2>Последние <span>публикации</span></h2><p>На этой странице вы можете просмотреть все наши опубликованные статьи и новости.</p></div>[/available]
[available=cat]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h1>Категория : <span> {category-title}</span></h1><p>{category-description}</p></div>[/available]
[available=lastnews]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h2>Последние <span>публикации</span></h2><p>На этой странице вы можете просмотреть все наши опубликованные статьи и новости.</p></div>[/available]
[available=tags]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h1>Новости по тэгу<span> {cloudstag}</span></h1><p>На этой странице вы можете просмотреть все наши опубликованные статьи и новости по тэгу {cloudstag}.</p></div>[/available]
[available=favorites]<div class="categorie-title mb-30"> <div class="breadcrumb-line">{speedbar}</div><h1>Ваши<span> закладки</span></h1><p>На этой странице вы можете просмотреть все статьи и новости, которые у Вас в закладках.</p></div>[/available]
<div id="publications" class="card-columns">{content}</div>
{info}
<div class="pagination mt-30 mb-30">{navigation}</div>
</div></div></div>
</section>
[/available]
    
</main>
{include file="modules/distribution.tpl"}
{include file="modules/footer.tpl"}
    
{jsfiles}
{AJAX}
<script src="{THEME}/js/main.js?v=1.0.0" defer></script>


</body>
</html>