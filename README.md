# Docker-PsiTurk

This dockerfile is used for the purpose of using psiTurk as a Windows user with relatively little hassle. For my purpose, I have been using a Dockerized psiTurk connected to a Heroku app to experiments on mTurk.

The prerequisite for using this Dockerfile is Docker so if you don't have it already, download it here https://www.docker.com/products/docker-desktop

You can download the Dockerfile provided and alter it as necessary.

Alternatively, you can add the following to a Dockerfile
```
FROM esandov4/psiturk:latest
```
Now you should be able to build the docker image with the following command, remembering to replace <your_username> with your Docker username, and <image_name> with whatever you'd like to name the image as:
```
docker build -t <your_username>/<image_name>
```
You can then run the container with the following command:
```
docker run -i -t --rm --name name_of_container -p 22362:22362 -v %cd%:/psiturk <your-username>/<image_name>
```
Once in the container, you should be able to start psiturk and set up experiments. I will update this repository with more specific pointed instructions for setting up a Heroku app to avoid the use of psiturk's ad server if needed.


Dockerhub link here: https://hub.docker.com/repository/docker/esandov4/psiturk/general
