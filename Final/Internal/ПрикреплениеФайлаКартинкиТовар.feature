#language: ru

@tree

Функционал: прикрепление файла картинки в элементе формы спарвочника Товар

Как Тестировщик я хочу
проверить возможность прикрепления файла картинки в элементе формы спарвочника Товар
чтобы протестировать функционал добавления

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	

Сценарий: прикрепление файла картинки в элементе формы спарвочника Товар
	* Загрузка тестовых данных и установка расширения
		И загрузка Товаров и Картинок
		
	* Добавление картинки товара из категории Обувь
		И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43"
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		Когда открылось окно 'Файлы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000018' | 'Ботинки'      |
		И в таблице "Список" я выбираю текущую строку

		* Проверка прикрепления
			Если у элемента формы с именем "Картинка" текст редактирования стал равен 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=ae17d43d7ee082dd11ed033e9fb03503' Тогда
				И я нажимаю на кнопку "Записать и закрыть"
			Иначе
				Тогда я вызываю исключение "Изображение не прикреплено"
				И я закрываю текущее окно
					
	* Добавление картинок товара из категории Продукты
		И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077"
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		Когда открылось окно 'Файлы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000020' | 'Хлеб'         |
		И в таблице "Список" я выбираю текущую строку

		* Проверка прикрепления
			Если у элемента формы с именем "Картинка" текст редактирования стал равен 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=ae17d43d7ee082dd11ed033fd051051b' Тогда
				И я нажимаю на кнопку "Записать и закрыть"
			Иначе
				Тогда я вызываю исключение "Изображение не прикреплено"
				И я закрываю текущее окно

	* Добавление картинок товара из категории Электротовары
		И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537"
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		Когда открылось окно 'Файлы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000019' | 'Телевизор'    |
		И в таблице "Список" я выбираю текущую строку

		* Проверка прикрепления
			Если у элемента формы с именем "Картинка" текст редактирования стал равен 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=ae17d43d7ee082dd11ed033fd051051a' Тогда
				И я нажимаю на кнопку "Записать и закрыть"
			Иначе
				Тогда я вызываю исключение "Изображение не прикреплено"
				И я закрываю текущее окно
		
		
		
				
				
		

			
		
		
		
		
