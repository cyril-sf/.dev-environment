#!/usr/bin/env bash

INSTALL="${BASH_IT}/install/*.zsh"
for _bash_it_config_file in $~INSTALL
do
  # shellcheck disable=SC1090
  source "$_bash_it_config_file"
done
