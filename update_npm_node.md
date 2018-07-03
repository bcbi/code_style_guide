## Update NPM

* Get latest npm

  `npm i -g npm`

* Update global npm packages

  `npm update -g`


## Update Node

* Find out which versions of Node.js you may have installed and which one of those you're currently using:

  `node --version`
  `nvm ls`


* List all versions of Node.js available for installation:

  `nvm ls-remote`

* Assuming you would pick Node.js v8.1.0 for installation you'd type the following to install that version:

  `nvm install 8.1.0`

* You are then free to choose between installed versions of Node.js. So if you would need to use an older version like v4.2.0 you would set it as the active version like this:

  `nvm use 4.2`
