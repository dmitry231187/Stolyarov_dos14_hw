#!/bin/bash
# проверка на корректность номера телефона
isTelNumber() {
if [[ "$string" =~ ^(\+?375|0|8-?0)-?(17|25|29|33|44)-?[0-9]{3}-?[0-9]{2}-?[0-9]{2}$ ]]; then
 echo "$string - корректный номер телефона"
else
 echo "Это не номер телефона"
fi
}
