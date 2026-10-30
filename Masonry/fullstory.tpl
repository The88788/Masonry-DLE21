<div class="post-single">

<div class="post-single-image">[xfgiven_poster]<img src="[xfvalue_image_url_poster]" alt="[xfvalue_image_description_poster]" fetchpriority="high" decoding="async" width="800" height="500">[/xfgiven_poster][xfnotgiven_poster][image-1]<img src="{image-1}" alt="" width="800" height="500">[/image-1][/xfnotgiven_poster]</div>

<div class="post-single-content">
[has-category]<div class="categorie">{link-category}</div>[/has-category] 
<h1>{title}</h1>
<div class="post-single-info">
<ul class="list-inline">

<li>[profile]{login}[/profile]</li>
<li class="dot"></li>
<li>{date=d-M-Y, H:i}</li>
<li class="dot"></li>
<li>{comments-num} комментариев</li>
<li class="dot"></li>
<li>{views} просмотров</li>
[not-group=5]<li class="cogs_btn">
[group=1]<a href="{THEME}/../../admin.php?mod=editnews&amp;action=editnews&amp;id={news-id}" target="_blank"><svg class="ui-icon-svg inline-icon " viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="12" cy="12" r="7"/><circle cx="12" cy="12" r="3"/><path d="M12 2v3m0 14v3M2 12h3m14 0h3"/></svg><span class="sr-only">Редактор</span></a>[/group]
[add-favorites]<svg class="ui-icon-svg inline-icon " viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0l-1 1-1-1a5.5 5.5 0 0 0-7.8 7.8L12 21l8.8-8.6a5.5 5.5 0 0 0 0-7.8Z"/></svg><span class="sr-only">В закладки</span>[/add-favorites]
[del-favorites]<svg class="ui-icon-svg inline-icon " viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0l-1 1-1-1a5.5 5.5 0 0 0-7.8 7.8L12 21l8.8-8.6a5.5 5.5 0 0 0 0-7.8Z"/></svg><span class="sr-only">Из закладок</span>[/del-favorites]
</li>[/not-group]
</ul>
</div></div>
                  
<div class="post-single-body text-justify">{full-story}</div>
[pages]<div class="pagination">{pages}</div>[/pages]

[rating]<div class="article-rating" role="group" aria-label="Рейтинг публикации">
[rating-type-1]{rating}[/rating-type-1]
[rating-type-2][rating-plus]<span class="btn-custom">Нравится · {rating}</span>[/rating-plus][/rating-type-2]
[rating-type-3][rating-plus]<span class="soft-button" title="Нравится">+</span>[/rating-plus]<span>{rating}</span>[rating-minus]<span class="soft-button" title="Не нравится">−</span>[/rating-minus][/rating-type-3]
[rating-type-4][rating-plus]<span class="soft-button">Нравится · {likes}</span>[/rating-plus][rating-minus]<span class="soft-button">Не нравится · {dislikes}</span>[/rating-minus][/rating-type-4]
</div>[/rating]
<div class="post-single-footer">
[tags]<div class="tags">{tags}</div>[/tags]
<div class="social-media">
[share]<span class="btn-custom">Поделиться публикацией</span>[/share]
</div></div>
    
</div>

<div class="row">
[prev-url]
<div class="col-md-6">
<div class="widget">
<div class="widget-next-post">
<div class="small-post">
<div class="content">
<div><a class="link" href="{prev-url}"><svg class="ui-icon-svg inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="m14 6-6 6 6 6"/></svg>Предыдущая</a></div>
<a href="{prev-url}" class="np-title">{prev-title}</a>
</div></div></div></div></div>
[/prev-url]
[next-url]
<div class="col-md-6">
<div class="widget">
<div class="widget-next-post">
<div class="small-post">
<div class="content text-right" style="">
<div><a class="link" href="{next-url}"><svg class="ui-icon-svg inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="m14 6-6 6 6 6"/></svg>Следующая</a></div>
<a href="{next-url}" class="np-title">{next-title}</a>
</div></div></div></div></div>
[/next-url]
</div>

[related-news]<section class="widget"><h2>Читайте также</h2><div class="related-grid">{related-news}</div></section>[/related-news]
<div class="widget mb-50">
<div class="title"><h2>Комментарии ({comments-num})</h2></div>
<div class="widget-comments">{comments}</div>
<div class="pagination">{navigation}</div>
{addcomments}
</div>