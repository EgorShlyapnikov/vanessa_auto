﻿#language: ru

@tree

Функционал: создание Заказа 

Как Тестировщик я хочу
созадние Заказа покупателя
чтобы проверить расчет поля Количество (итог) документа Заказ

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание Заказа
	Когда подготовка тестовых данных
	И я заполняю шапку документа Заказ
	* Добавление товаров их цен и количества
		И я нажимаю на кнопку "Добавить"
		И я нажимаю кнопку выбора у поля "Товар"
		Когда открылось окно 'Товары'
		И в таблице  "Список" я перехожу к строке:
			| 'Наименование'  | 'Код'       |
			| 'Обувь'         | '000000001' |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000024' | 'Кроссовки'    |
		И в таблице "Список" я выбираю текущую строку
		И в поле "Цена" я ввожу текст "1000"
		И в поле "Количество" я ввожу текст "10"
		И я запоминаю значение поля "Количество" как "num1"

		И я нажимаю на кнопку "Добавить"
		И я нажимаю кнопку выбора у поля "Товар"
		Когда открылось окно 'Товары'
		И в таблице  "Список" я перехожу к строке:
			| 'Наименование' | 'Код'       |
			| 'Продукты'     | '000000011' |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000032' | 'Торт '        |
		И в таблице "Список" я выбираю текущую строку
		И в поле "Цена" я ввожу текст "300"
		И в поле "Количество" я ввожу текст "5"
		И я запоминаю значение поля "Количество" как "num2"

		И я нажимаю на кнопку "Добавить"
		И я нажимаю кнопку выбора у поля "Товар"
		Когда открылось окно 'Товары'
		И в таблице  "Список" я перехожу к строке:
			| 'Наименование' | 'Код'       |
			| 'Электротовары'     | '000000012' |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице  "Список" я перехожу к строке:
			| 'Наименование' | 'Код'       |
			| 'Пылесосы'     | '000000014' |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000028' | 'Veko345MO'    |
		И в таблице "Список" я выбираю текущую строку
		И в поле "Цена" я ввожу текст "5000"
		И в поле "Количество" я ввожу текст "8"
		И я запоминаю значение поля "Количество" как "num3"
		И в таблице "Товары" я завершаю редактирование строки
		
	* Проверка ввода
		Тогда таблица "Товары" стала равной:
			| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'     |
			| 'Кроссовки' | '1 000,00' | '10'         | '10 000,00' |
			| 'Торт '     | '300,00'   | '5'          | '1 500,00'  |
			| 'Veko345MO' | '5 000,00' | '8'          | '40 000,00' |		

	* Проверка расчета поля Количество (итог)
		Тогда элемент формы "Количество (итог)" стал равен Тогда элемент формы 'Количество (итог)' стал равен '{Формат(Число("$num1$")+Число("$num2$")+Число("$num3$"))})'
		
		



		

	
