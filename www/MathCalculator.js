var exec = require('cordova/exec');

module.exports.sampleMethod = function (arg0, success, error) {
    exec(success, error, 'MathCalculator', 'sampleMethod', [arg0]);
};