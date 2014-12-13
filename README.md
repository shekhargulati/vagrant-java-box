vagrant-java-box
================

Configures a Ubuntu VM with Java, Tomcat, and MySQL using chef-apply.

Before you can use this script, you have to install vagrant-chef-apply plugin. Run the following command to install it
```
$ vagrant plugin install vagrant-chef-apply
```

Now you can create a new Ubuntu Java box by running following command.
```
$ vagrant up
```

You can SSH into your box using ```$ vagrant ssh``` command. 

To view the Apache Tomcat 7 server from your local machine you can open http://localhost:18080 in your favorite browser.
