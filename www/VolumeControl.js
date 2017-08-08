var exec = require("cordova/exec");

function VolumeControl() {};

VolumeControl.prototype.volumeControl = function(success, failed, option) {
  exec(success,failed, 'volumeControl', 'setSysVolumeWith', option);
};

var volumeControl = new VolumeControl();
module.exports = volumeControl;


