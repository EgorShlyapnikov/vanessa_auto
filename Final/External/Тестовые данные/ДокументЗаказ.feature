#language: ru
@tree
@ExportScenarios

Функционал: загрузка документа Заказ


Сценарий: загрузка документа Заказ

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'        | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'   | 'Улица'       | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта' | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000007' | 'Попов Б.В. ИЧП '     | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '129345' | 'Россия' | 'Москва'  | 'Менжинского' | '18'  | '+7(999)456-87-68' | 'popov@jmail.ru'         | '+7(999)456-87-68' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Попов Б. В.'    | 55.86864 | 37.67405  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО ' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул' | 'Ленина'      | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'  |          |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'          | ''                                                                   | ''       | ''       | ''        | ''            | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''       | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'          | ''                                                                   | ''       | ''       | ''        | ''            | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''       | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"' | 'True'         |

	// Справочник.Пользователи

//	И я проверяю или создаю для справочника "Пользователи" объекты:
//		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Код'           | 'Наименование'  | 'ИдентификаторПользователяИБ'          |
//		| 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 'False'           | 'Администратор' | 'Администратор' | '0f42f230-0f1f-42db-b5f3-f7b2b01f2aec' |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | 'False'           | '000000005' | 'Алтай'        |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'        | 'False'          |

	// Справочник.Товары

//	И я проверяю или создаю для справочника "Товары" объекты:
//		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул'  | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод'      | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 'ВТ_Вес' |
//		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000004' | 'Сметана'      | 'ПРД-0001' | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | '4601546030436' | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Сметана "Продукты с фермы"</p>\n<p><span style=" font-weight: bold;">Вес</span> - 200 г.</p>\n<p><span style=" font-weight: bold;">Жирность</span> - 15%.</p>\n<p><span style=" font-weight: bold;">Упаковка</span> - пластиковый стакан.</p>\n</body></html>'                                                                                             |          |
//		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df4' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000026' | 'Молоко'       | 'Mol34'    | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | ''              | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Молоко "Продукты с фермы" стерилизованное.</p>\n<p><span style=" font-weight: bold;">Объем:</span> 1 л.</p>\n<p><span style=" font-weight: bold;">Жирность: </span>2.5%.</p>\n<p><span style=" font-weight: bold;">Упаковка: </span>Пакет.</p>\n</body></html>'                                                                                            |          |
//		| 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc9111f169782e' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000035' | 'Йогурт'       | 'S564'     | ''                                                                       | ''             | 'Enum.ВидыТоваров.Товар' | ''              | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Йогурт натуральный Био.</p>\n<p><br></p>\n<p><span style=" font-weight: bold;">Объем </span>-125 г.</p>\n<p><span style=" font-weight: bold;">Жирность</span><span style=" font-weight: bold;"> - </span>3.5 %.</p>\n<p><span style=" font-weight: bold;">Упаковка -</span><span style=" font-weight: bold;"> </span>пластик. стакан.</p>\n</body></html>' | 5        |
//		| 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'True'      | '000000099' | 'Молочные'     | ''         | ''                                                                       | ''             | ''                       | ''              | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |
//		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'     | ''         | ''                                                                       | ''             | ''                       | ''              | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |

	// Документ.Заказ

	И я проверяю или создаю для документа "Заказ" объекты:
		| 'Ссылка'                                                         | 'ПометкаУдаления' | 'Номер'     | 'Дата'               | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'Организация'                                                            | 'СостояниеЗаказа'              | 'Автор'                                                                   | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=9e00d43d7ee082dd11ed03f83c8364e8' | 'False'           | '000000022' | '15.07.2022 9:41:35' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'Enum.СостоянияЗаказов.Открыт' | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 8940    |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                         | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=9e00d43d7ee082dd11ed03f83c8364e8' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 30     | 50           | 1500    |
		| 'e1cib/data/Документ.Заказ?ref=9e00d43d7ee082dd11ed03f83c8364e8' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df4' | 43     | 80           | 3440    |
		| 'e1cib/data/Документ.Заказ?ref=9e00d43d7ee082dd11ed03f83c8364e8' | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc9111f169782e' | 40     | 100          | 4000    |

