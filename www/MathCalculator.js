var exec = require('cordova/exec');

module.exports.add = function(args0, success, error) {
    exec(success, error, 'MathCalculator', 'add', [args0]);
}

module.exports.substract = function(args0, success, error) {
    exec(success, error, 'MathCalculator', 'substract', [args0]);
}


module.exports.sampleMethod = function (arg0, success, error) {
    exec(success, error, 'MathCalculator', 'sampleMethod', [arg0]);
};