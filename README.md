## ROBOT FRAMEWORK, 
#### Web Elements
#### Data Driven Test(DDT)
#### DB Testing
#### Page Object Model(POM) Pattern

## Commands
#### run cmd
- `robot <path><robotFileName>.robot`

#### Parallel Execution (save result in default location)
- `pabot --processes 2 TestCases\`
#### Parallel Execution (save results in specified location)
- `pabot --processes 2 --outputdir Results TestCases\*.robot`


#### Access jenkins using docker
- `docker run -p 8080:8080 --name=jenkins-master -v /Users/balakumaar/Documents/jenkinsdemo/jenkinsdocker:/var/jenkins_home -d jenkins/jenkins`




