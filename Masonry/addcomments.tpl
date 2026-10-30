<div class="title"><h3>Добавить комментарий</h3></div>
<div class="widget-form">
<div class="row">

[not-logged]
<div class="col-md-6">
<div class="form-group">
<input type="text" name="name" class="form-control" placeholder="Ваше имя" required="required">
</div></div>

<div class="col-md-6">
<div class="form-group">
<input type="email" name="mail" class="form-control" placeholder="Ваш Email*" required="required">
</div></div>
[/not-logged]
    
<div class="col-md-12">
<div class="form-group">
{editor}
</div></div>
    
[sec_code]<div class="col-12"><div class="form-group captcha-field">{sec_code}<label>Код с картинки<input type="text" name="sec_code" class="form-control" required></label></div></div>[/sec_code]
[question]<div class="col-12"><div class="form-group"><label>{question}<input type="text" name="question_answer" class="form-control" required></label></div></div>[/question]
[recaptcha]
<div class="col-md-12"><div class="form-group">
{recaptcha}
</div></div>
[/recaptcha]
    
<div class="col-12">
<button type="submit" name="submit" class="btn-custom">Отправить</button>
</div> 

</div></div>