alias file_remove='function __file_remove__() {
    if [ -d "$1" ]; then
        rm -f "$1"/*
        echo "All files in directory $1 have been removed."
    else
        echo "Error: $1 is not a valid directory."
    fi
}; __file_remove__'
