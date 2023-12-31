//Простая процедура отправки отчета на почту

Процедура ОтправитьОтчетПоЭлектроннойПочте()
    Отчет = Новый Отчет;
    Отчет.Имя = ВвестиСтроку("ВашОтчет");
    Отчет.Выполнить();

    Почта = Новый ИнтернетПочтовоеСообщение;
    Почта.Тема = ВвестиСтроку("Введите тему письма", "Отчет");
    Почта.Текст = ВвестиСтроку("Введите текст письма", "Ваш отчет во вложении");
    Почта.АдресЭлектроннойПочты = ВвестиСтроку("Введите адрес электронной почты", "ваш_адрес@gmail.com");

    Вложение = Новый ВложениеКЭлектроннойПочте;
    Вложение.Имя = "Отчет.txt";
    Вложение.Данные = Отчет.Результат;
    Почта.Вложения.Добавить(Вложение);

    ПочтовыйКлиент = Новый ИнтернетПочтовыйКлиент;
    ПочтовыйКлиент.Отправить(Почта);
КонецПроцедуры
