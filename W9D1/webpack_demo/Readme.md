Webpack setup

1. mkdir src and mkdir dist

2. put index.html into dist and put all js files in src

3. create an index.js in src (entry file)

4. run 'npm init -y' (creates our package.json)

5. run 'npm install webpack webpack-cli'

6. In package.json scripts key: add "start": "webpack --watch --mode=development"

7. in index.html, add <script src="main.js"></script> (webpack will create the main.js bundle file)

8. run 'npm start'