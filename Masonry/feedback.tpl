<div class="section-title"><h1>Обратная связь</h1></div>

<div class="contact">

<div class="berrors">
<b>Уважаемые посетители нашего сайта!</b><br>
У Вас есть вопрос, мы будем рады Вас выслушать и постараемся ответить.<br>
Мы оставляем за собой право не отвечать на реплики и не публиковать письма.<br> 
Рекомендуем не использовать ненормативную лексику, поскольку такие сообщения удаляются автоматически.
</div>
    
<div class="row">

[not-logged]
<div class="col-lg-6"><div class="form-group">
<input placeholder="Ваше имя" type="text" maxlength="35" name="name" id="name" class="wide">
</div></div>

<div class="col-lg-6"><div class="form-group">
<input placeholder="Ваш E-mail" type="email" maxlength="35" name="email" id="email" class="wide">
</div></div>
			
[/not-logged]

<div class="col-lg-6"><div class="form-group">
<input placeholder="Тема сообщения" type="text" maxlength="45" name="subject" id="subject" class="wide">
</div></div>

<div class="col-lg-6"><div class="form-group catsele">
{recipient}
</div></div>

<div class="col-lg-12"><div class="form-group">
<textarea placeholder="Сообщение" name="message" id="message" rows="8" class="wide" required></textarea>
</div></div>

[attachments]
<div class="col-lg-12"><div class="form-group">
<input name="attachments[]" type="file" class="wide" style="padding:10px 20px 22px 20px;height:50px!important" multiple>
</div></div>
[/attachments]

[sec_code]<div class="form-group captcha-field">{code}<label>Код с картинки<input type="text" name="sec_code" class="wide" required autocomplete="off"></label></div>[/sec_code]
[question]<div class="form-group"><label>{question}<input type="text" name="question_answer" class="wide" required></label></div>[/question]
[recaptcha]
<div class="col-lg-12"><div class="form-group">
{recaptcha}
</div></div>
[/recaptcha]

<div class="col-lg-12">
<button class="btn-custom" type="submit" name="send_btn">Отправить сообщение</button>
</div>
    
</div></div>