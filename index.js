/**
 * Dependencies
 */
var CoffeeScript= require("coffee-script");

// Register CoffeeScript if exits
if(CoffeeScript.register) CoffeeScript.register();

var Snamel = require('./lib/Snamel');

/**
 * Exports
 */
module.exports = Snamel.convert;
