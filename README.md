# LFDisplay-Dockerfile

1. build the images based on the Dockerfile
```
docker build -t lipilian/lfdisplay:v0 .
```
2. Check the image locally.
```
docker run -it lipilian/lfdisplay:v0
```
3. Check the Ubuntu version and python version in container.
```
python --version
lsb_release -a
```
4. Push the image to docker hub.
```
docker push lipilian/lfdisplay:v0
```
<!--TODO: update the image based on the install.txt-->
5. 

6. Reverse Egnineer the dockfile after update the image by [dfimage](https://hub.docker.com/r/alpine/dfimage).
```
dfimage <images ID>
```

