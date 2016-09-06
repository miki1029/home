# for ls, terminal
#export TERM="xterm-color"
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
#PS1="\[\033[01;32m\]\u@\h \[\033[01;34m\]\W \$\[\033[00m\] "
alias ll="ls -lvh"
export LANG=en_US.UTF-8

# for apps variable
export APPS_HOME=${HOME}/apps

# for Java
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:${PATH}
export CLASSPATH=.:${JAVA_HOME}/lib/tools.jar
export _JAVA_OPTIONS="-Dfiles.encoding=UTF-8"
export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true"

# for Maven
#export MAVEN_HOME=${APPS_HOME}/apache-maven-3.3.9
export MAVEN_HOME=${APPS_HOME}/apache-maven-3.1.0
#export MAVEN_HOME=${APPS_HOME}/apache-maven-2.2.1
#export MAVEN_OPTS="-XX:PermSize=64m -XX:MaxPermSize=512m"
export PATH=${PATH}:${MAVEN_HOME}/bin

# for Gradle
export GRADLE_HOME=${APPS_HOME}/gradle-2.10
export PATH=${PATH}:${GRADLE_HOME}/bin

# for Android
export PATH=${PATH}:${HOME}/Library/Android/sdk/platform-tools
export PATH=${PATH}:${HOME}/Library/Android/sdk/tools

# for MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=${PATH}:${MYSQL_HOME}/bin

# for Tomcat
export TOMCAT_HOME=${APPS_HOME}/apache-tomcat-7.0.67
export PATH=${PATH}:${TOMCAT_HOME}/bin

# for Redis
export REDIS_HOME=${APPS_HOME}/redis-3.0.6
export PATH=${PATH}:${REDIS_HOME}/src

# for Vert.x
#export VERTX_HOME=${APPS_HOME}/vert.x
#export PATH=${PATH}:${VERTX_HOME}/bin

# for svn
export SVN_EDITOR=vim

# for mitmproxy
export MITMPROXY_HOME=${APPS_HOME}/mitmproxy
export PATH=${PATH}:${MITMPROXY_HOME}

# for sonar
export SONAR_SCANNER_HOME=${APPS_HOME}/sonar-scanner
export PATH=${PATH}:${SONAR_SCANNER_HOME}/bin

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
