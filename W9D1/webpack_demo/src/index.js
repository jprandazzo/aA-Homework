// entry file, the file that gets run first

import Game from "./game";

//when using webpack, you need to change 'const game = new Game()' to 'window.game = new Game()'
window.game = new Game();