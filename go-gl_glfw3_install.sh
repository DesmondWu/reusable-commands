# Do patch
#//SetFrontProcess(&psn);
#[window->ns.object setLevel:NSFloatingWindowLevel];


mkdir result
cd result
cmake .. -DBUILD_SHARED_LIBS=ON
make
# Or
cmake . -DBUILD_SHARED_LIBS=ON
make


mkdir -p /usr/local/include/GLFW/
cp ./include/GLFW/glfw3.h /usr/local/include/GLFW/
cp -a ./src/libglfw*.dylib /usr/local/lib/


go get -u "github.com/go-gl/glfw3"
