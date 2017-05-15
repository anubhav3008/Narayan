mvn clean install
/home/anubhav/Softwares/apache-tomcat-7.0.76/bin/shutdown.sh 
sleep 5
rm -rf /home/anubhav/Softwares/apache-tomcat-7.0.76/webapps/WebApp-0.0.1-SNAPSHOT-jar-with-dependencies.war
cp target/WebApp-0.0.1-SNAPSHOT-jar-with-dependencies.war /home/anubhav/Softwares/apache-tomcat-7.0.76/webapps/WebApp-0.0.1-SNAPSHOT-jar-with-dependencies.war
/home/anubhav/Softwares/apache-tomcat-7.0.76/bin/catalina.sh jpda start
tail -100f /home/anubhav/Softwares/apache-tomcat-7.0.76/logs/catalina.out