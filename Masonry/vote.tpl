<div class="section-title"><h2>{title}</h2></div>

<div class="ms-3 m-3">

[votelist]
<form method="post" name="vote">
[/votelist]

<div class="vote_list my-3">{list}</div>

[voteresult]
<div class="vote_votes grey">Проголосовало: {votes}</div>
[/voteresult]

[votelist]
<input type="hidden" name="vote_action" value="vote">
<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
<div class="row">
<div class="col-md-6"><button class="btn-custom btn-block" type="button" onclick="doVote('vote'); return false;">Голосовать</button></div>
<div class="col-md-6"><button class="btn-custom btn-block" type="button" onclick="doVote('results'); return false;">Результаты</button></div>
</div>
</form>
[/votelist]
    
</div>