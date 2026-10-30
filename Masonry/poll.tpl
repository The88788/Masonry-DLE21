<div class="poll-card">
	<div class="poll-card__head">
		<h2 class="poll-card__title">{title}</h2>
		<a class="widget__link" href="#" onclick="ShowAllVotes(); return false;">Все опросы</a>
	</div>
	<p class="poll-question">{question}</p>
	<div class="poll-list">
		{list}
	</div>
	[voted]
	<p class="poll-total">Проголосовало: <b>{votes}</b></p>
	[/voted]
	[closed]
	<p class="poll-total poll-total--closed">Опрос закрыт {close-date}</p>
	[/closed]
	[not-voted]
	<div class="poll-actions">
		<button class="primary-button" type="button" onclick="doPoll('vote', '{news-id}'); return false;">Голосовать</button>
		<button class="icon-button poll-actions__results" type="button" aria-label="Показать результаты опроса" title="Показать результаты опроса" onclick="doPoll('results', '{news-id}'); return false;"></button>
	</div>
	[/not-voted]
</div>
