<div class="section-title"><h1>Поиск по сайту</h1></div>

<div class="about-us searchinsel">
    
[simple-search]
<div class="form-group"><label>Введите слово(а) для поиска</label>{searchfield}</div>
<div class="row">
<div class="col-md-6"><button type="button" class="btn-block btn-custom" name="dosearch" id="dosearch" onclick="javascript:list_submit(-1); return false;">Найти</button></div>
<div class="col-md-6"><button type="button" class="btn-block btn-custom" name="dofullsearch" id="dofullsearch" onclick="javascript:full_submit(1); return false;">Расширенный поиск</button></div>
</div>
[/simple-search]
    
[extended-search]
<div class="row">
    
<div class="col-md-6">
    
<div class="form-group">
<label class="imp">Слова для поиска</label>
{searchfield}
</div>
    
<div class="form-group">
<label class="imp">Поиск по</label>
{search-area}
</div>
    
<div class="form-group">
<label class="imp">Искать статьи с комментариями</label>
<div class="row">
<div class="col-md-6">{news-option}</div>
<div class="col-md-6">{comments-num}</div>
</div>
</div>
    
</div>
    
<div class="col-md-6">

<div class="form-group">
<label class="imp">Имя пользователя</label>
<div id="userfield">{userfield}</div>
</div>
    
<div class="form-group">
<label class="imp">Поиск по разделам</label>
{category-option}
</div>
    
<div class="form-group">
<label class="imp">Временной период</label>
<div class="row">
<div class="col-md-6">{date-option}</div>
<div class="col-md-6">{date-beforeafter}</div>
</div></div>
    
</div></div>

<div class="form-group">
<label class="imp">Сортировка результатов</label>
<div class="row">
<div class="col-md-6">{sort-option}</div>
<div class="col-md-6">{order-option}</div>
</div></div>

<div class="row">
<div class="col-lg-4"><button type="button" class="btn-custom btn-block" name="dosearch" id="dosearch" onclick="javascript:list_submit(-1); return false;">Искать</button></div>
<div class="col-lg-4"><button type="button" class="btn-custom btn-block" name="doclear" id="doclear" onclick="javascript:clearform('fullsearch'); return false;">Сбросить</button></div>
<div class="col-lg-4"><button type="reset" class="btn-custom btn-block" name="doreset" id="doreset">Вернуть</button></div>
</div>

[/extended-search]
    
</div>

[searchmsg]<div class="berrors mb-4">{searchmsg}</div>[/searchmsg]