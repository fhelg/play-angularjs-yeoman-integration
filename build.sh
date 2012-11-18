#!/bin/bash

# Angularjs directories
PROJECT_DIR=$(pwd)
ANGULARJS_DIR=$PROJECT_DIR/angularjs-app
DIST_ANGULARJS_DIR=$ANGULARJS_DIR/dist

#Play directories
PLAY_DIR=$PROJECT_DIR/play-app
PLAY_VIEWS_DIR=$PLAY_DIR/app/views
PLAY_ASSETS_DIR=$PLAY_DIR/public
PLAY_CSS_DIR=$PLAY_ASSETS_DIR/stylesheets/angular
PLAY_JS_DIR=$PLAY_ASSETS_DIR/javascripts/angular

# Config
echo current folder is $PROJECT_DIR

# First clean the old files
echo cleaning $PLAY_JS_DIR ...
cd $PLAY_JS_DIR && rm -rf *.js
echo cleaned $PLAY_JS_DIR

echo cleaning PLAY_CSS_DIR ...
cd $PLAY_CSS_DIR && rm -rf *.css
echo cleaned $PLAY_CSS_DIR

# Build the Angular.js app
echo building Angularjs app ...
cd $ANGULARJS_DIR && yeoman build

# Copy the html file to the view Play folder
echo copying html files to Play! views folder
cd $DIST_ANGULARJS_DIR && cp ./index.html $PLAY_VIEWS_DIR
echo copied html files to Play! views folder

# Copy the css to the Play corresponding assets folder
echo copying css files to Play! assets folder
cd $DIST_ANGULARJS_DIR && cp styles/*.main.css $PLAY_CSS_DIR
echo copied css files to Play! assets folder

# Copy the js files to Play corresponding assets folder
echo copying js files to Play! assets folder
cd $DIST_ANGULARJS_DIR && cp -r scripts/* $PLAY_JS_DIR
echo copied js files to Play! assets folder