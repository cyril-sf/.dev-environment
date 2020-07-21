#!/usr/bin/env zsh

# app related config 
APP="${BASH_IT}/app/*.zsh"
for _bash_it_config_file in $~APP;
do
  # shellcheck disable=SC1090
  source "$_bash_it_config_file";
done
