/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.stocksettings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;

import java.util.ArrayList;

public class StockSettings extends PreferenceActivity{
    private static final String LOG_TAG = "StockSettings";

    private static final String HTC_FASTBOOT_DB_KEY = "enable_fastboot";
    private static final String HTC_FASTBOOT_CB_KEY = "htc_fastboot";

    private CheckBoxPreference mHtcFastboot;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mHtcFastboot = (CheckBoxPreference) findPreference(HTC_FASTBOOT_CB_KEY);
        updateState();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mHtcFastboot) {
            if (mHtcFastboot.isChecked()) {
                Settings.System.putInt(getContentResolver(), HTC_FASTBOOT_DB_KEY, 1);
            } else {
                Settings.System.putInt(getContentResolver(), HTC_FASTBOOT_DB_KEY, 0);
            }
        }
        else {
            //do nothing
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }

    private void updateState() {
        mHtcFastboot.setChecked(Settings.System.getInt(getContentResolver(), HTC_FASTBOOT_DB_KEY, 1) != 0);
    }
}


