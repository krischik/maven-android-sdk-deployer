#!/bin/zsh
############################################################ {{{1 ###########
#  Copyright © 2015 … 2019 KPT/CPT
############################################################ }}}1 ###########

if test -z "${PROJECT_HOME}"; then
    source "${0:h}/Setup.command"
fi

setopt Err_Exit
setopt No_XTrace

pushd "${ANDROID_HOME}/tools/bin"
    echo "Update\n"

    ./sdkmanager --update

    echo "Download and Install Build Tools\n"

    ./sdkmanager				\
	"build-tools;28.0.3"			\
	"build-tools;29.0.0"			\
	"build-tools;29.0.2"

    echo "Download and Install Platforms 28\n"

    ./sdkmanager				\
	"platforms;android-28"

    echo "Download and Install google_apis\n"

    ./sdkmanager				\
	"add-ons;addon-google_apis-google-15"	\
  	"add-ons;addon-google_apis-google-16"	\
  	"add-ons;addon-google_apis-google-17"	\
  	"add-ons;addon-google_apis-google-18"	\
  	"add-ons;addon-google_apis-google-19"	\
  	"add-ons;addon-google_apis-google-21"	\
  	"add-ons;addon-google_apis-google-22"	\
  	"add-ons;addon-google_apis-google-23"	\
  	"add-ons;addon-google_apis-google-24"

    echo "Download and Install extras\n"

    ./sdkmanager				\
	"extras;android;m2repository"		\
	"extras;google;m2repository"		\
	"extras;google;google_play_services"
popd

############################################################## {{{1 ##########
# vim: set nowrap tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab :
# vim: set textwidth=0 filetype=zsh foldmethod=marker nospell :
