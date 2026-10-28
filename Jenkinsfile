node {
  stage('checkout') {
    git branch: 'main',
      url: 'https://github.com/Ramya-Padala/Ubuntu-server.git'
  }
stage('deploy') {
  sh '''
  docker build -t nginx:latest
  docker rm -f html-nginx-container 2>/dev/null || true
  docker run -d \
                        --name html-nginx-container \
                        --restart unless-stopped \
                        -p 8082:80 \
                        html-nginx-app:latest

    '''
}
  stage('verify') {
    success {
    echo "docker is deployed successfully"
      echo 'Access: http://YOUR_SERVER_IP:8082'
    }
  }
    failure {
            echo 'Deployment failed. Check Console Output.'
    }
  }               
