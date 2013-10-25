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


# Go 1.2
cmake .
make

mkdir -p /usr/local/include/GLFW/
cp ./include/GLFW/glfw3.h /usr/local/include/GLFW/
cp ./src/libglfw3.a /usr/local/lib/

go get "github.com/go-gl/glfw3"
# CGO_CFLAGS="-I/usr/local/include/" CGO_LDFLAGS="-L/usr/local/lib/" go install "github.com/go-gl/glfw3"
