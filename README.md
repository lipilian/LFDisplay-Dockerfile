# LFDisplay-Dockerfile
### Option 1 (If you want to modify the dockerfile and build you own image)
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

5. Reverse Egnineer the dockfile after update the image by [dfimage](https://hub.docker.com/r/alpine/dfimage).
```
dfimage <images ID>
```

### Option 2 you can pull my image
```
docker pull lipilian/lfdisplay:v0
```

6. Copying the Cookie to connect X Server Displays. 

On your local machine, get the cookie value using the following command
```
xauth list
```
Copy the output which would be of the form  as shown below:
```
<username>/unix:  MIT-MAGIC-COOKIE-1  f1fa006c1e51fa8386209f85c57947c4
```
```
lipilian-Blade/unix:  MIT-MAGIC-COOKIE-1  aac799cc232afffe8df7ebc397a25c67
```


7. Create container and mount current path to container with external display

Check your image ID
```
docker images
```
Based on your image ID, create your container 
```
docker create -u root -it --name lf-display -v $(pwd):/home/lf-display/ --net=host -e DISPLAY -v /tmp/.X11-unix a85372ee1445 
```
Start the container and attach to it
```
docker start lf-display
docker attach lf-display
```

8. Modify the container bash, add the cookie to the list
In container bash 

**Note** add **0** after the your **unix:**
```
xauth add lipilian-Blade/unix:0  MIT-MAGIC-COOKIE-1  aac799cc232afffe8df7ebc397a25c67
```
```
xauth list
```

9. Try with firefox to test if the gui display installed successfully.

If firefox is not installed carefully, run
```
apt-get install firefox
```

