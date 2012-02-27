.class public Lcom/android/phone/Settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$SettingsBroadcastReceiver;,
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_3G_POWER_SAVE_KEY:Ljava/lang/String; = "button_3g_powersave_key"

.field private static final BUTTON_ADVANCED_SETTINGS_KDDI:Ljava/lang/String; = "advanced_settings_key"

.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CARRIER_SELECT_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_NATIONAL_ROAMING_KEY:Ljava/lang/String; = "button_national_roaming_key"

.field private static final BUTTON_PREFERED_GSM_UMTS_NETWORK_MODE:Ljava/lang/String; = "preferred_gsm_umts_network_mode_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final BUTTON_ROAMING_SOUND_KEY:Ljava/lang/String; = "button_roaming_sound_key"

.field private static final BUTTON_SMART_ROAMING_KEY:Ljava/lang/String; = "button_smart_data_roaming_key"

.field private static final DBG:Z = true

.field private static final EVENT_SMART_DATA_ROAMING_REQUEST:I = 0x37

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final ROAMING_OPTIONS_AUTOMATIC_VALUEINDEX:I = 0x2

.field private static final ROAMING_OPTIONS_NATIONAL_VALUEINDEX:I = 0x1

.field private static final ROAMING_OPTIONS_NEVER_VALUEINDEX:I = 0x0

.field private static final iface:Ljava/lang/String; = "rmnet0"

.field public static mUserCancelDataRoamingGuard:Z

.field static final preferredNetworkMode:I


# instance fields
.field private carrierSelect:Lcom/htc/preference/HtcPreference;

.field private mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonDataUsage:Lcom/htc/preference/HtcPreference;

.field private mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

.field private mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

.field private mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickSmartDataRoaming:Z

.field private mClickSmartRoaming:Z

.field private mClickedPreference:Lcom/htc/preference/HtcPreference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mDialogShowing:Z

.field mEnableNationalRoaming:Z

.field private mForeground:Z

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

.field mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

.field private mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

.field private mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

.field mNetworkModeIdx:[Ljava/lang/CharSequence;

.field mNetworkModeList:[Ljava/lang/CharSequence;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowSmartButton:Z

.field private mSmartDataRoamingMode:I

.field private mSmartDataRoamingSuccess:Z

.field private mSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z

    .line 153
    new-instance v0, Lcom/android/phone/Settings$SettingsBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Settings$SettingsBroadcastReceiver;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    .line 169
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    .line 1611
    iput-object v1, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    return-void
.end method

.method private UpdatePreferredGsmUmtsNetworkModeSummary(I)V
    .locals 5
    .parameter "NetworkMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1421
    iget-object v0, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1427
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    packed-switch p1, :pswitch_data_0

    .line 1450
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1431
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1435
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1439
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1443
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1447
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v0, v2, :cond_2

    .line 1455
    packed-switch p1, :pswitch_data_1

    .line 1470
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1458
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1463
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1467
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1473
    :cond_2
    packed-switch p1, :pswitch_data_2

    .line 1491
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1476
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1480
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1484
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1488
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1455
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1473
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-nez v0, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1367
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1411
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1370
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1373
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1376
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1379
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1382
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1385
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1388
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1392
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1395
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: LTE only"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1400
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA/EvDo/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1403
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: Global/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1406
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    const-string v1, "Preferred network mode: CDMA/LTE"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredGsmUmtsNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mSwitch:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/Settings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mForeground:Z

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method private getRoamingSoundEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1523
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_sound_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1525
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1523
    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v2

    .line 1525
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1519
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void
.end method

.method private showRoamingWarning()Z
    .locals 3

    .prologue
    .line 1570
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, mccmnc:Ljava/lang/String;
    const-string v1, "22299"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1572
    const/4 v1, 0x1

    .line 1573
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateOperatorInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1579
    iget-object v3, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_2

    .line 1580
    const-string v0, ""

    .line 1581
    .local v0, alpha:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 1582
    .local v2, operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-nez v3, :cond_3

    .line 1583
    :cond_0
    const v3, 0x7f0e02c8

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1596
    :goto_0
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    if-ne v3, v6, :cond_1

    .line 1598
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v1

    .line 1599
    .local v1, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    invoke-virtual {v1}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1600
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1604
    .end local v1           #modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1606
    .end local v0           #alpha:Ljava/lang/String;
    .end local v2           #operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_2
    return-void

    .line 1585
    .restart local v0       #alpha:Ljava/lang/String;
    .restart local v2       #operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_3
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v3, :cond_4

    .line 1586
    const-string v3, "%s(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1587
    :cond_4
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-nez v3, :cond_5

    .line 1588
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1589
    :cond_5
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v3, :cond_6

    .line 1590
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1592
    :cond_6
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1562
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 1565
    :cond_0
    :goto_0
    return v1

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getNetworkManualModeEnabled()Z
    .locals 5

    .prologue
    .line 1543
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1544
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1545
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, networkSelection:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1501
    packed-switch p1, :pswitch_data_0

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1503
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1505
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 176
    iput-boolean v4, p0, Lcom/android/phone/Settings;->mDialogShowing:Z

    .line 177
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 179
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 180
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 181
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 184
    .local v1, netRoaming:Z
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 185
    const-string v3, "NetworkSettings"

    const-string v4, "requestGetSmartDataRoamingStatus()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 187
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setRadioSwitch(Z)V

    .line 188
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    .line 189
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 205
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #netRoaming:Z
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 422
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v10, :cond_0

    .line 423
    new-instance v10, Lcom/android/phone/HtcCdmaGloableRoamingOption;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, p0, v11, v12}, Lcom/android/phone/HtcCdmaGloableRoamingOption;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    .line 428
    :cond_0
    const v10, 0x7f050021

    invoke-virtual {p0, v10}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 430
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 431
    new-instance v10, Lcom/android/phone/Settings$MyHandler;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    .line 436
    .local v6, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x31

    if-ne v10, v11, :cond_f

    .line 437
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    .line 438
    const-string v10, "button_national_roaming_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/NationalRoamingList;

    iput-object v10, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    .line 439
    iget-object v10, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v10, p0}, Lcom/android/phone/NationalRoamingList;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 440
    invoke-direct {p0}, Lcom/android/phone/Settings;->showRoamingWarning()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 441
    iget-object v10, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/NationalRoamingList;->setEnablePopup(Z)V

    .line 444
    :cond_1
    const-string v10, "button_roaming_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 445
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 473
    :cond_2
    :goto_0
    const-string v10, "preferred_network_mode_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 475
    const-string v10, "button_data_usage_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Lcom/htc/preference/HtcPreference;

    .line 477
    const-string v10, "button_smart_data_roaming_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    .line 478
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 480
    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 486
    .local v7, settingsNetworkMode:I
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v10, :cond_13

    .line 490
    new-instance v10, Lcom/android/phone/HtcWorldPhoneOptions;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v6, v11}, Lcom/android/phone/HtcWorldPhoneOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    .line 496
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 497
    new-instance v10, Lcom/android/phone/CdmaOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/CdmaOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 504
    :cond_3
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD3:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 505
    new-instance v10, Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/HtcCdmaRoamingOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    .line 507
    const-string v10, "NetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove BUTTON_ROAMING_KEY("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_4
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 514
    new-instance v10, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 516
    const-string v10, "button_apn_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 517
    const-string v10, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 519
    const-string v10, "button_carrier_sel_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    .line 521
    iget-object v10, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const v11, 0x7f0e04a1

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 523
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v10, :cond_5

    .line 524
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 525
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 528
    :cond_5
    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_11

    .line 529
    const-string v10, "NetworkSettings"

    const-string v11, "Not a GSM phone"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 531
    iget-object v10, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 641
    :cond_6
    :goto_1
    iget-boolean v10, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v10, :cond_7

    .line 642
    const-string v10, "button_roaming_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 643
    :cond_7
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v10, :cond_8

    .line 644
    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/16 v12, 0x37

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    :cond_8
    const-string v10, "button_roaming_sound_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 651
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAMING_SOUND:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_9

    .line 652
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_9

    .line 653
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 654
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 660
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTablet()Z

    move-result v10

    if-nez v10, :cond_a

    .line 661
    const v10, 0x7f050022

    invoke-virtual {p0, v10}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 662
    const-string v10, "button_3g_powersave_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 667
    :cond_a
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v10, :cond_21

    .line 668
    new-instance v1, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 669
    .local v1, airplaneMode:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v1}, Lcom/android/phone/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    .end local v1           #airplaneMode:Landroid/content/IntentFilter;
    :goto_2
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v10, :cond_b

    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v10, :cond_22

    :cond_b
    sget-boolean v10, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    if-eqz v10, :cond_22

    .line 684
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_c

    .line 685
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 695
    :cond_c
    :goto_3
    const-string v10, "throttle"

    invoke-virtual {p0, v10}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ThrottleManager;

    .line 696
    .local v9, tm:Landroid/net/ThrottleManager;
    new-instance v10, Lcom/android/phone/DataUsageListener;

    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Lcom/htc/preference/HtcPreference;

    invoke-direct {v10, p0, v11, v6}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 701
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_MANUAL_NAI:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_d

    .line 702
    const-string v10, "advanced_settings_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 703
    .local v0, advancedSettings:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_d

    .line 704
    const-string v10, "NetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove BUTTON_ADVANCED_SETTINGS_KDDI"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v0           #advancedSettings:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_d
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_GLOBAL_ROAMING_OPTIONS:Z

    if-eqz v10, :cond_e

    .line 711
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 714
    :cond_e
    return-void

    .line 448
    .end local v7           #settingsNetworkMode:I
    .end local v9           #tm:Landroid/net/ThrottleManager;
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    .line 450
    const-string v10, "button_roaming_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 451
    const-string v10, "button_national_roaming_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/NationalRoamingList;

    iput-object v10, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    .line 452
    iget-object v10, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 453
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    .line 454
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_10

    .line 455
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const v11, 0x7f0e009f

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(I)V

    .line 456
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const v11, 0x7f0e00a0

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(I)V

    .line 463
    :cond_10
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAMING_MODE_ENABLER:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 464
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_2

    .line 465
    const-string v10, "NetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove item Roaming Enabler( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 534
    .restart local v7       #settingsNetworkMode:I
    :cond_11
    const-string v10, "NetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate: settingsNetworkMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v10, 0x4

    if-lt v7, v10, :cond_12

    .line 537
    iget-object v10, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 539
    :cond_12
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v3

    .line 540
    .local v3, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    invoke-virtual {v3}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v10

    if-nez v10, :cond_6

    .line 541
    iget-object v10, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    const v11, 0x7f0e04a2

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 549
    .end local v3           #modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    :cond_13
    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 550
    .local v5, phoneType:I
    const/4 v10, 0x2

    if-ne v5, v10, :cond_16

    .line 551
    new-instance v10, Lcom/android/phone/CdmaOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/CdmaOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 552
    iget-object v10, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaOptions;->setButtonRoam(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 557
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD3:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    .line 558
    new-instance v10, Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/HtcCdmaRoamingOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    .line 560
    const-string v10, "NetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove BUTTON_ROAMING_KEY("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_14
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v10, :cond_6

    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_EHRPD_SUPPORT:Z

    if-nez v10, :cond_15

    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v10, :cond_6

    .line 573
    :cond_15
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0xad

    if-eq v10, v11, :cond_6

    .line 574
    new-instance v10, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_1

    .line 578
    :cond_16
    const/4 v10, 0x1

    if-ne v5, v10, :cond_20

    .line 579
    new-instance v10, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v10, p0, v6}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v10, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 582
    const-string v10, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    iput-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 586
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 587
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v11, 0x7f07002a

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 588
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v11, 0x7f07002b

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 610
    :cond_17
    :goto_4
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v10, :cond_18

    .line 611
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 614
    :cond_18
    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getBandCapability()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_19

    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->FEATURE_GSM_UMTS_NETWORK_MODE:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_19

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd2

    if-ne v10, v11, :cond_1f

    .line 618
    :cond_19
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v10, :cond_1a

    .line 619
    const-string v10, "NetworkSettings"

    const-string v11, "remove FEATURE_GSM_UMTS_NETWORK_MODE"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 628
    :cond_1a
    :goto_5
    const-string v10, "button_carrier_sel_key"

    invoke-virtual {v6, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    .line 632
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->mNetworkModeList:[Ljava/lang/CharSequence;

    .line 633
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/Settings;->mNetworkModeIdx:[Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 591
    :cond_1b
    const-string v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, simState:Ljava/lang/String;
    const-string v10, "READY"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 595
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, operator:Ljava/lang/String;
    const-string v10, "ro.cid"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, cid:Ljava/lang/String;
    const-string v10, "VODAP304"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const-string v10, "21401"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    :cond_1c
    const-string v10, "VIDEO001"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const-string v10, "20404"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    :cond_1d
    const-string v10, "DAVE_001"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v10, "20404"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 602
    :cond_1e
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v11, 0x7f07002c

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 603
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    const v11, 0x7f07002d

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    goto/16 :goto_4

    .line 623
    .end local v2           #cid:Ljava/lang/String;
    .end local v4           #operator:Ljava/lang/String;
    .end local v8           #simState:Ljava/lang/String;
    :cond_1f
    const-string v10, "NetworkSettings"

    const-string v11, "do not remove FEATURE_GSM_UMTS_NETWORK_MODE !"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v10, :cond_1a

    .line 625
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    .line 636
    :cond_20
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 672
    .end local v5           #phoneType:I
    :cond_21
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    goto/16 :goto_2

    .line 689
    :cond_22
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_c

    .line 690
    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 911
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 912
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaOptions;->destroy()V

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaRoamingOptions;->destroy()V

    .line 927
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 210
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 887
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 888
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v1, :cond_1

    .line 889
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Settings;->mForeground:Z

    .line 890
    iget-boolean v1, p0, Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getNetworkManualModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 892
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 896
    .end local v0           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 898
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v1}, Lcom/android/phone/HtcCdmaRoamingOptions;->pause()V

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    if-eqz v1, :cond_3

    .line 904
    iget-object v1, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v1}, Lcom/android/phone/HtcWorldPhoneOptions;->pause()V

    .line 907
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 938
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v7, :cond_1

    .line 941
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 943
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 944
    .local v1, buttonNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 947
    .local v5, settingsNetworkMode:I
    if-eq v1, v5, :cond_0

    .line 949
    packed-switch v1, :pswitch_data_0

    .line 992
    const/4 v4, 0x0

    .line 994
    .local v4, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 996
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1000
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v8, v9}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1100
    .end local v1           #buttonNetworkMode:I
    .end local v4           #modemNetworkMode:I
    .end local v5           #settingsNetworkMode:I
    :cond_0
    :goto_1
    return v9

    .line 951
    .restart local v1       #buttonNetworkMode:I
    .restart local v5       #settingsNetworkMode:I
    :pswitch_0
    const/4 v4, 0x7

    .line 952
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 954
    .end local v4           #modemNetworkMode:I
    :pswitch_1
    const/4 v4, 0x6

    .line 955
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 957
    .end local v4           #modemNetworkMode:I
    :pswitch_2
    const/4 v4, 0x5

    .line 958
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 960
    .end local v4           #modemNetworkMode:I
    :pswitch_3
    const/4 v4, 0x4

    .line 961
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 963
    .end local v4           #modemNetworkMode:I
    :pswitch_4
    const/4 v4, 0x3

    .line 964
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 966
    .end local v4           #modemNetworkMode:I
    :pswitch_5
    const/4 v4, 0x2

    .line 967
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 969
    .end local v4           #modemNetworkMode:I
    :pswitch_6
    const/4 v4, 0x1

    .line 970
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 972
    .end local v4           #modemNetworkMode:I
    :pswitch_7
    const/4 v4, 0x0

    .line 973
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 976
    .end local v4           #modemNetworkMode:I
    :pswitch_8
    const/16 v4, 0x8

    .line 977
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 979
    .end local v4           #modemNetworkMode:I
    :pswitch_9
    const/16 v4, 0x9

    .line 980
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 982
    .end local v4           #modemNetworkMode:I
    :pswitch_a
    const/16 v4, 0xa

    .line 983
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 985
    .end local v4           #modemNetworkMode:I
    :pswitch_b
    const/16 v4, 0xb

    .line 986
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 988
    .end local v4           #modemNetworkMode:I
    :pswitch_c
    const/16 v4, 0xc

    .line 989
    .restart local v4       #modemNetworkMode:I
    goto :goto_0

    .line 1005
    .end local v1           #buttonNetworkMode:I
    .end local v4           #modemNetworkMode:I
    .end local v5           #settingsNetworkMode:I
    .restart local p2
    :cond_1
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v7, :cond_3

    .line 1006
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1008
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1009
    .restart local v1       #buttonNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1012
    .restart local v5       #settingsNetworkMode:I
    if-eq v1, v5, :cond_0

    .line 1015
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1016
    packed-switch v1, :pswitch_data_1

    .line 1033
    :pswitch_d
    const/4 v4, 0x0

    .line 1054
    .restart local v4       #modemNetworkMode:I
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredGsmUmtsNetworkModeSummary(I)V

    .line 1056
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v8, v9}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 1018
    .end local v4           #modemNetworkMode:I
    :pswitch_e
    const/4 v4, 0x3

    .line 1019
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1021
    .end local v4           #modemNetworkMode:I
    :pswitch_f
    const/4 v4, 0x2

    .line 1022
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1024
    .end local v4           #modemNetworkMode:I
    :pswitch_10
    const/4 v4, 0x1

    .line 1025
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1027
    .end local v4           #modemNetworkMode:I
    :pswitch_11
    const/4 v4, 0x0

    .line 1028
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1030
    .end local v4           #modemNetworkMode:I
    :pswitch_12
    const/16 v4, 0x9

    .line 1031
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1036
    .end local v4           #modemNetworkMode:I
    :cond_2
    packed-switch v1, :pswitch_data_2

    .line 1050
    const/4 v4, 0x0

    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1038
    .end local v4           #modemNetworkMode:I
    :pswitch_13
    const/4 v4, 0x3

    .line 1039
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1041
    .end local v4           #modemNetworkMode:I
    :pswitch_14
    const/4 v4, 0x2

    .line 1042
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1044
    .end local v4           #modemNetworkMode:I
    :pswitch_15
    const/4 v4, 0x1

    .line 1045
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1047
    .end local v4           #modemNetworkMode:I
    :pswitch_16
    const/4 v4, 0x0

    .line 1048
    .restart local v4       #modemNetworkMode:I
    goto :goto_2

    .line 1063
    .end local v1           #buttonNetworkMode:I
    .end local v4           #modemNetworkMode:I
    .end local v5           #settingsNetworkMode:I
    .restart local p2
    :cond_3
    iget-boolean v7, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-eqz v7, :cond_0

    const-string v7, "button_national_roaming_key"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1069
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1070
    .local v6, strIndex:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1071
    .local v3, index:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v7, v6}, Lcom/android/phone/NationalRoamingList;->setValue(Ljava/lang/String;)V

    .line 1072
    iget-object v7, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v8, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v8}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v6           #strIndex:Ljava/lang/String;
    :goto_3
    if-ltz v3, :cond_0

    .line 1079
    if-nez v3, :cond_4

    .line 1080
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1081
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "national_roaming_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1082
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v10}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    goto/16 :goto_1

    .line 1073
    .end local v3           #index:I
    :catch_0
    move-exception v2

    .line 1074
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "NetworkSettings"

    const-string v8, "could not get/set roaming setting"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    const/4 v3, -0x1

    .restart local v3       #index:I
    goto :goto_3

    .line 1083
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    if-ne v3, v9, :cond_5

    .line 1084
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "national_roaming_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1086
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v9}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    goto/16 :goto_1

    .line 1087
    :cond_5
    if-ne v3, v11, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "national_roaming_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1091
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v11}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    goto/16 :goto_1

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1016
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch

    .line 1036
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v10, 0x1080027

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 223
    iget-object v9, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    if-ne v9, v8, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v8

    .line 226
    :cond_1
    iget-object v9, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/HtcCdmaRoamingOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    if-eq v9, v8, :cond_0

    .line 229
    :cond_2
    iget-object v9, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    if-ne v9, v8, :cond_3

    .line 231
    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    .line 237
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v9, 0x11

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p2, v9, :cond_4

    .line 244
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 247
    .local v5, settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v5           #settingsNetworkMode:I
    :cond_4
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-ne p2, v9, :cond_5

    .line 253
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 256
    .restart local v5       #settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v5           #settingsNetworkMode:I
    :cond_5
    iget-boolean v9, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v9, :cond_b

    .line 262
    const-string v9, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v9}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 267
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v9, :cond_6

    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v9, :cond_8

    :cond_6
    sget-boolean v9, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    if-eqz v9, :cond_8

    .line 269
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_7

    .line 270
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 272
    :cond_7
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->reEnableDataRoamingGuardDialog()V

    goto/16 :goto_0

    .line 279
    :cond_8
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 281
    iput-boolean v7, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 282
    iput-boolean v8, p0, Lcom/android/phone/Settings;->mDialogShowing:Z

    .line 283
    const v4, 0x7f0e02d6

    .line 284
    .local v4, roaming_string_res:I
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    .line 285
    const v4, 0x7f0e00a1

    .line 288
    :cond_9
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x1040014

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x1040013

    invoke-virtual {v7, v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x1040009

    invoke-virtual {v7, v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 298
    .end local v4           #roaming_string_res:I
    :cond_a
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 299
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 300
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 301
    .local v2, netRoaming:Z
    sget-boolean v9, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 303
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 304
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    .line 305
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->clearSDRNotfication()V

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 307
    .local v3, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 315
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #netRoaming:Z
    .end local v3           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_b
    iget-boolean v9, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    if-eq p2, v9, :cond_0

    .line 328
    :cond_c
    iget-object v9, p0, Lcom/android/phone/Settings;->mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v9, :cond_f

    .line 329
    iget-object v9, p0, Lcom/android/phone/Settings;->mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_d

    move v1, v8

    .line 331
    .local v1, isPowerSaveOn:Z
    :goto_1
    if-eqz v1, :cond_e

    .line 332
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e0074

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0e0072

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0e025b

    new-instance v10, Lcom/android/phone/Settings$3;

    invoke-direct {v10, p0}, Lcom/android/phone/Settings$3;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v7, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0e024d

    new-instance v10, Lcom/android/phone/Settings$2;

    invoke-direct {v10, p0}, Lcom/android/phone/Settings$2;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v7, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v9, Lcom/android/phone/Settings$1;

    invoke-direct {v9, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .end local v1           #isPowerSaveOn:Z
    :cond_d
    move v1, v7

    .line 329
    goto :goto_1

    .line 359
    .restart local v1       #isPowerSaveOn:Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "3g_power_save"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 365
    .end local v1           #isPowerSaveOn:Z
    :cond_f
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    if-ne p2, v9, :cond_10

    .line 368
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0e0093

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 370
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v9, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 372
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 374
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    goto/16 :goto_0

    .line 376
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_10
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v9, :cond_12

    .line 378
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "roaming_sound_on"

    iget-object v11, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_11

    move v7, v8

    :cond_11
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 385
    :cond_12
    iget-object v9, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/HtcWorldPhoneOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    if-ne v9, v8, :cond_13

    .line 386
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_0

    .line 392
    :cond_13
    iget-object v9, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/phone/Settings;->mHtcCdmaGloableRoamingOption:Lcom/android/phone/HtcCdmaGloableRoamingOption;

    invoke-virtual {v9, p2}, Lcom/android/phone/HtcCdmaGloableRoamingOption;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    if-ne v9, v8, :cond_14

    .line 393
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_0

    .line 401
    :cond_14
    invoke-virtual {p1, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    move v8, v7

    .line 403
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const v10, 0x7f0e0095

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 727
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 728
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mForeground:Z

    .line 732
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 744
    iget-boolean v4, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-eqz v4, :cond_f

    .line 746
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "data_roaming"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_d

    .line 747
    iget-object v4, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v4, v9}, Lcom/android/phone/NationalRoamingList;->setValueIndex(I)V

    .line 748
    iget-object v4, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v7, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v7}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v7, "preferred_network_mode_key"

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v7, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 775
    :cond_1
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v7, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 788
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/Settings;->updateOperatorInfo()V

    .line 791
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_3

    .line 792
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/Settings;->getRoamingSoundEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 794
    :cond_3
    iget-object v4, p0, Lcom/android/phone/Settings;->mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_4

    .line 795
    iget-object v7, p0, Lcom/android/phone/Settings;->mButton3GPowerSave:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "3g_power_save"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_11

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 799
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 800
    .local v2, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v9, :cond_5

    .line 801
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoamSound:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 805
    :cond_5
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v4, :cond_15

    .line 806
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 807
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 808
    .local v1, netRoaming:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 809
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getSmartDataRoamingState()I

    move-result v4

    iput v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    .line 810
    const-string v4, "NetworkSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resume mSmartDataRoamingMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getDataOnRoamingEnabled()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getDataOnRoamingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getDataOnRoamingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    if-eq v4, v9, :cond_6

    iget v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_6

    .line 812
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 813
    iget v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_12

    .line 814
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 815
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 816
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0e0093

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 839
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getNetworkManualModeEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v1, :cond_8

    .line 841
    :cond_7
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 842
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 844
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 851
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #netRoaming:Z
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v4}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 855
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v4, v5, :cond_a

    .line 856
    iget-object v4, p0, Lcom/android/phone/Settings;->mHtcWorldPhoneOptions:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-virtual {v4}, Lcom/android/phone/HtcWorldPhoneOptions;->resume()V

    .line 858
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_WORLD_PHONE_LAYOUT_SP:Z

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v5, :cond_a

    .line 860
    const-string v4, "NetworkSettings"

    const-string v5, "Not a GSM phone"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v4, :cond_9

    .line 862
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 864
    :cond_9
    iget-object v4, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    if-eqz v4, :cond_a

    .line 865
    iget-object v4, p0, Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 871
    :cond_a
    iget-object v4, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v4, :cond_b

    .line 872
    iget-object v4, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v4}, Lcom/android/phone/CdmaOptions;->resume()V

    .line 878
    :cond_b
    iget-object v4, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    if-eqz v4, :cond_c

    .line 879
    iget-object v4, p0, Lcom/android/phone/Settings;->mHtcCdmaRoamingOptions:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-virtual {v4}, Lcom/android/phone/HtcCdmaRoamingOptions;->resume()V

    .line 882
    :cond_c
    return-void

    .line 750
    .end local v2           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_d
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "national_roaming_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_e

    .line 751
    iget-object v4, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v4, v5}, Lcom/android/phone/NationalRoamingList;->setValueIndex(I)V

    .line 752
    iget-object v4, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v7, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v7}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 754
    :cond_e
    iget-object v4, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v4, v6}, Lcom/android/phone/NationalRoamingList;->setValueIndex(I)V

    .line 755
    iget-object v4, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    iget-object v7, p0, Lcom/android/phone/Settings;->mNationORInterRoaming:Lcom/android/phone/NationalRoamingList;

    invoke-virtual {v7}, Lcom/android/phone/NationalRoamingList;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/phone/NationalRoamingList;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 759
    :cond_f
    iget-boolean v4, p0, Lcom/android/phone/Settings;->mDialogShowing:Z

    if-eqz v4, :cond_10

    .line 760
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_0

    .line 761
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 764
    :cond_10
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_0

    .line 765
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_11
    move v4, v6

    .line 795
    goto/16 :goto_1

    .line 818
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #netRoaming:Z
    .restart local v2       #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v3       #tm:Landroid/telephony/TelephonyManager;
    :cond_12
    iget v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_13

    .line 819
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 820
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 822
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0e009c

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 824
    :cond_13
    iget v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    if-ne v4, v5, :cond_14

    .line 825
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 826
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 828
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 829
    :cond_14
    iget v4, p0, Lcom/android/phone/Settings;->mSmartDataRoamingMode:I

    const/4 v7, 0x6

    if-ne v4, v7, :cond_6

    .line 830
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 831
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 833
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0e009b

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 847
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #netRoaming:Z
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_15
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onWindowFocusChanged(Z)V

    .line 718
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 719
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mEnableNationalRoaming:Z

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 723
    :cond_0
    return-void
.end method
