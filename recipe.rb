execute "apt-get update"

file "#{ENV['HOME']}/test.txt" do
	action :delete
end

%w[ default-jdk git-core curl mysql-server unzip ].each do |packageName|
	package packageName
end

tomcat_version = "7.0.57"

remote_file "/home/vagrant/tomcat-#{tomcat_version}.zip" do
	source "http://mirror.metrocast.net/apache/tomcat/tomcat-7/v#{tomcat_version}/bin/apache-tomcat-#{tomcat_version}.zip"
	notifies :run, "execute[run tomcat7]"
end

execute "run tomcat7" do 
	cwd "/home/vagrant"
	command <<EOF
	unzip tomcat-#{tomcat_version}.zip
	sudo chown -R vagrant apache-tomcat-7.0.57/
	cd apache-tomcat-#{tomcat_version}/bin
	chmod +x *
	sh startup.sh
EOF
end




