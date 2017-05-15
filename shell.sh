mvn clean install
/home/anubhav/Softwares/apache-tomcat-8.0.43/bin/shutdown.sh 
sleep 5
rm -rf /home/anubhav/Softwares/apache-tomcat-8.0.43/webapps/Narayan.war
cp target/Narayan.war /home/anubhav/Softwares/apache-tomcat-8.0.43/webapps/Narayan.war
/home/anubhav/Softwares/apache-tomcat-8.0.43/bin/catalina.sh jpda start
tail -100f /home/anubhav/Softwares/apache-tomcat-8.0.43/logs/catalina.out
