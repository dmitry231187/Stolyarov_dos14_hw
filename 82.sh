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
 1|email) . ./821.sh "$string";;
 2|url) . ./822.sh "$string";;
 3|telNumber) . ./823.sh "$string";;
 4|password) . ./824.sh "$string";;
 *) echo "Такого номера и варианта не существует!";;
esac
}

main() {
errors "$@"
# выводим меню выбора на принадлежность чему проверяем
PS3="Введите номер или название варианта для проверки: "
select number in email url telNumber password
do
# проверяем ввели число или текст, и вызываем case
 if [[ -z $REPLY ]]; then
  case_in "$number"
 else
  case_in "$REPLY"
 fi
break
done
}

main "$@"
