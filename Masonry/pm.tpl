<div class="section-title"><h1>Личные сообщения</h1></div>

<div class="about-us">

<div class="row mb-30">
<div class="col-md-4"><a class="btn-custom btn-block" href="{THEME}/../../index.php?do=pm&amp;folder=inbox">Входящие</a></div>
<div class="col-md-4"><a class="btn-custom btn-block" href="{THEME}/../../index.php?do=pm&amp;folder=outbox">Отправленные</a></div>
<div class="col-md-4"><a class="btn-custom btn-block" href="{THEME}/../../index.php?do=pm&amp;doaction=newpm">Написать</a></div>
</div>
    
<div class="fs-13">Папки персональных сообщений заполнены на:</div>
{pm-progress-bar}
<div class="mb-40">{proc-pm-limit}% от лимита ({pm-limit} сообщений)</div>

[pmlist]
<div class="section-title"><h2>Список сообщений</h2></div>
<div class="fs-13">{pmlist}</div>
[/pmlist]

[newpm]
<div class="section-title"><h2>Отправить сообщение</h2></div>

<div class="row">
    
<div class="col-md-6"><div class="form-group">
<label class="imp">Получатель <span class="required">*</span></label>
<input type="text" name="name" id="name" class="wide" value="{author}">
</div></div>
    
<div class="col-md-6"><div class="form-group">
<label class="imp">Тема сообщения <span class="required">*</span></label>
<input type="text" name="subj" id="subj" class="wide" value="{subj}">
</div></div>
    
</div>
    
<div class="form-group">
<label class="imp">Сообщение <span class="required">*</span></label>
<textarea name="comments" id="comments" rows="8" class="wide" onfocus="setNewField(this.name, document.getElementById( 'dle-comments-form' ))"></textarea>
</div>
    
[recaptcha]
<div class="form-group">
<label  class="imp" for="recaptcha">Защита от спама <span class="required">*</span></label>
{recaptcha}
</div>
[/recaptcha]

<button name="add" type="submit" id="submit" class="btn-custom">Отправить</button>

[/newpm]
    
[readpm]<br>
<div style="border:#565656 1px solid; padding:0px 7px 7px 7px;"><h3 align="center">{subj}</h3><div class="raz55"></div>{text}<div class="raz55"></div>
<div>Вам написал: <strong>{author}</strong> &nbsp; | &nbsp; [reply]Ответить[/reply] &nbsp; | &nbsp; [del]Удалить[/del]</div></div>
[/readpm]
    
</div>