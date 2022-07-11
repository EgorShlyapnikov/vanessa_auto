﻿#language: ru

@tree

Функционал: проверка заполнения полей документа Заказа покупателя

Как Тестировщик я хочу
проверить заполнение полей в шапке Заказа покупателя
чтобы убедиться в автозаполнении полей при выборе Партнера

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка заполнения полей документа Заказа покупателя
	* Открытие формы создания Заказа покупателя
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
		Тогда открылось окно 'Заказы покупателей'
		И я нажимаю на кнопку с именем 'FormCreate'
	* Проверка блокировки поля Контрагент если не выбран Партнер
		Тогда элемент формы "Статус" стал равен 'Согласовано'
		Тогда элемент формы "Партнер" стал равен ''
		И элемент формы "Контрагент" не доступен
	* Выбор Партнера и проверка доступности поля Контрагент
		И я нажимаю кнопку выбора у поля "Партнер"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'         |
			| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку
		И элемент формы "Контрагент" доступен
	
	* Установка в поле Партнер значения Клиент 1
		И я нажимаю кнопку выбора у поля "Партнер"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'            |
			| '1'   | 'Клиент 1 (1 соглашение)' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы "Соглашение" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
		* Проверка доступных соглашений для выбранного клиента
			И я нажимаю кнопку выбора у поля "Соглашение"
			Тогда открылось окно 'Соглашения'
			Тогда таблица "List" стала равной:
				| 'Код' | 'Наименование'                                                    | 'Вид'     | 'Вид взаиморасчетов' |
				| '1'   | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' | 'Обычное' | 'По документам'      |			
			И я закрываю текущее окно
			И я проверяю условие заполнения поля Организация
				
	* Установка в поле Партнер значения Клиент 2
		И я нажимаю кнопку выбора у поля "Партнер"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '2'  	| 'Клиент 2 (2 соглашения)' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы "Соглашение" стал равен ""
		* Проверка доступных соглашений для выбранного клиента
			И я нажимаю кнопку выбора у поля "Соглашение"
			Тогда открылось окно 'Соглашения'
			Тогда таблица "List" стала равной:
				| 'Код' | 'Наименование'                                        | 'Вид'     | 'Вид взаиморасчетов' |
				| '2'   | 'Индивидуальное соглашение 1 (расчет по соглашениям)' | 'Обычное' | 'По соглашениям'     |
				| '3'   | 'Индивидуальное соглашение 2 (расчет по соглашениям)' | 'Обычное' | 'По соглашениям'     |
			И я закрываю текущее окно
			
	* Установка в поле Партнер значения Клиент и поставщик
		И я нажимаю кнопку выбора у поля "Партнер"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'       |
			| '5'  	| 'Клиент и поставщик' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы "Соглашение" стал равен "Соглашение с клиентами (расчет по документам + кредитный лимит)"
		* Проверка доступных соглашений для выбранного клиента
			И я нажимаю кнопку выбора у поля "Соглашение"
			Тогда открылось окно 'Соглашения'
			Тогда таблица "List" стала равной:
				| 'Код' | 'Наименование'                                                    | 'Вид'     | 'Вид взаиморасчетов' |
				| '1'   | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' | 'Обычное' | 'По документам'      |			
			И я закрываю текущее окно
			И я проверяю условие заполнения поля Организация

	* Установка в поле Партнер значения Розничный покупатель
		И я нажимаю кнопку выбора у поля "Партнер"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'         |
			| '10'  | 'Розничный покупатель' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы "Соглашение" стал равен "Розничное"
		* Проверка доступных соглашений для выбранного клиента
			И я нажимаю кнопку выбора у поля "Соглашение"
			Тогда открылось окно 'Соглашения'
			Тогда таблица "List" стала равной:
				| 'Код' | 'Наименование' | 'Вид'     | 'Вид взаиморасчетов' |
				| '8'   | 'Розничное'    | 'Обычное' | 'По соглашениям'     |			
			И я закрываю текущее окно
			И я проверяю условие заполнения поля Организация

	* Установка в поле Партнер значения Розничный клиент 1
		И я нажимаю кнопку выбора у поля "Партнер"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'       |
			| '12'  | 'Розничный клиент 1' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы "Соглашение" стал равен "Розничный клиент 1"
		* Проверка доступных соглашений для выбранного клиента
			И я нажимаю кнопку выбора у поля "Соглашение"
			Тогда открылось окно 'Соглашения'
			Тогда таблица "List" стала равной:
				| 'Код' | 'Наименование'       | 'Вид'     | 'Вид взаиморасчетов' |
				| '9'   | 'Розничный клиент 1' | 'Обычное' | 'По соглашениям'     |						
			И я закрываю текущее окно
			И я проверяю условие заполнения поля Организация

	* Очитстка поля Партнер
		И я нажимаю кнопку очистить у поля "Партнер"
		Тогда элемент формы "Контрагент" не доступен