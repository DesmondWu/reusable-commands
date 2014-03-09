# GLFW
git clone https://github.com/glfw/glfw.git
cd ./glfw
git checkout latest

# Optional patch
#//SetFrontProcess(&psn);
#[window->ns.object setLevel:NSFloatingWindowLevel];


# Go 1.2
cmake .
make

# Alternatively, just `sudo make install`
mkdir -p /usr/local/include/GLFW/
cp ./include/GLFW/glfw3.h /usr/local/include/GLFW/
cp ./src/libglfw3.a /usr/local/lib/

go get -u "github.com/go-gl/glfw3"
# CGO_CFLAGS="-I/usr/local/include/" CGO_LDFLAGS="-L/usr/local/lib/" go install "github.com/go-gl/glfw3"
