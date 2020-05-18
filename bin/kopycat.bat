@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  kopycat startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and KOPYCAT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-XX:MaxMetaspaceSize=256m" "-XX:+UseParallelGC" "-XX:SurvivorRatio=6" "-XX:-UseGCOverheadLimit"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\kopycat-0.3.20.jar;%APP_HOME%\lib\proposal-0.1.0.jar;%APP_HOME%\lib\kotlin-logging-0.1.2.jar;%APP_HOME%\lib\kotlin-extensions-0.2.2.jar;%APP_HOME%\lib\javalin-1.7.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.3.61.jar;%APP_HOME%\lib\jackson-module-kotlin-2.9.2.jar;%APP_HOME%\lib\kotlin-reflect-1.3.61.jar;%APP_HOME%\lib\kotlin-test-junit-1.3.61.jar;%APP_HOME%\lib\kotlinx-coroutines-core-1.0.1.jar;%APP_HOME%\lib\joda-time-2.9.9.jar;%APP_HOME%\lib\trove4j-3.0.3.jar;%APP_HOME%\lib\slf4j-nop-1.7.25.jar;%APP_HOME%\lib\pcap4j-packetfactory-static-1.7.1.jar;%APP_HOME%\lib\pcap4j-core-1.7.1.jar;%APP_HOME%\lib\oshi-core-3.13.0.jar;%APP_HOME%\lib\jSerialComm-1.3.11.jar;%APP_HOME%\lib\reflections-0.9.11.jar;%APP_HOME%\lib\commons-text-1.8.jar;%APP_HOME%\lib\java-jwt-3.8.0.jar;%APP_HOME%\lib\joou-0.9.3.jar;%APP_HOME%\lib\wordnet-random-name-1.3.jar;%APP_HOME%\lib\argparse4j-0.7.0.jar;%APP_HOME%\lib\jblas-1.2.4.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.3.61.jar;%APP_HOME%\lib\kotlin-test-1.3.61.jar;%APP_HOME%\lib\kotlin-stdlib-1.3.61.jar;%APP_HOME%\lib\kotlin-test-annotations-common-1.3.61.jar;%APP_HOME%\lib\junit-4.12.jar;%APP_HOME%\lib\kotlinx-coroutines-core-common-1.0.1.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\jetty-webapp-9.4.9.v20180320.jar;%APP_HOME%\lib\websocket-server-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-servlet-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-security-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-server-9.4.9.v20180320.jar;%APP_HOME%\lib\jackson-databind-2.9.8.jar;%APP_HOME%\lib\jackson-annotations-2.9.0.jar;%APP_HOME%\lib\jna-platform-5.2.0.jar;%APP_HOME%\lib\jna-5.2.0.jar;%APP_HOME%\lib\guava-20.0.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar;%APP_HOME%\lib\commons-lang3-3.9.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\kotlin-test-common-1.3.61.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.3.61.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\websocket-servlet-9.4.9.v20180320.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\websocket-client-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-client-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-http-9.4.9.v20180320.jar;%APP_HOME%\lib\websocket-common-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-io-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-xml-9.4.9.v20180320.jar;%APP_HOME%\lib\jackson-core-2.9.8.jar;%APP_HOME%\lib\jetty-util-9.4.9.v20180320.jar;%APP_HOME%\lib\websocket-api-9.4.9.v20180320.jar

@rem Execute kopycat
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %KOPYCAT_OPTS%  -classpath "%CLASSPATH%" ru.inforion.lab403.kopycat.KopycatStarter %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable KOPYCAT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%KOPYCAT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
