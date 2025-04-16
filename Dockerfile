# use the official Nginx base image
FROM nginx:alpine

# set the working directory to
WORKDIR /usr/share/nginx/html

# copy the HTML files to the container
COPY ./web /usr/share/nginx/html/

# start nginx web server
CMD ["nginx", "-g", "daemon off;"]

# to run the image type docker run -d -p 89:80 imagename
# after running in your rowser: localhost:89, you shoyld see the page