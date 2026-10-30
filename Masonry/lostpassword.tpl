<div class="section-title"><h1>Восстановление пароля</h1></div>
<div class="about-us">
<div class="form-group">
<label class="imp">Логин или E-mail</label>
<input type="text" name="lostname" id="lostname" class="wide" placeholder="Логин или E-mail">
</div>
[sec_code]<div class="form-group captcha-field">{code}<label>Код с картинки<input type="text" name="sec_code" class="wide" required autocomplete="off"></label></div>[/sec_code]
[recaptcha]
<div class="form-group">
<label class="imp">Защита от спама</label>
{recaptcha}
</div>
[/recaptcha]
<button class="btn-custom" name="submit" type="submit">Восстановить</button>
</div>