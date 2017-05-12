
# README

A brief guide to walk you through the initial setup of this developer VM

## Initial Keyboard Setup

Configure the keyboard layout and adjust the timezone:

 * System Settings... -> Text Entry
 * System Settings... -> Time & Date

If you have a totally different keymap (e.g. on a MacBook) you can always reconfigure it:
```
$ sudo dpkg-reconfigure keyboard-configuration
```

## Updating this Developer VM

You can run these commands from anywhere inside this developer VM:

 * `update-vm` - update the VM by applying the Chef recipes from the locally checked out repo at `~/vm-setup`
 * `update-vm --pull` - same as above, but update repo before by pulling the latest changes
 * `update-vm --verify-only` - don't update the VM, only run the Serverspec tests
 * `update-vm --provision-only` - don't run the Serverspec tests, only update the vm

## Getting Started!

Please refer to the sections below on how to start developing with the specific toolchain in this developer VM.

### Setup an Example Web Application using Maven

You can set up a Maven based example RESTful web application as described here:
https://jersey.java.net/documentation/latest/getting-started.html

Prepare:
```
$ mkdir ~/workspace
$ cd ~/workspace
```

Scaffold the web application project:
```
$ mvn archetype:generate -DarchetypeArtifactId=jersey-quickstart-webapp \
  -DarchetypeGroupId=org.glassfish.jersey.archetypes -DinteractiveMode=false \
  -DgroupId=com.example -DartifactId=simple-service-webapp -Dpackage=com.example \
  -DarchetypeVersion=2.21
```

Build, test, package:
```
$ cd simple-service-webapp
$ mvn clean install
```

To run the project in an embedded Tomcat container:
```
$ mvn org.apache.tomcat.maven:tomcat7-maven-plugin:run
```

Once the embedded Tomcat is up and running, you can access the web application here:
http://localhost:8080/simple-service-webapp/


### Debug the Example Web Application in Eclipse

First, open Eclipse from the command line:
```
$ eclipse
```

Once Eclipse is open, you first need to import the existing example project:

 * File -> Import... -> Maven / Existing Maven Projects, then click "Next"
 * select `/home/vagrant/workspace` for the "Root Directory"
 * make sure the "simple-service-webapp" is selected, and click "Finish"

Next we need to add the "J2EE Preview" server runtime:

 * Window -> Preferences -> Server -> Runtime Environments -> Add... -> Basic / J2EE Preview, then click "Finish"

Now you can debug the example web application in Eclipse:

 * right-click "simple-service-webapp" -> Debug As -> Debug on Server
 * choose the "J2EE Preview" server runtime, and click "Finish"
 * open http://localhost:8080/simple-service-webapp/webapi/myresource in your browser
 * set a breakpoint in `MyResource#getIt()` and change the return value
 * hit reload in your browser, step through using the debugger, and see the updated value being returned
