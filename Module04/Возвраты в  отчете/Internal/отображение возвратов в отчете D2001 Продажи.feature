﻿#language: ru

@tree

Функционал: отображение возвратов в отчете D2001 Продажи

Как Тестировщик я хочу
проверить отображение возвратов в отчете 
чтобы убедиться в корректности составления отчета 

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий	

Сценарий: отображение возвратов в отчете D2001 Продажи
	* Загрузка тестовых документов продаж
		//Когда экспорт документов продаж

	* Формирование эталонного отчета
		И я формирую отчет продаж D2001
		Дано Табличный документ "Result" равен макету "ЭталонD2001" 
		
	* Создание возврата товаров от покупателя
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Продажи' 'Возвраты товаров от покупателей'
		Тогда открылось окно 'Возвраты товаров от покупателей'
		И я нажимаю на кнопку "Создать"

	* Заполнение возврата
		* Заполнение шапки
			Когда открылось окно 'Возврат товаров от покупателя (создание)'
			И я нажимаю кнопку выбора у поля с именем "Partner"
			Тогда открылось окно 'Партнеры'
			И в таблице "List" я перехожу к строке:
				| 'Код' | 'Наименование'         |
				| '10'  | 'Розничный покупатель' |
			И в таблице "List" я выбираю текущую строку
		* Заполнение товаров
			Когда открылось окно 'Возврат товаров от покупателя (создание) *'
			И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
			Тогда открылось окно 'Номенклатура'
			И в таблице "List" я перехожу к строке:
				| 'Код' | 'Наименование'            | 'Ссылка'                  |
				| '2'   | 'Товар без характеристик' | 'Товар без характеристик' |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListStore"
			Тогда открылось окно 'Склады'
			И в таблице "List" я перехожу к строке:
				| 'Код' | 'Наименование'     | 'Ссылка'           |
				| '3'   | 'Транзитный склад' | 'Транзитный склад' |
			И в таблице "List" я выбираю текущую строку
						
		* Проведение возврата
			И я нажимаю на кнопку 'Провести'

	* Проверка отчета с эталоном
		И я формирую отчет продаж D2001
		Когда Проверяю шаги на Исключение:
			|'Дано Табличный документ "Result" равен макету "ЭталонD2001"'|
		
				