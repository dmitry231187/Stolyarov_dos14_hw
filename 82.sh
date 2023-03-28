#!/bin/bash
. ./82in.sh # проверка и ввод начальных данных
. ./821.sh # проверка email
. ./822.sh # проверка проверка url
. ./823.sh # проверка номера телефона
. ./824.sh # проверка пароля

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
