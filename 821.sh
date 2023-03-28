#!/bin/bash

# проверка на корректность email
isEmail() {
  if [[ "$string" =~ ^[[:alnum:]]+\@[[:alnum:]]+\.[[:alpha:]]+$ ]]; then
  echo "$string - корректный email"
 else
  echo "это не email"
 fi
}
