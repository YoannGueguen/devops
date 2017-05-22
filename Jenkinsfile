node {
    stage ("Docker Build") {
          checkout scm
          sh "chmod +x build.sh"
          sh "/bin/bash build.sh"
    }
}
