#!/usr/bin/env bash

# libraries 
LIB="${BASH_IT}/lib/*.bash"
for _bash_it_config_file in $LIB
do
  # shellcheck disable=SC1090
  source "$_bash_it_config_file"
done

# app related config 
APP="${BASH_IT}/app/*.bash"
for _bash_it_config_file in $APP
do
  # shellcheck disable=SC1090
  source "$_bash_it_config_file"
done
