#!/bin/zsh
############################################################## {{{1 ##########
# Copyright © 2005 … 2018  Martin Krischik
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
############################################################## }}}1 ##########

setopt No_XTrace
setopt No_Err_Exit

pushd "/opt/android-sdk-macosx/tools/bin"

    echo "Update\n"

    ./sdkmanager --update

    echo "Build Tools\n"

    ./sdkmanager				\
	"build-tools;25.0.2"			\
	"build-tools;27.0.3"			\
	"build-tools;28.0.2"

    echo "All Platforms\n"

    ./sdkmanager				\
	"platforms;android-7"			\
	"platforms;android-8"			\
	"platforms;android-9"			\
	"platforms;android-10"			\
	"platforms;android-11"			\
	"platforms;android-12"			\
	"platforms;android-13"			\
	"platforms;android-14"			\
	"platforms;android-15"			\
	"platforms;android-16"			\
	"platforms;android-17"			\
	"platforms;android-18"			\
	"platforms;android-19"			\
	"platforms;android-20"			\
	"platforms;android-21"			\
	"platforms;android-22"			\
	"platforms;android-23"			\
	"platforms;android-24"			\
	"platforms;android-25"			\
	"platforms;android-26"

    echo "All Sources\n"

    ./sdkmanager				\
	"sources;android-14"			\
	"sources;android-15"			\
	"sources;android-16"			\
	"sources;android-17"			\
	"sources;android-18"			\
	"sources;android-19"			\
	"sources;android-20"			\
	"sources;android-21"			\
	"sources;android-22"			\
	"sources;android-23"			\
	"sources;android-24"			\
	"sources;android-25"			\
	"sources;android-26"

    echo "All Add Ons\n"

    ./sdkmanager				\
	"add-ons;addon-google_apis-google-7"	\
	"add-ons;addon-google_apis-google-8"	\
	"add-ons;addon-google_apis-google-9"	\
	"add-ons;addon-google_apis-google-10"	\
	"add-ons;addon-google_apis-google-11"	\
	"add-ons;addon-google_apis-google-12"	\
	"add-ons;addon-google_apis-google-13"	\
	"add-ons;addon-google_apis-google-14"	\
	"add-ons;addon-google_apis-google-15"	\
	"add-ons;addon-google_apis-google-16"	\
	"add-ons;addon-google_apis-google-17"	\
	"add-ons;addon-google_apis-google-18"	\
	"add-ons;addon-google_apis-google-19"	\
	"add-ons;addon-google_apis-google-21"	\
	"add-ons;addon-google_apis-google-22"	\
	"add-ons;addon-google_apis-google-23"	\
	"add-ons;addon-google_apis-google-24"	\
	"add-ons;addon-google_gdk-google-19"

    echo "extras\n"

    ./sdkmanager				\
	"extras;android;m2repository"		\
	"extras;google;m2repository"		\
	"extras;google;google_play_services"
popd

############################################################## {{{1 ##########
# vim: set nowrap tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab :
# vim: set textwidth=0 filetype=zsh foldmethod=marker nospell :
