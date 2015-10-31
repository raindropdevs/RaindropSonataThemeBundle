#!/bin/bash

for i in $( find . -type d -name '[^\.]*' ); do
    cd $i
    echo "Updating $i"

    echo "cleanup files..."
    rm bootstrap.css
    rm bootstrap.min.css

    echo "downloading..."
    wget http://bootswatch.com/$i/bootstrap.css
    wget http://bootswatch.com/$i/bootstrap.min.css

    echo "setting permissions..."
    chmod 755 bootstrap.css
    chmod 755 bootstrap.min.css

    cd ..
done


