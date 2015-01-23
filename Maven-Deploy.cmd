::#!
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {{{1 :::::::^::::
:: Copyright © 2013 Martin Krischik
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: $Author$
:: $Revision$
:: $Date$
:: $Id$
:: $HeadURL$
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }}}1 :::::::::::
@ECHO OFF

SETLOCAL
    SET PATH=%PATH%;C:\opt\Git\1.9.4\bin
    SET PATH=%PATH%;C:\opt\Scala\2.11.4\bin
    SET  Scala_Library=%Work%\Repositories\Local\net\sourceforge\uiq3\Calculator-Script\6.3.6\Calculator-Script-6.3.6.jar

    SET NOSER_VERSION=3.1.3
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

//  "--activate-profiles"   :: "5.0"				::

(mvn :::
    "--fail-at-end"						::
    "--define"		    :: "repo.id="   + Project_Name	::
    "--define"		    :: "repo.name=" + Maven_Name	::
    "--define"		    :: "repo.url="  + Maven_Deploy	::
    "--define"		    :: "repo="	    + Maven_Repository	::
    "deploy"		    :: Nil).!

// vim: set wrap tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab :
// vim: set textwidth=0 filetype=scala foldmethod=marker nospell :
