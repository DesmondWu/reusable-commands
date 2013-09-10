#!/bin/bash


#Within downloaded glew
#{
#	cp ./include/GL/glew.h /usr/local/include/GL/
#
#	make
#	cp ./lib/libGLEW.a /usr/local/lib/
#}
#go get github.com/go-gl/gl


#Within downloaded glfw
#{
#	cp ./include/GL/glfw.h /usr/local/include/GL/
#
#	make cocoa
#	cp ./lib/cocoa/libglfw.dylib /usr/local/lib/
#}
#go get github.com/go-gl/glfw


# glfw
# ----
curl 'http://superb-dca2.dl.sourceforge.net/project/glfw/glfw/2.7.9/glfw-2.7.9.zip' > ./glfw-2.7.9.zip
open ./glfw-2.7.9.zip
rm ./glfw-2.7.9.zip

cd ./glfw-2.7.9

# Do patch
#//SetFrontProcess( &psn );
#[_glfwWin.window setLevel:NSFloatingWindowLevel];

cp ./include/GL/glfw.h /usr/local/include/GL/

make cocoa
cp ./lib/cocoa/libglfw.dylib /usr/local/lib/

cd ..
rm -r ./glfw-2.7.9

go get github.com/go-gl/glfw
