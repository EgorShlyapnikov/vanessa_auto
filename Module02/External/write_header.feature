﻿#language: ru

@tree
@ExportScenarios

Функционал: заполнение шапки заказа 
 

Сценарий: заполнение шапки заказа 
*заполнение шапки заказа
	Когда открылось окно 'Заказ клиента (создание)'
	И из выпадающего списка с именем "ПартнерБезКЛ" я выбираю точное значение 'ЭНЕРГОСТРОЙ ООО'
	И в поле с именем "Соглашение" я ввожу текст "Без договоров"
	И из выпадающего списка с именем "Соглашение" я выбираю точное значение 'Без договоров'

* проверка заполнения шапки
	Тогда элемент формы с именем "ПартнерБезКЛ" стал равен 'ЭНЕРГОСТРОЙ ООО'	
	Тогда элемент формы с именем "Соглашение" стал равен 'Без договоров'
	Тогда элемент формы с именем "ХозяйственнаяОперация" стал равен 'Реализация'
	Тогда элемент формы с именем "Организация" стал равен 'Прософт-Системы'
	Тогда элемент формы с именем "Склад" стал равен 'РЭК, склад'
	Тогда элемент формы с именем "ps_ДопСоглашение" стал равен ''
	Тогда элемент формы с именем "ДекорацияИндексыСПАРКРиски" стал равен 'Сводный индикатор: Средний риск'	

* Изменение клиента и проверка изменения сводного индикатора
	И в поле с именем "ПартнерБезКЛ" я ввожу текст "Прибор-ПК, ООО"
	И из выпадающего списка с именем "ПартнерБезКЛ" я выбираю точное значение 'Прибор-ПК, ООО'		
	Тогда элемент формы с именем "ДекорацияИндексыСПАРКРиски" стал равен 'Сводный индикатор: Низкий риск'