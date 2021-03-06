local addonInfo, private = ...

if Inspect.System.Language() == "Russian" then
 
	private.helpIndex = {
		"Введение",
		"Быстрый старт",
		"Экран настроек",
		"Наборы предупреждений",
		"Предупреждение",
		"Триггеры",
		"Триггеры - условия срабатывания",
		"Настройки иконки",
		"Настройки текста",
		"Настройки таймера",
		"Меню",
		"Командная строка"
	}
	
	private.helpTopic = {} --{label = "", text = ""}
	local helpIndex = private.helpIndex  
	local helpTopic = private.helpTopic
	
	helpTopic[helpIndex[1]] = {
		{
			label = "Введение", 
			text = "Этот аддон сделан по мотивам аддона Power Auras из ВОВ и является полностью настраиваемой системой предупреждений игрока. Вы можете отслеживать все, что захотите. Например, можно настроить  предупреждения о:\n\n- Наличии дебаффа на цели\n- Отсутствию баффа на вас\n- Низком уровне жизни\n- Откате способности\n- и многое другое..."
		}
	}
	helpTopic[helpIndex[2]] = {
		{
			label = "Быстрый старт", 
			text = "Чтобы начать работу с аддоном: \n\n1. Откройте окно настроек командой /kalert\n2. В правом нижнем углу включите галочку Сканировать способн. \n\nДля  подгрузки полного списка заклинаний и баффов потребуется немножко поиграть персонажем. Смените все доступные роли, наложите по одному разу все баффы и дебаффы, используйте все способности, пощелкайте по случайным игрокам (чтобы подгрузить и их баффы тоже). Когда закончите , снимите галочку Сканирования способностей чтоб сохранить результаты.\n\nТеперь у Вас есть все что нужно для начала настройки.\n\nДля начала в поле Имя напишите как бы вы хотели чтобы называлось предупреждение. После этого нужно выбрать, за чем вы хотите следить, ввести название способности или баффа и выбрать, как бы Вам хотелось, чтобы выглядело предупреждение.\n\n1. Откройте настройки (/kalert)\n2. Введите название предупреждения\n3. Выберите за чем следить - бафф, способность, ресурс или каст заклинания\n4. Выбрав бафф, способность или каст - введите ее имя.\n5. Выберите на ком отслеживать бафф или заклинание - на игроке, цели, и т.д.\n6. Выберите, будете ли вы оповещаться только в бою\n7. Настройте отображение предупреждения\n8. Нажмите Сохранить\n\nТеперь у Вас есть новое предупреждение!"
		}
	}
	helpTopic[helpIndex[3]] = {
		{
			label = "Экран настроек", 
			text = "Экран настроек состоит из 7 секций, которые используются чтобы настраивать и изменять предупреждения. Назначение полей каждой зоны описано в следующих разделах."
		},
		{
			label = "Set Info", 
			text = "Эта секция отображает и позволяет управлять наборами предупреждений."
		},
		{
			label = "Alert Info", 
			text = "В этой секции задается имя предупреждения и опция включения/отключения предупреждения."
		},
		{
			label = "Trigger Info", 
			text = "В этой секции задается, что будет отслеживать предупреждение - бафф, ресурс, каст, откат способности."
		},
		{
			label = "Trigger Conditions", 
			text = "В этой секции задаются дополнительные условия срабатывания предупреждения."
		},
		{
			label = "Image Settings", 
			text = "В этой секции настраивается картинка, которую будет показывать предупреждение."
		},
		{
			label = "Text Settings", 
			text = "В этой секции настраивается текст, который будет показывать предупреждение."
		},
		{
			label = "Timer Settings", 
			text = "В этой секции настраивается таймер готовности/обратного отсчета, который заранее показывает когда сработает/исчезнет предупреждение."
		}
	}
	helpTopic[helpIndex[4]] = {
		{
			label = "Наборы предупреждений", 
			text = "Существует два типа наборов предупреждений - Sets (наборы) и Sub Sets (дополнительные наборы). Вы можете задать 6 наборов и 10 дополнительных наборов. Наборы соответствуют 6 ролям персонажа. Дополнительные наборы не связаны с ролями и могут использоваться как вам заблагорассудится. Активными могут быть 1 набор и 1 дополнительный набор одновременно. Обычно наборы используются чтобы задать предупреждения, специфичные для роли, а дополнительные наборы - чтобы задать предупреждения, специфичные для конкретной ситуации, например ПВП или рейдовый бой. Например, собрав все предупреждения для ПВП в дополнительном наборе, вы сможете ими пользоваться вне зависимости от выбранной роли.\n\nВы можете переключать активный набор двумя способами.\n\n- Через главное окно аддона, просто выберите нужный набор и закройте окно. Обратите внимание, если вы закрываете окно при выбранном набора, поменяется только активный набор, активный дополнительный набор останется без изменений. Аналогично при выходе с выбранным дополнительным набором поменяется только он, активный набор останется без изменений.\n- Через командную стоку /kalert set={номер набора} для изменения набора или /kalert subset={номер доп. набора} для изменения дополнительного набора."
		},
		{
			label = "Навигация по наборам", 
			text = "В этой секции расположены кнопки, которые позволяют менять выбранный набор или доп.набор. Левая и правая стрелочка меняют наборы, в надпись посередине показывает какой набор сейчас активен."
		},
		{
			label = "Список предупреждений", 
			text = "В этой секции находится список всех предупреждений выбранного набора. Клик мыши выбирает предупреждение, двойной клик загружает параметры предупреждения в поля главного окна для редактирования."
		},
		{
			label = "Кнопка Изменить", 
			text = "Эта кнопка загружает параметры выбранного предупреждения в поля главного окна для редактирования."
		},
		{
			label = "Кнопка Удалить", 
			text = "Эта кнопка удаляет выбранное предупреждение."
		},
		{
			label = "Кнопка Ред. слой", 
			text = "Эта кнопка закрывает главное окно и показывает интерфейс настройки местоположения иконок всех предупреждений из текущего набора. Вы можете перетащить мышкой иконки на новые места, после чего нажмите кнопку Сохранить."
		}
	}

	helpTopic[helpIndex[5]] = {
		{
			label = "Предупреждение", 
			text = "Эта секция содержит базовые настройки предупреждения."
		},
		{
			label = "Поле Имя - (обязательно)", 
			text = "В этом поле задается имя предупреждения. Имя вы выбираете сами как вам удобно, оно не обязано совпадать с именем баффа или способности."
		},
		{
			label = "Поле Слой - (опционально)", 
			text = "В этом поле задается слой, в котором будет отображаться иконка предупреждения, можно вводить значения от 1 до 40. Слои с большим номером имеют приоритет (перекрывают) слои с меньшим номером."
		},
		{
			label = "Запретить предупр. - (опционально)", 
			text = "Если отметить эту галочку, предупреждение не будет показываться. Это удобно, если вы хотите временно отключить предупреждение, но не хотите его удалять."
		}
	}
	helpTopic[helpIndex[6]] = {
		{
			label = "Триггеры", 
			text = "В этой секции задается, от чего будет срабатывать предупреждение. В зависимости от этого меняется набор полей для ввода."
		},
		{
			label = "Тип предупреждения - (обязательно)", 
			text = "Бафф - отслеживается наличие баффа или дебаффа.\n\nСпособность - отслеживается восстановление вашей способности.\n\nРесурс - отслеживается уровень маны/энергии/заряда/здоровья/комбо очков и т.д.\n\nКаст - отслеживается факт каста заклинания (только тех, что имеют кастбар, моментальные заклинания не отслеживаются)."
		},
		{
			label = "Поле Бафф - (обязательно)", 
			text = "В это поле вводится имя баффа или дебаффа, за которым нужно следить. Большие и маленькие буквы различаются!\n\nВы можете ввести несколько имен через запятую без пробелов, в этом случае предупреждение будет срабатывать при наличии любого из перечисленных баффов/дебаффов. Это полезно когда несколько разных баффов/дебаффов дают одинаковый эффект."
		},
		{
			label = "Поле Бафф длит.  - (опционально)", 
			text = "Это поле нужно заполнять только в специальных случаях, когда  вы следите за баффом, у которого есть бафф-двойник с таким же именем, но другой длительностью. Например, бафф от Кровавой лихорадки у Осквернителя. Введите длительность действия именно того баффа, за который вы хотите следить."
		},
		{
			label = "Только свои", 
			text = "Если эта галочка включена, предупреждение сработает только если бафф/дебафф наложен именно вами. Если галочка выключена, предупреждение сработает если бафф/дебафф наложен любым игроком."
		},
		{
			label = "Поле Способность - (обязательно для типа Способность, опционально для типа Каст)", 
			text = "В это поле вводится имя способности, за откатом/кастом которой нужно следить. Большие и маленькие буквы различаются! В случает предупреждения типа Каст можно оставить это поле пустым, тогда предупреждение будет срабатывать при любом касте."
		},
		{
			label = "Ресурс - (обязательно)", 
			text = "Выберите ресурс, за которым вы будете следить."
		}
	}
	helpTopic[helpIndex[7]] = {
		{
			label = "Триггеры - условия срабатывания", 
			text = "В этой секции задаются дополнительные условия для срабатывания предупреждения."
		},
		{
			label = "Выбор персонажа - (обязательно)", 
			text = "Игрок - следить на вашим персонажем.\nЦель - следить за вашей целью.\nПитомец - следить за вашим питомцем.\nФокус - следить за запомненной целью (фокусом). "
		},
		{
			label = "Враждебность - (опционально)", 
			text = "Друзья - предупреждение будет срабатывать только если выбраны дружественные игроки.\nВраги - предупреждение будет срабатывать только если выбраны враждебные игроки."
		},
		{
			label = "Активен/Пропущен - (обязательно)", 
			text = "Активен - предупреждение сработает, когда бафф/дебафф наложен.\nПропущен -  предупреждение сработает, когда бафф/дебафф отсутствует."
		},
		{
			label = "Поле Стаки - (опционально)", 
			text = "В этом поле можно задать количество стаков, при котором бафф/дебафф считается наложенным. Если оставить пустым, бафф/дебафф будут считаться наложенным даже при 1 стаке."
		},
		{
			label = "Готова/Восстан.  - (обязательно)", 
			text = "Готова - показывать предупреждение, когда способность готова к использованию.\nВосстан. - показывать предупреждение, когда способность восстанавливается (в откате)."
		},
		{
			label = "Больше/Меньше/Диапазон - (обязательно)", 
			text = "Показывать предупреждение когда значение ресурса больше или меньше указанного значение или находится в указанном диапазоне."
		},
		{
			label = "Поле Значение - (обязательно)", 
			text = "В это поле вводится пороговое значение ресурса. Можно вводить явное значение, например, 2400, или процент, например, 30%. В случае диапазона вводится два числа через дефис без пробелов, например, 1200-1500 или 30-50%."
		},
		{
			label = "Только в бою", 
			text = "Если отметить эту галочку, предупреждение будет показываться только в бою."
		}
	}
	helpTopic[helpIndex[8]] = {
		{
			label = "Настройки иконки", 
			text = "В этой секции задается вид и параметры отображения иконки предупреждения."
		},
		{
			label = "Поле выбора иконки", 
			text = "В этом поле показывается иконка, которую будет показывать предупреждение. Стрелочки лево/право позволяют выбрать несколько готовых вариантов картинок."
		},
		{
			label = "Картинка по умолчанию", 
			text = "Если это галочка включена, будет использоваться иконка отслеживаемого баффа/дебаффа/способности. Если ее отключить, можно выбрать картинку вручную."
		},
		{
			label = "Пользовательский", 
			text = "Это поле позволяет подгрузить пользовательскую картинку из файла. Для этого поместите графический файл с расширением PNG или TGA (только несжатый) в папку KaruulAlert\\custom и введите в это поле имя файла с расширением."
		},
		{
			label = "Поля X и Y", 
			text = "В этих полях задаются точные координаты иконки на экране. Обычно удобнее задать положение иконки нажав кнопку Ред. слой и перетащить иконку мышкой."
		},
		{
			label = "Поле Масштаб", 
			text = "В этом поле указывается масштаб иконки. 1 - обычный размер, 0.5 - 50%, 2 - 200% и т.д."
		},
		{
			label = "Поле Прозрачность", 
			text = "В этом поле указывается прозрачность иконки. 1 - обычная иконка, 0.5 - полупрозрачная, 0 - иконку вообще не будет видно"
		}
	}
	helpTopic[helpIndex[9]] = {
		{
			label = "Настройки текста", 
			text = "Эта секция содержит настройки текста, которые будет показывать предупреждение. Пока текста опционален, в большинстве случаев достаточно показать только иконку"
		},
		{
			label = "Поле текст", 
			text = "В это поле вводится текст, который будет показывать предупреждение. Если оставить его пустым, текст показываться не будет. Если вы хотите, чтобы показывался только текст без иконки, поставьте иконке прозрачность 0."
		},
		{
			label = "Поле Прозрачность", 
			text = "В этом поле указывается прозрачность текста. 1 - непрозрачный, 0.5 - полупрозрачный, 0 - текста вообще не будет видно."
		},
		{
			label = "Поле Размер", 
			text = "В этом поле задается размер шрифта для текста."
		},
		{
			label = "Переключатели положения", 
			text = "Эти два набора переключателей задают, где будет показываться текст по отношению к иконке. Если выбрано значение Слева/Справа/Вверху/Внизу, можно дополнительно указать, показывать текст Внутри или Снаружи иконки. Если выбрано значение По центру, значение галочек Внутри/Снаружи игнорируется и текст всегда показывается по центру."
		},
		{
			label = "Поле Шрифт", 
			text = "Это поле позволяет задать пользовательский шрифт. Поместите файл с TTF шрифтом в папку KaruulAlert\\custom и введите имя файла с расширением в это поле."
		},
		{
			label = "Выбор цвета", 
			text = "Эти поля позволяют задать цвет текста в формате RGB. Можно двигать ползунки или непосредственно задать значения RGB. Тут же показывается пример, как будет выглядеть выбранный цвет."
		}
	}
	helpTopic[helpIndex[10]] = {
		{
			label = "Настройки таймера", 
			text = "Эта секция позволяет вам настроить таймеры для предупреждений."
		},
		{
			label = "Таймер", 
			text = "Эта галочка включает отображение таймера для предупреждения, показывающего сколько времени бафф/дебафф будет активен."
		},
		{
			label = "Отсчет", 
			text = "Эта галочка показывает обратный отсчет для способностей, которые скоро восстановятся (откатятся)"
		},
		{
			label = "Поле Размер", 
			text = "Тут задается размер шрифта для таймера/обратного отсчета."
		},
		{
			label = "Переключатели положения", 
			text = "Эти два набора переключателей задают, где будет показываться текст по отношению к иконке. Если выбрано значение Слева/Справа/Вверху/Внизу, можно дополнительно указать, показывать текст Внутри или Снаружи иконки. Если выбрано значение По центру, значение галочек Внутри/Снаружи игнорируется и текст всегда показывается по центру."
		},
		{
			label = "Поле длит.", 
			text = "В этом поле задается, за сколько секунд до готовности способности нужно начинать обратный отсчет."
		}
	}
	helpTopic[helpIndex[11]] = {
		{
			label = "Меню", 
			text = "Меню позволяет экспортировать/импортировать предупреждения и наборы предупреждений, а также вызывать справку."
		},
		{
			label = "Импорт предупреждения", 
			text = "С помощью этой команды вы можете импортировать предупреждение. Для этого в открывшемся окне вставьте через буфер обмена ранее сохранный текст предупреждения."
		},
		{
			label = "Импорт набора", 
			text = "С помощью этой команды вы можете импортировать набор предупреждений. Для этого в открывшемся окне вставьте через буфер обмена ранее сохранный текст набора предупреждений."
		},
		{
			label = "Экспорт предупреждения", 
			text = "С помощью этой команды вы можете экспортировать предупреждение. Для этого сначала выберите предупреждение в списке, выполните эту команду меню и в открывшемся окне выделите текст и скопируйте его в буфер обмена. Скопированный текст можно послать почтой, опубликовать на форуме и т.д. Другие пользователи смогут импортировать этот текст в свою конфигурацию аддона"
		},
		{
			label = "Экспорт набора", 
			text = "С помощью этой команды вы можете экспортировать набор предупреждений. Для этого в открывшемся окне выделите текст и скопируйте его в буфер обмена. Скопированный текст можно послать почтой, опубликовать на форуме и т.д. Другие пользователи смогут импортировать этот текст в свою конфигурацию аддона"
		},
		{
			label = "Об аддоне", 
			text = "Открывает окно с базовой информацией об этом аддоне."
		},
		{
			label = "Содержание", 
			text = "Открывает эту справку."
		}
	}
	helpTopic[helpIndex[12]] = {
		{
			label = "Командная строка", 
			text = "Этот аддон поддерживает несколько параметров командной строки, описанных ниже"
		},
		{
			label = "/karuulalert или /kalert", 
			text = "Открывает главное окно аддона"
		},
		{
			label = "/kalert set={номер набора|auto}", 
			text = "Задает номер активного набора. Возможные значение 1-6.\n\nПример:\n/kalert set=1\n/kalert set=auto"
		},
		{
			label = "/kalert subset={номер дополнительного набора}", 
			text = "Задает номер активного дополнительного набора. Возможные значение 1-10.\n\nПример: /kalert subset=1"
		},
		{
			label = "/kalert help", 
			text = "Показывает эту справку"
		},
		{
			label = "/kalert debug", 
			text = "Показывает дополнительную отладочную информацию"
		}
	}
	
end