## There were problems with installation

### First step

Install libsfml-dev, from ubuntu repositories.

sudo apt-get install libsfml-dev


## Second step and most annoying step
 Install dsfmlc

 - git clone -b 2.1 --depth 1 https://github.com/Jebbs/DSFMLC.git
 - cd DSFMLC
 - cmake .
 - make
 - sudo make install

 ### $ cmake .
 cmake .  command may not work. In my case, I needed a library calle OPENAL, and I was confused for a long time by the error.

 find the library in the ubuntu repositories and install.

 $ apt-cache search openal

running that command should yield a list of libraries, and one of them will be :
 - libopenal-dev
So just run : sudo apt install libopenal-dev
If you run cmake . again, you may get a different error.
I had to find another package called sndfile
 - sudo apt install libsndfile1-dev

 after those dependecy issues are resolved, make and make install should work as intended.

## Third step

### DUB
after: $ dub init
and: $ dub add dsfml

you'd probably expect the stuff to work by now, but you'd be wrong.
libdsfmlc-audio.so.2 is not in your shared libraries folder.

I downloaded from this link: https://github.com/Zevenberge/Mahjong/blob/master/lib/libdsfmlc-system.so.2

Then moved the file into /usr/lib

I ran sudo ldconfig

lo and behold, the program finall runs.


Screw setup, and screw dependency issues like this. They take the steam out of starting new projects.

