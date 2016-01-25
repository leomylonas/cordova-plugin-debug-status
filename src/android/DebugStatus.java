package co.mylonas.cordova.debugstatus;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class DebugStatus extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {
        if (action.equals("getDebugStatus")) {
			Context ctx = this.cordova.getActivity().getApplicationContext();
			String status = "release";
			try {
	            if ((ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 0).applicationInfo.flags & ApplicationInfo.FLAG_DEBUGGABLE) != 0) {
	                status = "debug";
	            }
	        } catch (NameNotFoundException e){
	            // do nothing
	        }
            callbackContext.success(status);
            return true;
        } else {
            return false;
        }
    }
}
