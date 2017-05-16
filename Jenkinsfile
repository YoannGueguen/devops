node {
    stage ("Docker Build") {
          checkout scm
          sh "sudo chmod +x build.sh"
          sh "sudo /bin/bash build.sh"
    }
}