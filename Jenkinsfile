pipeline {
    agent any
    tools { nodejs 'Nodejs' }

    stages {
        stage('requirement install') {
            steps {
                sh 'npm install -g gatsby-cli'
                sh 'npm install -g yarn'
                sh'yarn install'
            }
        }
        stage('build gatsby site') {
            steps {
                sh 'yarn run build'
            }
        }
        stage('deploy') {
            environment {
                GIT_CREDS = credentials('GIT_TOKEN')
            }
            steps {
                sh 'bash ./deploy-site.sh'
            }
        }

        stage('clean workspace') {
            steps {
                cleanWs()
            }
        }
    }
}
