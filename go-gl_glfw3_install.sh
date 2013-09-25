# Do patch
#//SetFrontProcess(&psn);
#[window->ns.object setLevel:NSFloatingWindowLevel];


cmake . -DBUILD_SHARED_LIBS=ON
make


mkdir -p /usr/local/include/GLFW/
cp ./include/GLFW/glfw3.h /usr/local/include/GLFW/
cp -a ./src/libglfw*.dylib /usr/local/lib/
mv /usr/local/lib/libglfw.dylib /usr/local/lib/libglfw3.dylib


CC=clang go get -u "github.com/go-gl/glfw3"
