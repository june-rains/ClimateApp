# IOS APP run guide
Please follow the instructions to run your IOS Application successfully:  
1. Install latest Xcode in your mac
2. Use Xcode to open the project file(./climate.xcodeproj) which located in ./ directory
3. Add package dependencies if you needed: in your Xcode project, click File/Add Packages... you need to search `firebase-ios-sdk` and `CodeScanner` and add them into this project
4. Select simulator to run: you need to select IOS 15.5 simulator and click build button

# WEB APP run guide
Please follow the instructions to run your IOS Application successfully:
1. Install npm and nodejs in your virtual machine enviroments(our virtual machine is ubuntu20.04)  
please check this url to help you install them correctly: https://linuxize.com/post/how-to-install-node-js-on-ubuntu-20-04/
2. Configure shibboleth by following link: https://authentication.oit.duke.edu/manager/
3. Enter into `climateapp-front-end` directory and enter command `npm run build` and deploy it into apache server  
    Please follow this step to help you deploy your front end to apache server: https://codeburst.io/deploying-and-hosting-a-react-app-on-an-apache-server-b7121dffb07a
4. Then you can run your front-end app, enter into directory `./climateapp-front-end` to run use command: `sudo systemctl restart apache2`
5. Then you need to run your back-end app, to run this, you need to install ItelliJ IDEA, and enter `./webapp` directory to run 

# Demo Video
[![Alt text](https://img.youtube.com/vi/4aFEz_v3Qdk/0.jpg)](https://www.youtube.com/watch?v=4aFEz_v3Qdk)
