.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DIR:Ljava/io/File;

.field static final WALLPAPER_FILE:Ljava/io/File;


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHeight:I

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mImageWallpaperComponent:Landroid/content/ComponentName;

.field mImageWallpaperPending:Z

.field mLastDiedTime:J

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mName:Ljava/lang/String;

.field mNextWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field mWallpaperUpdating:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 329
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v0, Lcom/android/server/WallpaperManagerService$1;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x608

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 144
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 145
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 171
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    .line 331
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 332
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 334
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 335
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 336
    sget-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 337
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 338
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    return-void
.end method

.method private loadSettingsLocked()V
    .locals 20

    .prologue
    .line 774
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 775
    .local v9, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v11, 0x0

    .line 776
    .local v11, stream:Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 777
    .local v8, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 779
    .local v13, success:Z
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 780
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v12, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 781
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v10, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 785
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .line 786
    .local v15, type:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 787
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 788
    .local v14, tag:Ljava/lang/String;
    const-string v17, "wp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 790
    const/16 v17, 0x0

    const-string v18, "width"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 791
    const/16 v17, 0x0

    const-string v18, "height"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 794
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    move/from16 v17, v0

    const/16 v18, 0x320

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move/from16 v17, v0

    const/16 v18, 0x320

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 796
    const/16 v17, 0x600

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 797
    const/16 v17, 0x400

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 801
    :cond_1
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 802
    const/16 v17, 0x0

    const-string v18, "component"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, comp:Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v17, "android"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 808
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 819
    .end local v3           #comp:Ljava/lang/String;
    .end local v14           #tag:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 820
    const/4 v13, 0x1

    move-object v11, v12

    .line 833
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #stream:Ljava/io/FileInputStream;
    .end local v15           #type:I
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v11, :cond_4

    .line 834
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 840
    :cond_4
    :goto_2
    if-nez v13, :cond_5

    .line 841
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 842
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 843
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 847
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 848
    .local v16, wm:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 849
    .local v6, d:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    .line 856
    .local v2, baseSize:I
    sget-boolean v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v17, :cond_9

    .line 858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 859
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 861
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    .line 862
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 886
    :cond_7
    :goto_3
    return-void

    .line 803
    .end local v2           #baseSize:I
    .end local v6           #d:Landroid/view/Display;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v16           #wm:Landroid/view/WindowManager;
    .restart local v3       #comp:Ljava/lang/String;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #type:I
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 821
    .end local v3           #comp:Ljava/lang/String;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #stream:Ljava/io/FileInputStream;
    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #type:I
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 822
    .local v7, e:Ljava/lang/NullPointerException;
    :goto_4
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 823
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 824
    .local v7, e:Ljava/lang/NumberFormatException;
    :goto_5
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 825
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v7

    .line 826
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 827
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v7

    .line 828
    .local v7, e:Ljava/io/IOException;
    :goto_7
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 829
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 830
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed parsing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 867
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #baseSize:I
    .restart local v6       #d:Landroid/view/Display;
    .restart local v16       #wm:Landroid/view/WindowManager;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 868
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    .line 869
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    goto/16 :goto_3

    .line 872
    :cond_b
    invoke-virtual {v6}, Landroid/view/Display;->getRawWidth()I

    move-result v5

    .line 873
    .local v5, curW:I
    invoke-virtual {v6}, Landroid/view/Display;->getRawHeight()I

    move-result v4

    .line 875
    .local v4, curH:I
    if-ge v5, v4, :cond_c

    .line 876
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 877
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    goto/16 :goto_3

    .line 879
    :cond_c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 880
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    goto/16 :goto_3

    .line 836
    .end local v2           #baseSize:I
    .end local v4           #curH:I
    .end local v5           #curW:I
    .end local v6           #d:Landroid/view/Display;
    .end local v16           #wm:Landroid/view/WindowManager;
    :catch_5
    move-exception v17

    goto/16 :goto_2

    .line 829
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 827
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 825
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 823
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 821
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 732
    const-string v0, "/data/system/wallpaper_info.xml"

    .line 733
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyCallbacksLocked()V
    .locals 4

    .prologue
    .line 708
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 709
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 711
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 720
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 722
    return-void

    .line 712
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private saveSettingsLocked()V
    .locals 8

    .prologue
    .line 737
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 738
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 740
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 742
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 743
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 745
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 751
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    :cond_0
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 757
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 758
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 769
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 762
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 767
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 764
    :catch_1
    move-exception v5

    goto :goto_2

    .line 759
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V
    .locals 9
    .parameter "conn"

    .prologue
    const/4 v8, 0x0

    .line 695
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v7

    .line 699
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_0

    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v8, v8}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    .locals 19
    .parameter "componentName"
    .parameter "force"
    .parameter "fromUser"

    .prologue
    .line 529
    if-nez p2, :cond_1

    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v13, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-nez v13, :cond_0

    .line 532
    if-nez p1, :cond_1

    .line 535
    const/4 v13, 0x1

    .line 666
    :goto_0
    return v13

    .line 537
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 540
    const/4 v13, 0x1

    goto :goto_0

    .line 546
    :cond_1
    if-nez p1, :cond_3

    .line 547
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104001b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, defaultComponent:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 551
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 554
    :cond_2
    if-nez p1, :cond_3

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 562
    .end local v3           #defaultComponent:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x1080

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    .line 564
    .local v11, si:Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_WALLPAPER"

    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 565
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 568
    .local v7, msg:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 569
    new-instance v13, Ljava/lang/SecurityException;

    invoke-direct {v13, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v7           #msg:Ljava/lang/String;
    .end local v11           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v4

    .line 659
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 660
    .restart local v7       #msg:Ljava/lang/String;
    if-eqz p3, :cond_f

    .line 661
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 571
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11       #si:Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_1
    const-string v13, "WallpaperService"

    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 575
    .end local v7           #msg:Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .line 577
    .local v12, wi:Landroid/app/WallpaperInfo;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.service.wallpaper.WallpaperService"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v6, intent:Landroid/content/Intent;
    if-eqz p1, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v6, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 582
    .local v9, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_6

    .line 583
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v10, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 584
    .local v10, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v13, v10, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_9

    .line 587
    :try_start_2
    new-instance v12, Landroid/app/WallpaperInfo;

    .end local v12           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v12, v14, v13}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 604
    .end local v10           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v12       #wi:Landroid/app/WallpaperInfo;
    :cond_6
    if-nez v12, :cond_b

    .line 605
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service is not a wallpaper: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 607
    .restart local v7       #msg:Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 608
    new-instance v13, Ljava/lang/SecurityException;

    invoke-direct {v13, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 588
    .end local v7           #msg:Ljava/lang/String;
    .end local v12           #wi:Landroid/app/WallpaperInfo;
    .restart local v10       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v4

    .line 589
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_7

    .line 590
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 592
    :cond_7
    const-string v13, "WallpaperService"

    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 594
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 595
    .local v4, e:Ljava/io/IOException;
    if-eqz p3, :cond_8

    .line 596
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 598
    :cond_8
    const-string v13, "WallpaperService"

    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 582
    .end local v4           #e:Ljava/io/IOException;
    .restart local v12       #wi:Landroid/app/WallpaperInfo;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 610
    .end local v10           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v7       #msg:Ljava/lang/String;
    :cond_a
    const-string v13, "WallpaperService"

    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 617
    .end local v5           #i:I
    .end local v7           #msg:Ljava/lang/String;
    .end local v9           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b
    new-instance v8, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V

    .line 618
    .local v8, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 619
    const-string v13, "android.intent.extra.client_label"

    const v14, 0x1040442

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    const-string v13, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SET_WALLPAPER"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x1040443

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v13, v6, v8, v14}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v13

    if-nez v13, :cond_d

    .line 628
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to bind service: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 630
    .restart local v7       #msg:Ljava/lang/String;
    if-eqz p3, :cond_c

    .line 631
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 633
    :cond_c
    const-string v13, "WallpaperService"

    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 637
    .end local v7           #msg:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 638
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 639
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    .line 643
    if-eqz p1, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 644
    new-instance v2, Landroid/content/Intent;

    const-string v13, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v2, broadcast:Landroid/content/Intent;
    const-string v13, "android.intent.extra.changed_component_name"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 653
    .end local v2           #broadcast:Landroid/content/Intent;
    :cond_e
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v14, v8, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v15, 0x7dd

    invoke-interface {v13, v14, v15}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 666
    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 663
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .end local v11           #si:Landroid/content/pm/ServiceInfo;
    .end local v12           #wi:Landroid/app/WallpaperInfo;
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #msg:Ljava/lang/String;
    :cond_f
    const-string v13, "WallpaperService"

    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 655
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #msg:Ljava/lang/String;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v8       #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .restart local v11       #si:Landroid/content/pm/ServiceInfo;
    .restart local v12       #wi:Landroid/app/WallpaperInfo;
    :catch_3
    move-exception v13

    goto :goto_2
.end method

.method public clearWallpaper()V
    .locals 2

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 367
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearWallpaperComponentLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 672
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 683
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 686
    :goto_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 687
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 688
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 690
    :cond_1
    return-void

    .line 684
    :catch_0
    move-exception v0

    goto :goto_1

    .line 676
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public clearWallpaperLocked(Z)V
    .locals 8
    .parameter "defaultFailed"

    .prologue
    .line 372
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 373
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 376
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 377
    .local v3, ident:J
    const/4 v0, 0x0

    .line 380
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 381
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    :goto_1
    return-void

    .line 381
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, e1:Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 388
    .end local v1           #e1:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    const-string v5, "WallpaperService"

    const-string v6, "Default wallpaper component not found!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    goto :goto_1

    .line 388
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1018
    :try_start_0
    const-string v1, "Current Wallpaper Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    const-string v1, "  mWidth="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1020
    const-string v1, " mHeight="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1021
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    const-string v1, "  mWallpaperComponent="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1023
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1025
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v1, "  Wallpaper connection "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    const-string v1, "    mInfo.component="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1028
    const-string v1, "    mToken="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1029
    const-string v1, "    mService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1030
    const-string v1, "    mEngine="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1031
    const-string v1, "    mLastDiedTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    iget-wide v3, p0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1034
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 344
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 345
    return-void
.end method

.method public getHeightHint()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    monitor-exit v1

    return v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 443
    if-eqz p2, :cond_0

    .line 444
    :try_start_0
    const-string v4, "width"

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v4, "height"

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 448
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 449
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 450
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v2

    .line 452
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    const/high16 v4, 0x1000

    :try_start_2
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 458
    .end local v1           #f:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 453
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v4, "WallpaperService"

    const-string v5, "Error getting wallpaper"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v1

    .line 466
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidthHint()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    monitor-exit v1

    return v0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method restoreNamedResourceLocked()Z
    .locals 21

    .prologue
    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const-string v17, "res:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 936
    .local v14, resName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 937
    .local v10, pkg:Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 938
    .local v5, colon:I
    if-lez v5, :cond_0

    .line 939
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 942
    :cond_0
    const/4 v9, 0x0

    .line 943
    .local v9, ident:Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 944
    .local v15, slash:I
    if-lez v15, :cond_1

    .line 945
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 948
    :cond_1
    const/16 v16, 0x0

    .line 949
    .local v16, type:Ljava/lang/String;
    if-lez v5, :cond_2

    if-lez v15, :cond_2

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 950
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 953
    :cond_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    if-eqz v16, :cond_8

    .line 954
    const/4 v13, -0x1

    .line 955
    .local v13, resId:I
    const/4 v12, 0x0

    .line 956
    .local v12, res:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 958
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 959
    .local v4, c:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 960
    .local v11, r:Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 961
    if-nez v13, :cond_5

    .line 962
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 964
    const/16 v17, 0x0

    .line 989
    if-eqz v12, :cond_3

    .line 991
    :try_start_1
    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 994
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 995
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 997
    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1003
    .end local v4           #c:Landroid/content/Context;
    .end local v5           #colon:I
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #r:Landroid/content/res/Resources;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_4
    :goto_1
    return v17

    .line 967
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 968
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 969
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 971
    :cond_6
    new-instance v8, Ljava/io/FileOutputStream;

    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 973
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_4
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 975
    .local v3, buffer:[B
    :goto_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, amt:I
    if-lez v2, :cond_9

    .line 976
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_2

    .line 982
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catch_0
    move-exception v6

    move-object v7, v8

    .line 983
    .end local v4           #c:Landroid/content/Context;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v11           #r:Landroid/content/res/Resources;
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 989
    if-eqz v12, :cond_7

    .line 991
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 994
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 995
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 997
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1003
    .end local v5           #colon:I
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v17, 0x0

    goto :goto_1

    .line 980
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 981
    const/16 v17, 0x1

    .line 989
    if-eqz v12, :cond_a

    .line 991
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 994
    :cond_a
    :goto_6
    if-eqz v8, :cond_4

    .line 995
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 997
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 998
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 984
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 985
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_b
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 989
    if-eqz v12, :cond_b

    .line 991
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 994
    :cond_b
    :goto_8
    if-eqz v7, :cond_8

    .line 995
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 997
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 998
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v17

    goto :goto_5

    .line 986
    :catch_4
    move-exception v6

    .line 987
    .local v6, e:Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v17, "WallpaperService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 989
    if-eqz v12, :cond_c

    .line 991
    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 994
    :cond_c
    :goto_a
    if-eqz v7, :cond_8

    .line 995
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 997
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_5

    .line 989
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_b
    if-eqz v12, :cond_d

    .line 991
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 994
    :cond_d
    :goto_c
    if-eqz v7, :cond_e

    .line 995
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 997
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 989
    :cond_e
    :goto_d
    throw v17

    .line 992
    :catch_5
    move-exception v18

    goto :goto_c

    .line 998
    :catch_6
    move-exception v18

    goto :goto_d

    .line 992
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_7
    move-exception v17

    goto/16 :goto_4

    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v17

    goto :goto_8

    .local v6, e:Ljava/io/IOException;
    :catch_9
    move-exception v17

    goto :goto_a

    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #c:Landroid/content/Context;
    .restart local v11       #r:Landroid/content/res/Resources;
    :catch_a
    move-exception v18

    goto/16 :goto_0

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v18

    goto :goto_6

    .line 989
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_b

    .line 986
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v6

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 984
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 982
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    :catch_e
    move-exception v6

    goto/16 :goto_3
.end method

.method public setDimensionHints(II)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 402
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-eq p2, v0, :cond_3

    .line 408
    :cond_2
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 409
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 410
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 411
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 414
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    .line 423
    :cond_3
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "name"

    .prologue
    .line 473
    const-string v3, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 474
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 475
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 477
    .local v0, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 478
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 480
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    monitor-exit v4

    return-object v2

    .line 484
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 486
    .end local v0           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 512
    const-string v2, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 514
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 517
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 518
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    monitor-exit v3

    .line 523
    return-void

    .line 520
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 522
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method settingsRestored()V
    .locals 5

    .prologue
    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, success:Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 894
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 895
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 897
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 903
    :cond_0
    const/4 v0, 0x1

    .line 919
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    if-nez v0, :cond_2

    .line 922
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 924
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 927
    :cond_2
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 928
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 929
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 930
    return-void

    .line 907
    :cond_3
    :try_start_2
    const-string v1, ""

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 909
    const/4 v0, 0x1

    .line 915
    :goto_1
    if-eqz v0, :cond_1

    .line 916
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_0

    .line 919
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 912
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    .line 929
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 349
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    :try_start_1
    monitor-exit v3

    .line 361
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e1:Ljava/lang/RuntimeException;
    move-object v0, v1

    .line 358
    .end local v1           #e1:Ljava/lang/RuntimeException;
    :cond_0
    const-string v2, "WallpaperService"

    const-string v4, "Failure starting previous wallpaper"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 360
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "name"

    .prologue
    .line 490
    if-nez p1, :cond_0

    const-string p1, ""

    .line 493
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 495
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 500
    :cond_1
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 502
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v1, 0x0

    goto :goto_0
.end method
