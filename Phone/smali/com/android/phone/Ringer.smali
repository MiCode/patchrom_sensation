.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;,
        Lcom/android/phone/Ringer$DefaultRingtoneHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Ringer"

.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final PLAY_RING_LOOP:I = 0x2

.field private static final PLAY_RING_ONCE:I = 0x1

.field private static final RECREATE_DEFAULT_RINGTONE:I = 0x64

.field private static final START_VIBRATE:I = 0x4

.field private static final STOP_RING:I = 0x3

.field private static final VIBRATE_LENGTH:I = 0x3e8

.field private static sDisableRingtoneCache:Z


# instance fields
.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mDefaultRingtonObserver:Landroid/database/ContentObserver;

.field mDefaultRingtone:Landroid/media/Ringtone;

.field mDefaultRingtoneHandler:Landroid/os/Handler;

.field private mDonotRing:Z

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRepeatTimes:I

.field private mRequestTone:Landroid/media/MediaPlayer;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingPending:Z

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mToneId:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

.field sdMountedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    .line 116
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/phone/Ringer;->sDisableRingtoneCache:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 96
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 104
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 105
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 115
    iput-object v5, p0, Lcom/android/phone/Ringer;->mDefaultRingtoneHandler:Landroid/os/Handler;

    .line 143
    new-instance v1, Lcom/android/phone/Ringer$1;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mDefaultRingtonObserver:Landroid/database/ContentObserver;

    .line 163
    new-instance v1, Lcom/android/phone/Ringer$2;

    invoke-direct {v1, p0}, Lcom/android/phone/Ringer$2;-><init>(Lcom/android/phone/Ringer;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->sdMountedReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 189
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 192
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/Ringer;->mDefaultRingtonObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer;->sdMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    new-instance v1, Lcom/android/phone/Ringer$DefaultRingtoneHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/Ringer$DefaultRingtoneHandler;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mDefaultRingtoneHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/Ringer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/Ringer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/Ringer;->mRepeatTimes:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/phone/Ringer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/Ringer;->mRepeatTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/Ringer;->mRepeatTimes:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/phone/Ringer;->sDisableRingtoneCache:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/Ringer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->mRingPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/Ringer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/phone/Ringer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method private copyFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 10
    .parameter "dbfile"
    .parameter "is"

    .prologue
    .line 864
    sget-boolean v6, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v6, :cond_0

    .line 865
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copy file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to the database directory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    const/4 v5, 0x1

    .line 870
    .local v5, success:Z
    const/4 v3, 0x0

    .line 872
    .local v3, os:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 873
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already exists, copy cancelled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 875
    const/4 v6, 0x1

    .line 892
    if-eqz p2, :cond_1

    .line 893
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 901
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 902
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 910
    :cond_2
    :goto_1
    return v6

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Ringer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v5, 0x0

    goto :goto_0

    .line 903
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 904
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "Ringer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v5, 0x0

    goto :goto_1

    .line 877
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 878
    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v4, os:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_4
    new-array v0, v6, [B

    .line 879
    .local v0, buf:[B
    if-eqz p2, :cond_7

    if-eqz v4, :cond_7

    .line 881
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-ltz v2, :cond_6

    .line 882
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 886
    .end local v0           #buf:[B
    .end local v2           #len:I
    :catch_2
    move-exception v1

    move-object v3, v4

    .line 887
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception in copying the file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 889
    const/4 v5, 0x0

    .line 892
    if-eqz p2, :cond_4

    .line 893
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 901
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 902
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    :goto_5
    move v6, v5

    .line 910
    goto/16 :goto_1

    .line 884
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v2       #len:I
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :cond_6
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 892
    .end local v2           #len:I
    :cond_7
    if-eqz p2, :cond_8

    .line 893
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 901
    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 902
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    move-object v3, v4

    .line 908
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 894
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 895
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v5, 0x0

    goto :goto_6

    .line 903
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 904
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v5, 0x0

    move-object v3, v4

    .line 909
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 894
    .end local v0           #buf:[B
    :catch_5
    move-exception v1

    .line 895
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 903
    :catch_6
    move-exception v1

    .line 904
    const-string v6, "Ringer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v5, 0x0

    .line 909
    goto/16 :goto_5

    .line 891
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 892
    :goto_7
    if-eqz p2, :cond_a

    .line 893
    :try_start_b
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 901
    :cond_a
    :goto_8
    if-eqz v3, :cond_b

    .line 902
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 908
    :cond_b
    :goto_9
    throw v6

    .line 894
    :catch_7
    move-exception v1

    .line 895
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "Ringer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v5, 0x0

    goto :goto_8

    .line 903
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 904
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "Ringer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the  io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v5, 0x0

    goto :goto_9

    .line 891
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 886
    :catch_9
    move-exception v1

    goto/16 :goto_3
.end method

.method private getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "drmuri"

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 790
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    .line 794
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 795
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 798
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 799
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 801
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 802
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 804
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 805
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 814
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 816
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 817
    const/4 v11, 0x0

    .line 821
    :cond_1
    return-object v10

    .line 814
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 816
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 817
    const/4 v11, 0x0

    :cond_2
    throw v1
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 239
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVibrating()Z
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 845
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 597
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "makeLooper"

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_1

    .line 599
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 600
    new-instance v0, Lcom/android/phone/Ringer$4;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$4;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 783
    :cond_1
    return-void
.end method


# virtual methods
.method isRinging()Z
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method requestToneWithLooping(I)V
    .locals 3
    .parameter "toneId"

    .prologue
    .line 287
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer;->stopRequestedTone(I)V

    .line 288
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    .line 289
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 292
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 293
    iput p1, p0, Lcom/android/phone/Ringer;->mToneId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    .line 297
    const-string v1, "Ringer"

    const-string v2, "Couldn\'t create tone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method requestToneWithRepeatTimes(IILcom/android/phone/CallNotifier;)V
    .locals 4
    .parameter "toneId"
    .parameter "repeatTimes"
    .parameter "callnotifier"

    .prologue
    const/4 v3, 0x0

    .line 303
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer;->stopRequestedTone(I)V

    .line 304
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    .line 305
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 306
    iput p2, p0, Lcom/android/phone/Ringer;->mRepeatTimes:I

    .line 307
    iput p1, p0, Lcom/android/phone/Ringer;->mToneId:I

    .line 308
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/phone/Ringer$3;

    invoke-direct {v2, p0, p3}, Lcom/android/phone/Ringer$3;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/CallNotifier;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 324
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 325
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    .line 329
    iput v3, p0, Lcom/android/phone/Ringer;->mRepeatTimes:I

    .line 330
    const-string v1, "Ringer"

    const-string v2, "Couldn\'t create dial tone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    invoke-virtual {p3}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterNoCall()V

    goto :goto_0
.end method

.method ring()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 354
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ring()..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/Ringer;->mDonotRing:Z

    if-eqz v2, :cond_2

    .line 357
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "mDonotRing..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    monitor-enter p0

    .line 363
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 364
    iget-object v2, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-interface {v2, v3, v4}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 387
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 389
    :cond_3
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "skipping ring because volume is zero or isRingtonePlaying"

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getAudioMode(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 392
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 396
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v2, :cond_8

    .line 397
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 399
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v2, :cond_6

    .line 400
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    :cond_6
    new-instance v2, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 404
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "- starting vibrator..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v2}, Lcom/android/phone/Ringer$VibratorThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 418
    :cond_8
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 453
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 366
    :cond_9
    :try_start_4
    iget-object v2, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v3, 0x1

    const v4, 0xffffff

    invoke-interface {v2, v3, v4}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 368
    :catch_0
    move-exception v2

    goto :goto_1

    .line 410
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :catch_1
    move-exception v1

    .line 412
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Ringer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 421
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 422
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_b

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 426
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .line 432
    :cond_b
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_d

    .line 435
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_c

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delaying ring by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 443
    :cond_c
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 450
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 591
    if-eqz p1, :cond_0

    .line 592
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 594
    :cond_0
    return-void
.end method

.method setDonotRing(Z)V
    .locals 0
    .parameter "donot"

    .prologue
    .line 919
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->mDonotRing:Z

    .line 920
    return-void
.end method

.method shouldVibrate()Z
    .locals 3

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 458
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    return v1
.end method

.method shouldVibrateOut()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public startVibrate([JI)V
    .locals 1
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 860
    :cond_0
    monitor-exit p0

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startVibrateforMoConnected()V
    .locals 3

    .prologue
    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrateOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 281
    :cond_0
    monitor-exit p0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopRequestedTone(I)V
    .locals 1
    .parameter "toneId"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 338
    iget v0, p0, Lcom/android/phone/Ringer;->mToneId:I

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_2

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;

    .line 347
    :cond_2
    return-void
.end method

.method stopRing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    monitor-enter p0

    .line 480
    :try_start_0
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 489
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 490
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 512
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 513
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 514
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 515
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 531
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_4

    .line 532
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 533
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 534
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 537
    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 538
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    iput-boolean v4, p0, Lcom/android/phone/Ringer;->mDonotRing:Z

    .line 540
    return-void

    .line 528
    :cond_5
    :try_start_3
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 484
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method stopVibrate()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_1

    .line 837
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- stopRing: cleaning up vibrator thread manually..."

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 838
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 841
    :cond_1
    return-void
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method

.method vibrate()V
    .locals 2

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 829
    new-instance v0, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 830
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- starting vibrator manually..."

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 833
    :cond_1
    return-void
.end method
