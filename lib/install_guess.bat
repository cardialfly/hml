::@echo off
setlocal enableDelayedExpansion
call mvn install:install-file -DgroupId="guess" -DartifactId="colt" -Dversion="1.4.2-38" -Dpackaging=jar -DskipTests=true -Dfile=colt.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="concurrent" -Dversion="1.4.2_03" -Dpackaging=jar -DskipTests=true -Dfile=concurrent.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="Jama" -Dversion="1.0.3" -Dpackaging=jar -DskipTests=true -Dfile=Jama-1.0.3.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="JavaMI" -Dversion="1.6.0_20" -Dpackaging=jar -DskipTests=true -Dfile=JavaMI.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="jdepend" -Dversion="2.9" -Dpackaging=jar -DskipTests=true -Dfile=jdepend-2.9.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="mebn_ln" -Dversion="1.0" -Dpackaging=jar -DskipTests=true -Dfile=mebn_ln.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="mebn_rm" -Dversion="1.0" -Dpackaging=jar -DskipTests=true -Dfile=mebn_rm.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="modelerlib" -Dversion="1.0" -Dpackaging=jar -DskipTests=true -Dfile=modelerlib.jar
call mvn install:install-file -DgroupId="mysql" -DartifactId="mysql-connector-java" -Dversion="3.0.17-ga-bin" -Dpackaging=jar -DskipTests=true -Dfile=mysql-connector-java-3.0.17-ga-bin.jar
call mvn install:install-file -DgroupId="net.sf.opencsv" -DartifactId="opencsv" -Dversion="2.4-SNAPSHOT" -Dpackaging=jar -DskipTests=true -Dfile=opencsv.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="tetrad-development" -Dversion="1.0" -Dpackaging=jar -DskipTests=true -Dfile=tetrad-development.jar
call mvn install:install-file -DgroupId="guess" -DartifactId="xom" -Dversion="1.2.10" -Dpackaging=jar -DskipTests=true -Dfile=xom-1.2.10.jar
