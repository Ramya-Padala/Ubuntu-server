FROM nginx:alpine

RUN echo '<!DOCTYPE html><html><head><title>My Website</title></head><body><h1>Welcome to My Website!</h1><p>Successfully deployed using Jenkins and Docker.</p></body></html>' > index.html /var/www/html/index.html

EXPOSE 80
