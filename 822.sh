#!/bin/bash

# проверка на корректность url
isUrl() {
if [[ "$string" =~ ^(https?\:\/\/(www\.)?)?([[:alnum:]]+\.)+[[:alnum:]]+\/?$ ]]; then
 echo "$string - корректный url"
else
 echo "это не url"
fi
}
