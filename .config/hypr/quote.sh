#!/bin/bash

# Get random quote data
data="$(curl -s --connect-timeout 2 "http://www.quotationspage.com/random.php" \
  | iconv -c -f ISO-8859-1 -t UTF-8 \
  | command grep -a -m 1 'dt class="quote"')"

# Exit if could not fetch random quote
[[ -n "$data" ]] || return 0

quote=$(sed -e 's|</dt>.*||g' -e 's|.*html||g' -e 's|^[^a-zA-Z]*||' -e 's|</a..*$||g' <<< "$data")
author=$(sed -e 's|.*/quotes/||g' -e 's|<.*||g' -e 's|.*">||g' <<< "$data")

echo "${author}: “${quote}”"
