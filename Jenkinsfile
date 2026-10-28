node {
  stage('checkout') {
    git branch: 'main',
      url: 'https://github.com/Ramya-Padala/Ubuntu-server.git'
  }
   stage('Docker Build') {
        sh '''
            docker build -t html-nginx-app:latest .
        '''
    }
stage('Deploy') {
        sh '''
            docker rm -f html-nginx-container 2>/dev/null || true

            docker run -d \
                --name html-nginx-container \
                --restart unless-stopped \
                -p 8085:80 \
                html-nginx-app:latest
        '''
    }

  stage('verify') {
    sh '''
            sleep 3
            docker ps
            curl --fail http://127.0.0.1:8085
        '''
     echo "Docker is deployed successfully!"
        echo "Access: http://192.168.200.165:8085"
  }
  }
  
