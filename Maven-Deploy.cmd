::#!
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {{{1 :::::::::::
:: Copyright © 2013 … 2018 Martin Krischik
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: This program is free software; you can redistribute it and/or
:: modify it under the terms of the GNU General Public License
:: as published by the Free Software Foundation; either version 2
:: of the License, or (at your option) any later version.
::
:: This program is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
:: GNU General Public License for more details.
::
:: You should have received a copy of the GNU General Public License
:: along with this program; if not, write to the Free Software
:: Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }}}1 :::::::::::
@ECHO OFF

SETLOCAL
    SET PATH=%PATH%;C:\opt\Git\1.9.4\bin
    SET PATH=%PATH%;C:\opt\Scala\2.11.4\bin
    SET Scala_Library=%Work%\Repositories\Local\net\sourceforge\uiq3\Calculator-Script\6.3.6\Calculator-Script-6.3.6.jar

    CALL scala -classpath %Scala_Library% -save %~f0 %*
ENDLOCAL

GOTO :eof
::!#

import scala.sys.process._
import net.sourceforge.uiq3.Maven._

val Maven_Deploy     = System.getenv ("MAVEN_DEPLOY")
val Maven_Repository = System.getenv ("MAVEN_REPOSITORY")
val Project_Name     = System.getenv ("PROJECT_NAME")
val Maven_Name	     = Project_Name +" Maven Repository"

//  "--activate-profiles"   :: "8.0"				::
//  "--activate-profiles"   :: "5.0"				::
//  "--activate-profiles"   :: "5.1,6.0,7.0,7.1"		::

(mvn :::
    "--fail-at-end"						::
    "--define"		    :: "repo.id="   + Project_Name	::
    "--define"		    :: "repo.name=" + Maven_Name	::
    "--define"		    :: "repo.url="  + Maven_Deploy	::
    "--define"		    :: "repo="	    + Maven_Repository	::
    "deploy"		    :: Nil).!

// vim: set wrap tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab :
// vim: set textwidth=0 filetype=scala foldmethod=marker nospell :
