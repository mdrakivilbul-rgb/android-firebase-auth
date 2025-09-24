#!/usr/bin/env bash

##############################################################################
##
##  Gradle wrapper
##
##############################################################################

# Determine the Java command to use to launch the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME\n\nPlease set the JAVA_HOME variable in your environment to match the location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null || die "ERROR: JAVA_HOME is not set and no 'java' command can be found in your PATH.\n\nPlease set the JAVA_HOME variable in your environment to match the location of your Java installation."
fi

# Determine the script directory.
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS="-Xmx512m"

# Execute Gradle.
exec "$JAVACMD" \
    "$DEFAULT_JVM_OPTS" \
    -classpath "$SCRIPT_DIR/gradle/wrapper/gradle-wrapper.jar" \
    org.gradle.wrapper.GradleWrapperMain \
    "$@"

