# Cordova Debug Stats
This is a very simple Cordova plugin for iOS and Android to determine whether the app has been built as a debug or release application.

### Licence
This is licenced under Creative Commons 4.0 International (http://creativecommons.org/licenses/by/4.0/)

You are free to:  
Share — copy and redistribute the material in any medium or format  
Adapt — remix, transform, and build upon the material for any purpose, even commercially.  
The licensor cannot revoke these freedoms as long as you follow the license terms.  

Attribution — You **must** give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

### Requirements
* iOS and Android only
* Cordova >= 3.0.0

### Version
0.0.1

### Installation
```sh
$ cordova plugin add https://github.com/leomylonas/cordova-plugin-debug-status.git
```

### Uninstallation
```sh
cordova plugin remove cordova-plugin-debug-status
```

### Usage
```JavaScript
/**
 * Gets the debug status of the application
 *
 * @param successCallback	- the function to call when the application state is determined
 * @param errorCallback	- the function to call if an error occurs
 */
window.DebugStatus.getDebugStatus(function(status) {
    /*
    Do something within this callback with the retrieved state.
    [status] will be a string with the value of either "release" or "debug"
    */
}, function(error) {
    // do something within this callback if there was an error
});
```