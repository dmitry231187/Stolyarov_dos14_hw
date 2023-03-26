#!/bin/bash

# проверка на корректность url
if [[ "$string" =~ ^(https?\:\/\/(www\.)?)?([[:alnum:]]+\.)+[[:alnum:]]+\/?$ ]]; then
 echo "$string - корректный url"
else
 echo "это не url"
fi
