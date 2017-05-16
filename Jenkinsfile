node("docker") {
    docker.withRegistry('registry.hub.docker.com', 'julespeyronnet/devopsbilly') {

        git url: "https://github.com/YoannGueguen/devops.git", credentialsId: 'YoannGueguen'

        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id

        stage "build"
            def app = docker.build "julespeyronnet/devopsbilly"

        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}