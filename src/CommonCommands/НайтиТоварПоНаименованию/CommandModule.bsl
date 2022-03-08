
&НаКлиенте
АСИНХ Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	
	НаименованиеТовара = Ждать ВвестиСтрокуАсинх("","Введите строку товара!");
	
	Если ПроверитьСуществованиеТовара(НаименованиеТовара) Тогда
		ТекстСообщения = СтрШаблон("Товар %1 найден",НаименованиеТовара);
	Иначе
		ТекстСообщения = СтрШаблон("Товар %1 не найден",НаименованиеТовара);
	КонецЕсли;


	Сообщить(ТекстСообщения);
	
КонецПроцедуры

&НаСервере
Функция ПроверитьСуществованиеТовара(НаименованиеТовара)
	
	ТоварСуществует = Справочники.Товары.ПроверитьСуществованиеТовара(НаименованиеТовара);
	
	возврат ТоварСуществует;
	 
КонецФункции