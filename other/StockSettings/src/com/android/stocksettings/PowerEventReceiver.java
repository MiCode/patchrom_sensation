package com.android.stocksettings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;


public class PowerEventReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        if(Intent.ACTION_POWER_DISCONNECTED.equals(intent.getAction())
                && (Settings.System.getInt(context.getContentResolver(), "ps_enabled", 0) != 0)) {
            Settings.System.putInt(context.getContentResolver(), "ps_enabled", 0);
        }
    }
}
