# Automate gatsby project deployment using jenkins 🚀

Their are different CI/CD tools available , today we are going to see how we can deploy [gatsby](https://www.gatsbyjs.com/) site using [Jekins](https://www.jenkins.io/)
you can also deploy gatsby site with other CI/CD tools.

Jenkins provide a differnt job for different we will bw using pipeline job to deploy gatsby site. For more information about pipeline you can visit [here](https://www.jenkins.io/doc/book/pipeline/#ji-toolbar)

## Requirements

For running Node apllication on your jenkins Server you will require [NodeJs](https://plugins.jenkins.io/nodejs/) plugin. Configure this plugin before creating job. You can also refer this [blog](https://medium.com/appgambit/ci-cd-pipeline-for-a-nodejs-application-with-jenkins-fa3cc7fad13a) for configuration

So for automating the deployment process we don't have much files and configuration , you will just need a [github access token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) which should be stored in the jenkins evironment

## Working

On the Initial stage of the automation first you have to move the two files in the gatsby project directory, files are <br>
` Jenkinsfile, deploy-site.sh`. The Jenkins file will help us to build our gatsby site on jenkins workspace and lastly to also clear the Workspace.

The `deploy-site.sh` will check for [CNAME](https://support.google.com/a/answer/112037?hl=en#zippy=%2Cset-up-cname-records-now) in the the gatsby project to host site on paticular domain, you have to make some changes in file while moving like you have to provide some information related to github

`<example@email.com>` : Email used on Github or organization email <br>
`<UserName>` : Github Username or this can be a organization name <br>
`<deploy-branch>` : Github branch on you want to deploy you site , it should not be maste or main

The whole pipeline basically install requirements and build gatsby site and generate public directory , check for CNAME and deploy the site, that's it
happy coding!🌟
