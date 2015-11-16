#!/bin/bash

for i in $( find . -type d -name '[^\.]*' ); do
    cd $i
    echo "Updating $i"

    echo "cleanup files..."
    rm bootstrap.css
    rm bootstrap.min.css

    echo "downloading..."
    if [ $i == "./default" ]; then
        wget http://bootswatch.com/bower_components/bootstrap/dist/css/bootstrap.css
        wget http://bootswatch.com/bower_components/bootstrap/dist/css/bootstrap.min.css
    else
        if [ $i != "./fonts" ]; then
            wget http://bootswatch.com/$i/bootstrap.css
            wget http://bootswatch.com/$i/bootstrap.min.css
        fi
    fi

    echo "setting permissions..."
    chmod 755 bootstrap.css
    chmod 755 bootstrap.min.css

    cd ..
done


