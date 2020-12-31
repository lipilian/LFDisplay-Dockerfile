LFDisplay Sample Files
======================

CONTENTS:

In this archive you should find the following files...

README.txt              this file

crayonwax.jpg              light field micrograph of fluorescent crayon wax
                           objective: 20x/0.5 dry
                           microlens array: 125 micron pitch, f/20
crayonwax-lenslet.txt      lenslet rectification parameters
crayonwax-optics.txt       optics recipe

golgi.tif                  light field micrograph of Golgi stained neurons
                           objective: 40x/0.95 dry
                           microlens array: 125 micron pitch, f/20
golgi-lenslet.txt          lenslet rectification parameters
golgi-optics.txt           optics recipe

golgihighres1.jpg          high resolution light field of Golgi stained neurons
                           objective: 20x/0.75 dry
                           imaged through 2:1 relay lens
                           (effective magnification is 40x)
                           microlens array: 125 micron pitch, f/30
golgihighres1-lenslet.txt  lenslet rectification parameters
golgihighres1-optics.txt   optics recipe

golgihighres1.jpg          high resolution light field of Golgi stained neurons
                           objective: 40x/1.3 oil
                           imaged through 2:1 relay lens
                           (effective magnification is 80x)
                           microlens array: 125 micron pitch, f/30
golgihighres1-lenslet.txt  lenslet rectification parameters
golgihighres1-optics.txt   optics recipe

INSTRUCTIONS:

1. Start up LFDisplay
2. Select "Single image file..." under "Open input" from the "Data"
menu.
3. Click "Pinhole 3D (reset focus and pan)"
3. Choose one of the image files (jpg/tif) to load.
4. Click the "Load" button in the "Lenslet" tab to load the
appropriate "lenslet.txt" file.
5. Click the "Load" button in the "Optics" tab to load the appropriate
"optics.txt" file.
6. Use the mouse scroll wheel (or Ctrl-+/-) to zoom in and out, right
mouse drag (or Ctrl-mouse drag on Mac) to translate and left mouse
drag to virtually pan the specimen.
7. Select "Full" under "Aperture diameter" in the "Optics" tab.
8. Enable "Automatic gain control" in the "Display" tab by clicking
the appropriate checkbox.
9. Drag the focus slider to digitally refocus the captured light
fields.  (Select a smaller number of aperture samples for non-pinhole
rendering if this is too slow; it'll increase speed at the expense of
quality.)

NOTE:

Older graphics cards may not be able to load the "crayonwax",
"golgihighres1" and "golgihighres2" data sets due to image size.  Please
use "golgi" instead.
