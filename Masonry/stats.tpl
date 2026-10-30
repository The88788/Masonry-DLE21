<section class="panel stats">
	<div class="section-heading">
		<div>
			<h1>Статистика сайта</h1>
			<p>Активность публикаций, комментариев и пользователей</p>
		</div>
	</div>

	<div class="stats-cards">
		<div class="stats-card">
			<span class="stats-card__label">За сутки</span>
			<b class="stats-card__value">{news_day}</b>
			<span class="stats-card__hint">публикаций, {comm_day} комментариев, {user_day} новых пользователей</span>
		</div>
		<div class="stats-card">
			<span class="stats-card__label">За неделю</span>
			<b class="stats-card__value">{news_week}</b>
			<span class="stats-card__hint">публикаций, {comm_week} комментариев, {user_week} новых пользователей</span>
		</div>
		<div class="stats-card">
			<span class="stats-card__label">За месяц</span>
			<b class="stats-card__value">{news_month}</b>
			<span class="stats-card__hint">публикаций, {comm_month} комментариев, {user_month} новых пользователей</span>
		</div>
	</div>

	<div class="stats-groups">
		<div class="stats-group">
			<h2>Публикации</h2>
			<ul>
				<li>Всего<b>{news_num}</b></li>
				<li>Опубликовано<b>{news_allow}</b></li>
				<li>На главной<b>{news_main}</b></li>
				<li>Ждут модерации<b>{news_moder}</b></li>
			</ul>
		</div>
		<div class="stats-group">
			<h2>Пользователи</h2>
			<ul>
				<li>Всего<b>{user_num}</b></li>
				<li>Заблокировано<b>{user_banned}</b></li>
			</ul>
		</div>
		<div class="stats-group">
			<h2>Комментарии</h2>
			<ul>
				<li>Всего<b>{comm_num}</b></li>
				<li><a href="{THEME}/../../index.php?do=lastcomments">Посмотреть последние</a></li>
			</ul>
		</div>
	</div>

	<p class="stats-db">Общий размер базы данных: <b>{datenbank}</b></p>

	<h2 class="stats-top-title">Активные авторы</h2>
	<div class="table-scroll">
		<table class="userstop">{topusers}</table>
	</div>
</section>
