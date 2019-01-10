#!/bin/bash

# This script sets up a basic web app following BCBI style guides and using typical packages
# It should be run from the parent directory you want you're app to live in
# e.g. if you want your app to be in ~/src/my_app, you should run this from ~/src

echo "What is your app name?"
read APP_NAME

echo "Creating $APP_NAME"
npx create-react-app $APP_NAME
cd $APP_NAME


BASE_URL=https://raw.githubusercontent.com/bcbi/code_style_guide/master/
ASSET_URL=${BASE_URL}assets/
COMPONENT_URL=${BASE_URL}core_components/

echo "Replacing favicon"
curl -g -L -f -o ./public/favicon.ico ${ASSET_URL}favicon.ico

echo "Creating folders"
cd src
mkdir assets
mkdir components
mkdir __tests__

echo "Adding logo"
curl -g -L -f -o ./assets/bcbi-logo.svg ${ASSET_URL}bcbi-white-h.svg

echo "Replacing css"
curl -g -L -f -o ./App.css ${ASSET_URL}App.css

echo "Replacing App.js, index.js"
curl -g -L -f -o ./App.js ${ASSET_URL}App.js
curl -g -L -f -o ./index.js ${ASSET_URL}index.js

echo "Adding actions, reducer, sagas, client"
curl -g -L -f -o ./actions.js ${COMPONENT_URL}actions.js
curl -g -L -f -o ./reducer.js ${COMPONENT_URL}reducer.js
curl -g -L -f -o ./sagas.js ${COMPONENT_URL}sagas.js
curl -g -L -f -o ./client.js ${COMPONENT_URL}client.js

echo "Adding core components (about page, main page, navigation)"
cd components
curl -g -L -f -o ./AboutPage.js ${COMPONENT_URL}AboutPage.js
curl -g -L -f -o ./ContentPage.js ${COMPONENT_URL}ContentPage.js
curl -g -L -f -o ./HeaderNavigation.js ${COMPONENT_URL}HeaderNavigation.js
curl -g -L -f -o ./Spinner.js ${COMPONENT_URL}Spinner.js
cd ..

echo "Installing packages"
npm install isomorphic-fetch lodash react-router-dom react-spinners bootstrap reactstrap redux redux-saga react-redux seamless-immutable

echo "Running app"
npm start
