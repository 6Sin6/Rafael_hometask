rm -rf build/
mkdir build
cd build

# Generate build files using CMake
cmake ..

# Build the project
cmake --build .


./Rafael_task.py
