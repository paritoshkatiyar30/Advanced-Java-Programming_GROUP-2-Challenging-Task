#!/bin/bash
echo "Compiling University ERP System..."
mkdir -p out
javac -d out -sourcepath src $(find src -name "*.java")
if [ $? -eq 0 ]; then
    echo ""
    echo "Compilation successful! Run ./run.sh to launch."
else
    echo ""
    echo "Compilation FAILED. Make sure JDK is installed."
fi
