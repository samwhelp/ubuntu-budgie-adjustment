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

main_prototype_install () {

	#util_error_echo 'main_prototype_install'

	budgie_config_main_prototype_install

	budgie_workspace_main_prototype_install

	budgie_keybind_main_prototype_install

	budgie_keybind_custom_prototype_install

	nemo_prototype_install

	gedit_prototype_install

	tilix_prototype_install

	budgie_wallpaper_main_prototype_install

	budgie_theme_main_prototype_install




	sys_gsettings_schemas_update

	return 0

}

##
### Tail: Model / Start
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_prototype_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
