#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

set -e

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
THE_INIT_DIR_PATH="${THE_BASE_DIR_PATH}/helper/ext"
. "${THE_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Start
##

main_config_install () {

	#util_error_echo 'main_config_install'

	budgie_config_main_config_install

	budgie_workspace_main_config_install

	budgie_keybind_main_config_install

	budgie_keybind_custom_config_install

	nemo_config_install

	gedit_config_install

	tilix_config_install

	budgie_wallpaper_main_config_install

	budgie_theme_main_config_install




	return 0

}

##
### Tail: Model / Start
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
