#!/bin/bash

usage() {
# если не введено исходных данных - выводим обучающее сообщение
 echo "Введенные данные не соответствуют email, url, номеру телефона, паролю"
 echo "Вводите данные правильно!"
 echo "Образец email: ./81 admin@tut.by"
 echo "Образец url: ./81 https://yandex.ru"
 echo "Образец номера телефона: ./81 +375291234567"
 echo "Образец пароля: ./81 Qwerty123"
 exit 1
}

errors() {
# проверяем наличие исходных данных и запрашиваем их если нету.
if [[ -z $* ]]; then
 read -p 'Введите данные для проверки: ' string
 if [[ -z $string ]]; then
  usage
 fi
else
 string=$1
fi
}

case_in() {
# в зависимости от полученных данных вызываем нужный скрипт
case $1 in
 1|email) isEmail "$string";;
 2|url) isUrl "$string";;
 3|telNumber) isTelNumber "$string";;
 4|password) isPass "$string";;
 *) echo "Такого номера и варианта не существует!";;
esac
}
