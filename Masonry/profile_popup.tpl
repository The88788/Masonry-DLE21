<div class="profile-popup">
	<div class="profile-popup__summary">
		<span class="profile-popup__avatar">
			<img class="avatar avatar--lg" src="{foto}" alt="" width="72" height="72">
			[online]<span class="thread__online" title="{usertitle} — на сайте"><span class="sr-only">{usertitle} — на сайте</span></span>[/online]
		</span>
		<div class="profile-popup__identity">
			[fullname]<b class="profile-popup__name">{fullname}</b>[/fullname]
			<dl class="profile-popup__details">
				<div><dt>Группа</dt><dd>{status}</dd></div>
				<div><dt>Был на сайте</dt><dd>{lastdate}</dd></div>
				<div><dt>Зарегистрирован</dt><dd>{registration}</dd></div>
				<div><dt>Публикаций</dt><dd>{news-num}</dd></div>
				<div><dt>Комментариев</dt><dd>{comm-num}</dd></div>
			</dl>
		</div>
	</div>
	<nav class="profile-popup__links" aria-label="Материалы пользователя">
		[news-num]<span class="profile-popup__link">{news}</span>[/news-num]
		[comm-num]<span class="profile-popup__link">{comments}</span>[/comm-num]
		<span class="profile-popup__link profile-popup__link--rss">[rss]RSS[/rss]</span>
	</nav>
</div>
