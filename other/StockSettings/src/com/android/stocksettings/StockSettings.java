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
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
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
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.CheckBox;
import android.widget.TextView;
import android.app.ActionBar;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Locale;

public class StockSettings extends PreferenceActivity{
    private static final String LOG_TAG = "StockSettings";

    private static final String STOCK_SET_ENTRY_DB_KEY = "ps_enabled";
    private static final String STOCK_SET_ENTRY_CB_KEY = "stock_settings_entry";
    private static final String SHOW_NOTICE_NEXT_TIME = "show_notice_enabled";

    private CheckBoxPreference mStockSetEntry;
    private CheckBox mShowNotice;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }

        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mStockSetEntry = (CheckBoxPreference) findPreference(STOCK_SET_ENTRY_CB_KEY);
        updateState();
        getContentResolver().registerContentObserver(
                Settings.System.getUriFor(STOCK_SET_ENTRY_DB_KEY), true, new PSChangeObserver());
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mStockSetEntry) {
            int selectResult = mStockSetEntry.isChecked()?1:0;

            Settings.System.putInt(getContentResolver(), STOCK_SET_ENTRY_DB_KEY, selectResult);

            if (mStockSetEntry.isChecked()) {

                mStockSetEntry.getContext().sendBroadcast(new Intent("com.htc.android.start_IPT"));
                mStockSetEntry.getContext().sendBroadcast(new Intent("com.htc.ipt.connecting"));

                showNotice();
            }
            else {
                mStockSetEntry.getContext().sendBroadcast(new Intent("com.htc.android.stop_IPT"));
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

    private String createNoticeInfoUrl() {
        String HELP_URL = "file:///android_asset/html/%y%z/notice_info.html";
        String HELP_PATH = "html/%y%z/notice_info.html";

        Locale locale = Locale.getDefault();
        final AssetManager am = getAssets();

        String path = HELP_PATH.replace("%y", locale.getLanguage().toLowerCase());
        path = path.replace("%z", '_'+locale.getCountry().toLowerCase());
        boolean useCountry = true;
        InputStream is = null;
        try {
            is = am.open(path);
        } catch (Exception ignored) {
            useCountry = false;
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (Exception ignored) {}
            }
        }


        String url = HELP_URL.replace("%y", locale.getLanguage().toLowerCase());
        url = url.replace("%z", useCountry ? '_'+locale.getCountry().toLowerCase() : "");

        return url;
    }
    private void showNotice() {
//        if (Settings.System.getInt(getContentResolver(), SHOW_NOTICE_NEXT_TIME, 1) != 0) {
//            View contentView = getLayoutInflater().inflate(R.layout.notice, null);
//            mShowNotice = (CheckBox) contentView.findViewById(R.id.notice);

            String url = createNoticeInfoUrl();

            WebView contentView = new WebView(this);
            contentView.loadUrl(url);

            Dialog dialog = new AlertDialog.Builder(this, AlertDialog.THEME_HOLO_LIGHT)
                    .setIconAttribute(android.R.attr.alertDialogIcon)
                    .setTitle(R.string.PSTitle)
                    .setView(contentView)
                    .setPositiveButton(R.string.PSButton, new OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
//                            Settings.System.putInt(getContentResolver(), SHOW_NOTICE_NEXT_TIME,
//                                    mShowNotice.isChecked() ? 0 : 1);
                        }
                    })
                    .show();
//        }
    }

    void updateState() {
        mStockSetEntry.setChecked(Settings.System.getInt(getContentResolver(), STOCK_SET_ENTRY_DB_KEY, 0) != 0);
    }

    private class PSChangeObserver extends ContentObserver {
        public PSChangeObserver() {
            super(new Handler());
        }

        @Override
        public void onChange(boolean selfChange) {
            updateState();
        }
    }
}


