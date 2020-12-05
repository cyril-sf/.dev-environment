#!/usr/bin/env zsh

# libraries 
LIB="${BASH_IT}/interactive/*.zsh"
for file in $~LIB
do
  # shellcheck disable=SC1090
  source "$file"
done