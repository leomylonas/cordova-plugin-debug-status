window.DebugStatus = {
	getDebugStatus: function(successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "DebugStatus", "getDebugStatus", []);
	}
};
