local Translations = {
    EnglishToArabic = {
        ["Home"] = "الرئيسية",
        ["Main"] = "الأساسية",
        ["Setting"] = "الاعدادات",
        ["Reach V1"] = "الريتش V1",
        ["Enable Reach"] = "تفعيل الريتش",
        ["Click to activate the reach"] = "أضغط لتفعيل الريتش",
        ["Change UI language"] = "تغيير لغة الواجهة",
        ["Language"] = "اللغة",
        ["Welcome :"] = "مرحباً :",
        ["Join Our Telegram Community"] = "انضم الى مجتمعنا عبر تيلجرام",
        ["Click to Copy"] = "أضغط للنسخ",
        ["Set"] = "تعين",
        ["Click to apply"] = "أضغط للتطبيق",
        ["Reach Distance"] = "مسافة الريتش",
        ["Put a number to change the reach range"] = "ضع رقم لتغير مدى الريتش",
        ["Type here!"] = "اكتب هنا!",
        ["React"] = "ردة فعل",
        ["React 1"] = "ردة فعل 1",
        ["React 2"] = "ردة فعل 2"
    },
    ArabicToEnglish = {
        ["الرئيسية"] = "Home",
        ["الأساسية"] = "Main",
        ["الاعدادات"] = "Setting",
        ["الريتش V1"] = "Reach V1",
        ["تفعيل الريتش"] = "Enable Reach",
        ["أضغط لتفعيل الريتش"] = "Click to activate the reach",
        ["اللغة"] = "Language",
        ["تغيير لغة الواجهة"] = "Change UI language",
        ["مرحباً :"] = "Welcome :",
        ["انضم الى مجتمعنا عبر تيلجرام"] = "Join Our Telegram Community",
        ["أضغط للنسخ"] = "Click to Copy",
        ["تعين"] = "Set",
        ["أضغط للتطبيق"] = "Click to apply",
        ["مسافة الريتش"] = "Reach Distance",
        ["ضع رقم لتغير مدى الريتش"] = "Put a number to change the reach range",
        ["اكتب هنا!"] = "Type here!",
        ["ردة فعل"] = "React",
        ["ردة فعل 1"] = "React 1",
        ["ردة فعل 2"] = "React 2"
    },
    EnglishToRussian = {
        ["Home"] = "Главная",
        ["Main"] = "Основная",
        ["Setting"] = "Настройки",
        ["Reach V1"] = "Дальность V1",
        ["Enable Reach"] = "Включить дальность",
        ["Click to activate the reach"] = "Нажмите для активации дальности",
        ["Change UI language"] = "Изменить язык интерфейса",
        ["Language"] = "Язык",
        ["Welcome :"] = "Добро пожаловать :",
        ["Join Our Telegram Community"] = "Присоединяйтесь к нашему сообществу в Telegram",
        ["Click to Copy"] = "Нажмите, чтобы скопировать",
        ["Set"] = "Установить",
        ["Click to apply"] = "Нажмите для применения",
        ["Reach Distance"] = "Дальность",
        ["Put a number to change the reach range"] = "Введите число, чтобы изменить диапазон",
        ["Type here!"] = "Введите здесь!",
        ["React"] = "Реакция",
        ["React 1"] = "Реакция 1",
        ["React 2"] = "Реакция 2"
    },
    RussianToEnglish = {
        ["Главная"] = "Home",
        ["Основная"] = "Main",
        ["Настройки"] = "Setting",
        ["Дальность V1"] = "Reach V1",
        ["Включить дальность"] = "Enable Reach",
        ["Нажмите для активации дальности"] = "Click to activate the reach",
        ["Язык"] = "Language",
        ["Изменить язык интерфейса"] = "Change UI language",
        ["Добро пожаловать :"] = "Welcome :",
        ["Присоединяйтесь к нашему сообществу в Telegram"] = "Join Our Telegram Community",
        ["Нажмите, чтобы скопировать"] = "Click to Copy",
        ["Установить"] = "Set",
        ["Нажмите для применения"] = "Click to apply",
        ["Дальность"] = "Reach Distance",
        ["Введите число, чтобы изменить диапазон"] = "Put a number to change the reach range",
        ["Введите здесь!"] = "Type here!",
        ["Реакция"] = "React",
        ["Реакция 1"] = "React 1",
        ["Реакция 2"] = "React 2"
    }
}

local currentLang = "Arabic"

function translate(text, fromLang, toLang)
    local key
    if fromLang == "Arabic" then
        key = Translations.ArabicToEnglish[text]
    elseif fromLang == "Russian" then
        key = Translations.RussianToEnglish[text]
    else
        key = text
    end
    if not key then return text end
    if toLang == "Arabic" then
        return Translations.EnglishToArabic[key] or text
    elseif toLang == "Russian" then
        return Translations.EnglishToRussian[key] or text
    else
        return key
    end
end

return {
    Translations = Translations,
    translate = translate,
    currentLang = currentLang
}
