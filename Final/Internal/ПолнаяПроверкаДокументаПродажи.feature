﻿#language: ru

@tree

Функционал: полная проверка документа Продажи

Как Тестировщик я хочу
произвести полную проверку документа Продажи
чтобы убедиться в правильном проведении и движении документов по регистрам

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _001 Подготовительный сценарий (загрузка тестовых данных, заполнение шапки)
	Когда загрузка документа Продаж

Сценарий: _002 Проверка проведения документа
	И Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
	Тогда открылось окно "Продажи товара"
	И в таблице "Список" я перехожу к строке:
		| 'Номер'     |
		| '000000111' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно "Продажа * от *"
	И таблица "Товары" стала равной:
		| 'N' | 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'     |
		| '1' | 'Валенки'   | '2 100,00' | '10,00'      | '21 000,00' |
		| '2' | 'Кроссовки' | '5 000,00' | '5,00'       | '25 000,00' |
		| '3' | 'Тапочки'   | '900,00'   | '2,00'       | '1 800,00'  |
	И я нажимаю на кнопку "Провести"
	
Сценарий: _003 Тестирование регистра взаиморасчетов с контрагентами
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	Тогда таблица "Список" стала равной:
		| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Контрагент'      | 'Сумма'     | 'Валюта' |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '1'            | 'Магазин "Обувь"' | '47 800,00' | 'Рубли'  |

Сценарий: _004 Тестирование регистра продаж
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	Тогда таблица "Список" стала равной:
		| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Покупатель'      | 'Сумма'     | 'Товар'     | 'Количество' |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '1'            | 'Магазин "Обувь"' | '21 000,00' | 'Валенки'   | '10,00'      |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '2'            | 'Магазин "Обувь"' | '25 000,00' | 'Кроссовки' | '5,00'       |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '3'            | 'Магазин "Обувь"' | '1 800,00'  | 'Тапочки'   | '2,00'       |
	
Сценарий: _005 Тестирование регистра товарных запасов
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	Тогда таблица "Список" стала равной:
		| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Склад'   | 'Товар'     | 'Количество' |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '1'            | 'Большой' | 'Валенки'   | '10,00'      |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '2'            | 'Большой' | 'Кроссовки' | '5,00'       |
		| '14.07.2022 14:41:19' | 'Продажа 000000111 от 14.07.2022 14:41:19' | '3'            | 'Большой' | 'Тапочки'   | '2,00'       |
	
Сценарий: _006 Тестирование печатной формы Расходная товарная накладная	
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Тогда открылось окно "Таблица"
	Если Табличный документ "SpreadsheetDocument" равен макету "РасходнаяНакладная" по шаблону Тогда
		И я закрываю все окна клиентского приложения
	Иначе
		И я вызываю исключение с текстом сообщения "Сформировнная накладная не соответсвует эталону"