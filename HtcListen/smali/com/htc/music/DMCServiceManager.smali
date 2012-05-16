.class public Lcom/htc/music/DMCServiceManager;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMCServiceManager$SwitchTimerTask;,
        Lcom/htc/music/DMCServiceManager$PgTimerTask;,
        Lcom/htc/music/DMCServiceManager$PosTimerTask;,
        Lcom/htc/music/DMCServiceManager$DMCStatus;,
        Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DIALOG_DMR_CANNOTPLAY:I = 0x3

.field public static final DIALOG_DMR_DISCONNECT:I = 0x0

.field public static final DIALOG_DMR_REQTIMEOUT:I = 0x1

.field public static final DIALOG_DMS_DISCONNECT:I = 0x2

.field public static final DIALOG_WIFI_ERROR:I = 0x4

.field private static final DLNA_COOKIE_GALLERY:I = 0x0

.field private static final DLNA_COOKIE_MUSIC:I = 0x1

.field private static final DLNA_MODE_MUSIC:I = 0x1

.field private static final DLNA_MODE_PHOTO:I = 0x2

.field private static final DLNA_MODE_VIDEO:I = 0x0

.field private static final DMCAPP_STATUS:I = 0x12d

.field public static final DMC_FORCE_OFF:I = 0x2

.field public static final DMC_FORCE_ON:I = 0x1

.field public static final DMC_NOFORCE:I = 0x0

.field private static final DMC_TIMEOUT_KEY:Ljava/lang/String; = "dmc_timeout_setting"

.field public static final INTENT_ACTION_ADDTOPLAYLIST:Ljava/lang/String; = "com.htc.dmc.addtoplaylist"

.field public static final INTENT_ACTION_PLAY:Ljava/lang/String; = "com.htc.dmc.play"

.field public static final INTENT_ACTION_SETSTATESYNC:Ljava/lang/String; = "com.htc.dmc.setstatesync"

.field public static final INTENT_ACTION_SHOWDETAILS:Ljava/lang/String; = "com.htc.dmc.showdetails"

.field private static final LANDSCAPE_GALLERY_PANEL:I = 0xf

.field private static final LANDSCAPE_MUSIC_PANEL:I = 0x6

.field private static final MENU_ADDTOPLAYLIST:I = 0x4b6

.field private static final MENU_CHANGEORDER:I = 0x4b7

.field private static final MENU_EDITNP:I = 0x4b5

.field private static final MENU_PROPERTIES:I = 0x4b3

.field private static final MENU_REPEAT:I = 0x4b2

.field private static final MENU_SETTINGS:I = 0x4b4

.field private static final MENU_SHUFFLE:I = 0x4b1

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.dmcsvcman.metachanged"

.field private static final NOTIFY_CTRL_ERROR:I = 0x64

.field private static final NOTIFY_CTRL_RESPONSE:I = 0x65

.field private static final NOTIFY_DMR_MSG_TIMEOUT:I = 0x69

.field private static final NOTIFY_DMR_REMOVED:I = 0x67

.field private static final NOTIFY_DMR_TIMEOUT:I = 0x68

.field private static final NOTIFY_DMS_REMOVED:I = 0x6a

.field private static final NOTIFY_SHOW_DETAILS:I = 0x6b

.field private static final NOTIFY_VOLBLOCK_TIMEOUT:I = 0xca

.field private static final NOTIFY_VOLUI_TIMEOUT:I = 0xc9

.field private static final NOTIFY_WANT_POWEROFF:I = 0x66

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.dmcsvcman.playstatechanged"

.field private static final PORTRAIT_NORMAL:I = 0x0

.field private static final REFRESH_ALBUMART:I = 0x1

.field private static final REFRESH_DMCPREP:I = 0x9

.field private static final REFRESH_DMR:I = 0x8

.field private static final REFRESH_INFO:I = 0x0

.field private static final REFRESH_LISTINDEX:I = 0x2

.field private static final REFRESH_PLAYSTATE:I = 0x4

.field private static final REFRESH_RSTATE:I = 0x5

.field private static final REFRESH_SSTATE:I = 0x6

.field private static final REFRESH_TIME:I = 0x3

.field private static final REFRESH_VOLUME:I = 0x7

.field protected static final STATE_TIMEOUT_GALLERY:J = 0x88b8L

.field protected static final STATE_TIMEOUT_MSG:J = 0xfa0L

.field protected static final STATE_TIMEOUT_MUSIC:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "[DMCServiceManager]"

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final VOLBLOCK_TIMEOUT:I = 0xfa

.field private static final VOLUI_TIMEOUT:I = 0xbb8

.field protected static final VOL_LEVEL_COUNT:I = 0x32

.field private static mContext:Landroid/app/Activity;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private mAdditionalMessage:Landroid/widget/TextView;

.field private mBtnNextListener:Landroid/view/View$OnClickListener;

.field private mBtnPPListener:Landroid/view/View$OnClickListener;

.field private mBtnPowerListener:Landroid/view/View$OnClickListener;

.field private mBtnPrevListener:Landroid/view/View$OnClickListener;

.field private mBtnVolDownListener:Landroid/view/View$OnClickListener;

.field private mBtnVolListener:Landroid/view/View$OnClickListener;

.field private mBtnVolUpListener:Landroid/view/View$OnClickListener;

.field private mCallbackUnregistered:Z

.field private mCurContainerID:Ljava/lang/String;

.field private mCurContentID:Ljava/lang/String;

.field private mCurCookie:I

.field private mCurDMRID:Ljava/lang/String;

.field private mCurDMRName:Ljava/lang/String;

.field private mCurFCap:I

.field private mCurFilePath:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mCurMode:I

.field private mCurPLDirection:I

.field private mCurPLEndIdx:J

.field private mCurPLStartIdx:J

.field private mCurPushList:[I

.field private mCurServerID:Ljava/lang/String;

.field private mCurSlideDur:I

.field private mCurSource:I

.field private mCurThumbHQ:Z

.field private mDMCActionListener:Landroid/content/BroadcastReceiver;

.field private mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBtnPPEnable:Z

.field private mIsNewIntented:Z

.field private mIsNewLaunch:Z

.field private mIsRequestDetails:Z

.field private mIsResetPlaylist:Z

.field private mLargeStreamIcon:Landroid/widget/ImageView;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mOncePlayed:Z

.field private mOrientation:I

.field private mPosTimer:Ljava/util/Timer;

.field private mSC:Landroid/content/ServiceConnection;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field private mSwitchTimer:Ljava/util/Timer;

.field private mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVolSetBlocked:Z

.field private mVolumeDialog:Landroid/app/Dialog;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeLevel:Landroid/widget/SeekBar;

.field private mVolumeMessage:Landroid/widget/TextView;

.field private mVolumeView:Landroid/view/View;

.field mbNP:Z

.field private mszAppTitle:Ljava/lang/String;

.field private mszListIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sFormatter:Ljava/util/Formatter;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/ServiceConnection;I)V
    .locals 7
    .parameter "context"
    .parameter "osc"
    .parameter "nSource"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1303
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v1, Lcom/htc/music/DMCServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$1;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCActionListener:Landroid/content/BroadcastReceiver;

    .line 664
    new-instance v1, Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    .line 665
    new-instance v1, Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    .line 667
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 717
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    .line 718
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    .line 721
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    .line 723
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    .line 725
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    .line 727
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    .line 728
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    .line 729
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    .line 732
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z

    .line 735
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    .line 736
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    .line 740
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    .line 741
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    .line 742
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSlideDur:I

    .line 744
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    .line 745
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    .line 750
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    .line 752
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    .line 753
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    .line 754
    iput-wide v5, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    .line 755
    iput-wide v5, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    .line 756
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    .line 758
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    .line 759
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    .line 763
    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsBtnPPEnable:Z

    .line 766
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mszAppTitle:Ljava/lang/String;

    .line 768
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;

    .line 770
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 784
    new-instance v1, Lcom/htc/music/DMCServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$2;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 1302
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    .line 1787
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    .line 2032
    new-instance v1, Lcom/htc/music/DMCServiceManager$3;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$3;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    .line 2319
    new-instance v1, Lcom/htc/music/DMCServiceManager$4;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$4;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    .line 2342
    new-instance v1, Lcom/htc/music/DMCServiceManager$5;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$5;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPPListener:Landroid/view/View$OnClickListener;

    .line 2348
    new-instance v1, Lcom/htc/music/DMCServiceManager$6;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$6;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    .line 2373
    new-instance v1, Lcom/htc/music/DMCServiceManager$7;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$7;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPowerListener:Landroid/view/View$OnClickListener;

    .line 2382
    new-instance v1, Lcom/htc/music/DMCServiceManager$8;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$8;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolListener:Landroid/view/View$OnClickListener;

    .line 2404
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mbNP:Z

    .line 2483
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z

    .line 2687
    new-instance v1, Lcom/htc/music/DMCServiceManager$9;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$9;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    .line 2693
    new-instance v1, Lcom/htc/music/DMCServiceManager$10;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$10;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    .line 2861
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    .line 2971
    new-instance v1, Lcom/htc/music/DMCServiceManager$13;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$13;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1304
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMCServiceManager constructor"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    .line 1309
    :goto_0
    sput-object p1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    .line 1310
    iput-object p2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    .line 1312
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/htc/music/DMCServiceManager;->prepareVolumeUI(Landroid/content/Context;)V

    .line 1313
    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iget-boolean v1, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    if-nez v1, :cond_2

    .line 1316
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->InitData()V

    .line 1321
    :goto_1
    const/4 v0, 0x0

    .line 1322
    .local v0, bBindRes:Z
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1323
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1325
    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLService Bind result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    .line 1328
    if-nez v0, :cond_0

    .line 1329
    const-string v1, "[DMCServiceManager]"

    const-string v2, "service binding fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :cond_0
    return-void

    .line 1307
    .end local v0           #bBindRes:Z
    :cond_1
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    goto :goto_0

    .line 1318
    :cond_2
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    goto :goto_1
.end method

.method private ClearPref()Z
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private DMCDoPP(Z)V
    .locals 4
    .parameter "bForcePlay"

    .prologue
    .line 1966
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMC Music Do playpause()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1969
    :cond_0
    const-string v1, "[DMCServiceManager]"

    const-string v2, "do play..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->resume(ILjava/lang/String;)V

    .line 1972
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V

    .line 1986
    :cond_1
    :goto_0
    return-void

    .line 1974
    :cond_2
    const-string v1, "[DMCServiceManager]"

    const-string v2, "do pause..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 1977
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1981
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1982
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1984
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private DMCPreparePlaying()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1814
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-interface {v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControllingRendererID(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    .line 1816
    const/4 v3, 0x0

    .line 1817
    .local v3, nCreateRes:I
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget v9, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager;->mszAppTitle:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1819
    if-eqz v3, :cond_6

    .line 1820
    const-string v6, "[DMCServiceManager]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMediaController OK, cookie:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V

    .line 1827
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    .line 1829
    .local v0, dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v0, :cond_0

    .line 1830
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v7, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v7, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    .line 1831
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-boolean v7, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v7, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    .line 1832
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1833
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1836
    :cond_0
    if-ne v3, v4, :cond_1

    .line 1837
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    .line 1840
    :cond_1
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1842
    const-string v6, "[DMCServiceManager]"

    const-string v7, "DMR doesn\'t support Volume Control..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    if-nez v6, :cond_3

    .line 1857
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    .line 1859
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    .line 1862
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlItemInfo(ILjava/lang/String;)V

    .line 1863
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v7, 0x0

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->setPosUI(I)V
    invoke-static {v6, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2600(Lcom/htc/music/DMCServiceManager$DMCStatus;I)V

    .line 1866
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1867
    .local v2, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0xa

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1952
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/music/DMCServiceManager;->UIRefreshPlayState(Z)V

    .line 1962
    .end local v0           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v3           #nCreateRes:I
    :goto_1
    return v4

    .line 1847
    .restart local v0       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .restart local v3       #nCreateRes:I
    :cond_4
    const-string v6, "[DMCServiceManager]"

    const-string v7, "DMR support Volume Control..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1849
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-virtual {v6}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshVolume()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1953
    .end local v0           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v3           #nCreateRes:I
    :catch_0
    move-exception v1

    .line 1954
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1955
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_5
    move v4, v5

    .line 1956
    goto :goto_1

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v3       #nCreateRes:I
    :cond_6
    move v4, v5

    .line 1853
    goto :goto_1

    .line 1957
    .end local v3           #nCreateRes:I
    :catch_1
    move-exception v1

    .line 1959
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    .line 1960
    goto :goto_1
.end method

.method private GetPref()Z
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1731
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1735
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1764
    :goto_0
    return v1

    .line 1737
    :cond_1
    const-string v3, "DMR"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    .line 1738
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "DMCPref"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1739
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurServerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    .line 1740
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContainerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    .line 1741
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContentID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    .line 1742
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurFilePath"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    .line 1744
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLStartIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    .line 1745
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLEndIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    .line 1746
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLDirection"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    .line 1749
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v5, "CurVol"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1764
    goto :goto_0
.end method

.method private InitData()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1342
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    .line 1343
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->GetPref()Z

    .line 1347
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    .line 1348
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    .line 1350
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1351
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    .line 1356
    :goto_0
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    if-nez v2, :cond_2

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushList_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1360
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    .line 1362
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1363
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    .line 1362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1353
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #i:I
    :cond_1
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    goto :goto_0

    .line 1366
    :cond_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "Values form Pref:::"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    if-nez v2, :cond_5

    .line 1370
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1371
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    .line 1375
    :goto_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "LOCAL SRC -- DMC in \'Local Push\' Mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :goto_3
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--Mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--dmr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--svr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--container:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--FilePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--Shuffle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserShuffleState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--For PL"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  End:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Dir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    if-eqz v2, :cond_3

    .line 1394
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- (LOCAL Only!) PushList len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_3
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--For Status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Vol:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-wide v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-wide v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    .line 1411
    return-void

    .line 1373
    :cond_4
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    goto/16 :goto_2

    .line 1377
    :cond_5
    const-string v2, "[DMCServiceManager]"

    const-string v3, "REMOTE SRC -- DMC in \'Remote Ctrl\' Mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private SavePref()Z
    .locals 4

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "contentID should never be null, save pref aborted!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const/4 v0, 0x0

    .line 1696
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DMCPref"

    const-string v2, "Saved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurServerID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContainerID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContentID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFilePath"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLStartIdx"

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLEndIdx"

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLDirection"

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurVol"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method private TuneVolume(II)V
    .locals 7
    .parameter "nDeltaV"
    .parameter "nBound"

    .prologue
    .line 2640
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    .line 2641
    .local v2, volToastView:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2643
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2644
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    .line 2652
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v1, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    .line 2653
    .local v1, nVol:I
    if-gez p1, :cond_1

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v3, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    if-le v3, p2, :cond_2

    :cond_1
    if-lez p1, :cond_6

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v3, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    sub-int v4, p2, p1

    if-lt v3, v4, :cond_6

    .line 2655
    :cond_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput p2, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    .line 2657
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2658
    if-gez p1, :cond_3

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x1080350

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2660
    :cond_3
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2682
    .end local v1           #nVol:I
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2683
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V

    .line 2684
    return-void

    .line 2648
    :cond_5
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    goto :goto_0

    .line 2662
    .restart local v1       #nVol:I
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    .line 2664
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2665
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x108034d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2667
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v6, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2670
    .end local v1           #nVol:I
    :catch_0
    move-exception v0

    .line 2671
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2672
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2673
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2675
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/DMCServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/DMCServiceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/music/DMCServiceManager;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/DMCServiceManager;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/DMCServiceManager;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/DMCServiceManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/music/DMCServiceManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->DMCDoPP(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/DMCServiceManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMCServiceManager;->TuneVolume(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/DMCServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolBlock()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/DMCServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/music/DMCServiceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    return p1
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "nMode"

    .prologue
    .line 1675
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 1683
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1677
    :pswitch_0
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Video"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1679
    :pswitch_1
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Music"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1681
    :pswitch_2
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Photo"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isServiceHealthy()Z
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1568
    const-string v0, "[DMCServiceManager]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v0, 0x0

    .line 1571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWifiEnabled()Z
    .locals 5

    .prologue
    .line 1768
    const/4 v0, 0x0

    .line 1770
    .local v0, retval:Z
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1771
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1773
    .local v2, wifiState:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1774
    const/4 v0, 0x1

    .line 1776
    :cond_0
    return v0
.end method

.method public static makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"
    .parameter "bHaveHour"
    .parameter "nCurMode"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 125
    sget-object v2, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    const/4 p3, 0x1

    .line 128
    sget-object v1, Lcom/htc/music/DMCServiceManager;->sTimeArgs:[Ljava/lang/Object;

    .line 129
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 130
    div-long v2, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    .line 131
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 133
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, durationformat:Ljava/lang/String;
    if-eqz p3, :cond_1

    cmp-long v2, p1, v8

    if-ltz v2, :cond_1

    .line 137
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/music/DMCServiceManager;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 140
    :cond_1
    if-ne p4, v7, :cond_0

    .line 141
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 3042
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3043
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3044
    return-void
.end method

.method private prepareVolumeUI(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 2875
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 2876
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x10900af

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    .line 2880
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    const v8, 0x1020331

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2881
    .local v0, expBtn:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    const v8, 0x1020330

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2882
    .local v1, expBtnDiv:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2883
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2885
    :cond_1
    const v7, 0x10900b0

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2886
    .local v5, sliderView:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    const v8, 0x102032f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2887
    .local v4, sliderLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 2888
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2904
    :cond_2
    const v7, 0x1020332

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    .line 2905
    const v7, 0x10202d9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    .line 2906
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2907
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2908
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2913
    new-instance v7, Landroid/app/Dialog;

    const v8, 0x10302fa

    invoke-direct {v7, p1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    .line 2914
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    const-string v8, "Volume control"

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2915
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2917
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    new-instance v8, Lcom/htc/music/DMCServiceManager$11;

    invoke-direct {v8, p0}, Lcom/htc/music/DMCServiceManager$11;-><init>(Lcom/htc/music/DMCServiceManager;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2924
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    new-instance v8, Lcom/htc/music/DMCServiceManager$12;

    invoke-direct {v8, p0}, Lcom/htc/music/DMCServiceManager$12;-><init>(Lcom/htc/music/DMCServiceManager;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2947
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2948
    .local v6, window:Landroid/view/Window;
    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 2949
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2950
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2951
    const/16 v7, 0x7d3

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2952
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2953
    const/high16 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2956
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v8, 0x108029b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2969
    :cond_3
    return-void
.end method

.method private resetVolBlock()V
    .locals 4

    .prologue
    const/16 v2, 0xca

    .line 2867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    .line 2868
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2869
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2870
    return-void
.end method

.method private resetVolUITimeout()V
    .locals 4

    .prologue
    const/16 v2, 0xc9

    .line 2863
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2864
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2865
    return-void
.end method

.method private serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2827
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez p2, :cond_0

    .line 2840
    :goto_0
    return-void

    .line 2831
    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2832
    .local v2, outStream:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2833
    .local v1, objOutStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2834
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2835
    .end local v1           #objOutStream:Ljava/io/ObjectOutputStream;
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 2836
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 2837
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2838
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private setDMCLine(I)V
    .locals 5
    .parameter "nForce"

    .prologue
    .line 1993
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDMCLine nForce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1996
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 2007
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->loadInfo()V

    .line 2008
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->refreshInfo()V

    .line 2011
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshTime()V

    .line 2013
    const/4 v1, 0x0

    .line 2014
    .local v1, szLastDMRName:Ljava/lang/String;
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2015
    .local v0, dmrpref:Landroid/content/SharedPreferences;
    const-string v2, "LastDMRName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2018
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    if-nez v2, :cond_2

    .line 2028
    :cond_2
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0
.end method

.method private unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2844
    :try_start_0
    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, p1}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 2845
    .local v2, inStream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2846
    .local v3, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2847
    .local v0, alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2855
    .end local v0           #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v2           #inStream:Ljava/io/FileInputStream;
    .end local v3           #objInStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v0

    .line 2849
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v0, v4

    .line 2850
    goto :goto_0

    .line 2851
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v4

    .line 2852
    goto :goto_0

    .line 2853
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 2854
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "[DMCServiceManager]"

    const-string v6, "can not unserialize arraylist"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 2855
    goto :goto_0
.end method


# virtual methods
.method protected DMRPowerOff(I)V
    .locals 9
    .parameter "nOccured"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 2491
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 2492
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2501
    :cond_0
    :goto_0
    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    packed-switch v4, :pswitch_data_0

    .line 2623
    :goto_1
    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2625
    .local v2, prefDMR:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 2626
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DMR"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2628
    :cond_1
    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v8}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2629
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 2630
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DMCPref"

    const-string v6, "NeedClear"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2632
    :cond_2
    return-void

    .line 2493
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    .end local v2           #prefDMR:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 2494
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2495
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2496
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2498
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2574
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2575
    .local v3, rtt:Landroid/content/Intent;
    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2583
    const-string v4, "[DMCServiceManager]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Goto Music, passing ContentID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2585
    const-string v4, "Server"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2586
    const-string v4, "container"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2587
    const-string v4, "content"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2595
    :goto_2
    const-string v4, "startIdx"

    iget-wide v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2596
    const-string v4, "endIdx"

    iget-wide v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2597
    const-string v4, "direction"

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2599
    const-string v4, "filepath"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2601
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2603
    const-string v4, "Render"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2604
    const-string v4, "SaveRender"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2613
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2589
    :cond_3
    const-string v6, "Server"

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2591
    const-string v6, "container"

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2592
    const-string v4, "content"

    const-string v6, "0"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 2501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public HandleOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 1594
    iget-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    if-ne v3, v4, :cond_1

    .line 1595
    const-string v3, "[DMCServiceManager]"

    const-string v4, "return, since service should already unbinded"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1602
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_2

    .line 1603
    const-string v3, "[DMCServiceManager]"

    const-string v4, "MiddleLayer Service null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1608
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1609
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    .line 1612
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v4, "com.htc.dmc_preferences"

    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1614
    .local v2, prefSetting:Landroid/content/SharedPreferences;
    const-string v3, "dmc_timeout_setting"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, CurTimeout:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    const-string v5, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z

    .line 1619
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1620
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1644
    .end local v0           #CurTimeout:Ljava/lang/String;
    .end local v2           #prefSetting:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1645
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1647
    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    .line 1655
    iget-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z

    if-eqz v3, :cond_4

    .line 1658
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    .line 1659
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1665
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1666
    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleOnServiceConnected mIsNewLaunch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1622
    .restart local v0       #CurTimeout:Ljava/lang/String;
    .restart local v2       #prefSetting:Landroid/content/SharedPreferences;
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const-wide/32 v4, 0x927c0

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1635
    .end local v0           #CurTimeout:Ljava/lang/String;
    .end local v2           #prefSetting:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1636
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1637
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1638
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1640
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1660
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1661
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public StopTimers()V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    .line 1417
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    .line 1418
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 1419
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 1420
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1421
    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 2271
    if-eqz p1, :cond_0

    .line 2272
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2273
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 2274
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const/4 p1, 0x0

    .line 2278
    :goto_0
    return-object p1

    .line 2277
    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Timer already disabled..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3
    .parameter "timer"
    .parameter "timertask"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 2283
    if-nez p1, :cond_1

    .line 2284
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 2285
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 2286
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2289
    :goto_0
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    :goto_1
    return-object p1

    .line 2288
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 2291
    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected UIRefreshPlayState(Z)V
    .locals 13
    .parameter "bReload"

    .prologue
    const-wide/16 v5, 0x1f4

    const-wide/16 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 2707
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-ne v0, v11, :cond_2

    .line 2708
    const/4 v8, 0x1

    .line 2710
    .local v8, nSSState:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 2720
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 2824
    .end local v8           #nSSState:I
    :cond_1
    :goto_1
    :sswitch_0
    return-void

    .line 2712
    .restart local v8       #nSSState:I
    :catch_0
    move-exception v7

    .line 2713
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2714
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2715
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2717
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2722
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_0
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v0, v11, :cond_1

    .line 2723
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$PosTimerTask;

    invoke-direct {v2, p0, v12}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_1

    .line 2734
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_1

    .line 2748
    .end local v8           #nSSState:I
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v10, :cond_7

    .line 2751
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 2752
    .local v9, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_9

    .line 2753
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    .line 2754
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_4

    .line 2755
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    .line 2756
    :cond_4
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v10, :cond_5

    .line 2757
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    .line 2758
    :cond_5
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v11, :cond_6

    .line 2759
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    .line 2760
    :cond_6
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$3902(Lcom/htc/music/DMCServiceManager$DMCStatus;Z)Z

    .line 2762
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2778
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #getter for: Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$3900(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    :goto_3
    sparse-switch v0, :sswitch_data_0

    .line 2805
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 2818
    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput v10, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    goto/16 :goto_1

    .line 2766
    .restart local v9       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 2769
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_2
    move-exception v7

    .line 2770
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2771
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 2772
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 2774
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2778
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_a
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    goto :goto_3

    .line 2781
    :sswitch_2
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v0, v11, :cond_8

    .line 2782
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$PosTimerTask;

    invoke-direct {v2, p0, v12}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_4

    .line 2794
    :sswitch_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_4

    .line 2720
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2778
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_3
    .end sparse-switch

    .line 2805
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1483
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1497
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 1485
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1487
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1491
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    .prologue
    .line 1791
    const/4 v0, 0x0

    .line 1794
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1804
    :cond_0
    :goto_0
    return-object v0

    .line 1796
    :catch_0
    move-exception v1

    .line 1797
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1798
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1799
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1801
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCThumbBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "nWantSize"

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->getDLNAThumbBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v0

    return v0
.end method

.method public makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "szListIndex"
    .parameter "szStatus"

    .prologue
    .line 106
    if-nez p2, :cond_1

    .line 108
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    .line 116
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 113
    .restart local p2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 3061
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3063
    :cond_0
    return-void
.end method

.method public playpause()V
    .locals 1

    .prologue
    .line 3052
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager;->DMCDoPP(Z)V

    .line 3053
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3058
    :cond_0
    return-void
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1424
    const-string v2, "[DMCServiceManager]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 1427
    const-string v2, "[DMCServiceManager]"

    const-string v3, "unregister service callbacks"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1429
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1439
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    .line 1441
    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager;->StopTimers()V

    .line 1443
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastR:Z

    .line 1444
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastS:Z

    .line 1447
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    .line 1450
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v6}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1451
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    const-string v2, "DMCPref"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NeedClear"

    if-ne v2, v3, :cond_2

    .line 1452
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--Do Clear Pref"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->ClearPref()Z

    .line 1457
    :goto_1
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_3

    .line 1458
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1459
    const-string v2, "[DMCServiceManager]"

    const-string v3, "ML Service unbind"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    :goto_2
    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1464
    iput-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    .line 1466
    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager;->StopTimers()V

    .line 1468
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 1469
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1479
    :cond_1
    return-void

    .line 1431
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1432
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1434
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1436
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1455
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #Pref:Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--Pref KEEP"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1461
    :cond_3
    const-string v2, "[DMCServiceManager]"

    const-string v3, "ML ServiceConnection null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setStateSync()V
    .locals 2

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V

    .line 2309
    :cond_0
    return-void
.end method
