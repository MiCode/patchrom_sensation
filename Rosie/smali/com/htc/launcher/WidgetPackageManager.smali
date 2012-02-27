.class public Lcom/htc/launcher/WidgetPackageManager;
.super Ljava/lang/Object;
.source "WidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    }
.end annotation


# static fields
.field public static final ACTION_INIT_SCENE_MANAGER:Ljava/lang/String; = "com.htc.AddProgramWidget.scene.ACTION_INIT"

.field private static final COMMUNITY_ACCOUNT:Ljava/lang/String; = "community"

.field private static final COMMUNITY_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.myphonebook"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Launcher"

.field public static final DRAWABLE_TOKEN:Ljava/lang/String; = "Local_"

.field public static final ITEM_TYPE_OFFSET:I = 0x44c

.field public static final KEY_INIT_LAUNCH_BAR:Ljava/lang/String; = "init_launch_bar"

.field public static final LIVE_TOKEN:Ljava/lang/String; = "Live_"

.field private static final MAIL_ACCOUNT:Ljava/lang/String; = "mail"

.field private static final NOTES_ACCOUNT:Ljava/lang/String; = "notes"

.field private static final PREFIX_PROPERTY:Ljava/lang/String; = "property."

.field public static final PREF_KEY_INIT:Ljava/lang/String; = "Initialized"

.field private static final PRE_HOME_WALLPAPER:Ljava/lang/String; = "/data/data/com.htc.launcher/files/home_wallpaper_"

.field public static final REFERENCES:Ljava/lang/String; = "WidgetPackageManager"

.field private static final SCENE_NAME_LIST_KEY:Ljava/lang/String; = "scene_list"

.field private static final SCENE_UPDATE_VERSION_KEY:Ljava/lang/String; = "scene_update_version"

.field private static final SOCIAL_ACCOUNT:Ljava/lang/String; = "social"

.field private static final STRING_FORMAT_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker_%d.png"

.field private static final STRING_FORMAT_PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker_land_%d.png"

.field private static final TAG:Ljava/lang/String; = "Widget"

.field private static final WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field static final WIDGET_UTILITY_PACKAGE:Ljava/lang/String; = "com.htc.home.personalize"

.field private static initialized:Z = false

.field private static final localLOGV:Z = true

.field private static sInstance:Lcom/htc/launcher/WidgetPackageManager;


# instance fields
.field private idx:I

.field mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

.field mCustomizeSceneName:[Ljava/lang/String;

.field private mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

.field private mHasCommunityAccount:Z

.field private mHasMailAccount:Z

.field private mHasNoteAccount:Z

.field private mHasSocialAccount:Z

.field mSceneTitleName:Ljava/lang/String;

.field private mWidgetItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetItemStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/launcher/WidgetPackage;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/htc/launcher/WidgetPackageManager;

    invoke-direct {v0}, Lcom/htc/launcher/WidgetPackageManager;-><init>()V

    sput-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/WidgetPackageManager;->initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetPackageMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/htc/launcher/WidgetCategoryManager;

    invoke-direct {v0}, Lcom/htc/launcher/WidgetCategoryManager;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    .line 76
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    .line 367
    iput-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mCustomizeSceneName:[Ljava/lang/String;

    .line 381
    iput-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mSceneTitleName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private checkScanDone(Landroid/content/Context;)V
    .locals 19
    .parameter "context"

    .prologue
    .line 110
    const-string v14, "Widget"

    const-string v15, "before checking scan widget done."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v15, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    monitor-enter v15

    .line 112
    :try_start_0
    const-string v14, "WidgetPackageManager"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 114
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v14, "scan_htc_widget_done"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v14, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 115
    .local v10, scanDone:Z
    const-string v14, "build_no"

    const-string v16, "None"

    move-object/from16 v0, v16

    invoke-interface {v9, v14, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, prefBuildNo:Ljava/lang/String;
    const-string v14, "ro.build.description"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, systemBuildNo:Ljava/lang/String;
    const-string v14, "Widget"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "before scanDone - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v14, "Widget"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "prefBuildNo - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v14, "Widget"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "systemBuildNo - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez v10, :cond_1

    .line 123
    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.htc.rosie.ACTION_START_SCAN_HTC_WIDGET"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    sget-object v14, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    const-wide/32 v16, 0x927c0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_0
    :try_start_2
    const-string v14, "Widget"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "after scanDone - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "scan_htc_widget_done"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    monitor-exit v15

    .line 186
    return-void

    .line 128
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 129
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v14, "Widget"

    const-string v16, "Interrupted ."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #prefBuildNo:Ljava/lang/String;
    .end local v9           #preferences:Landroid/content/SharedPreferences;
    .end local v10           #scanDone:Z
    .end local v13           #systemBuildNo:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 133
    .restart local v8       #prefBuildNo:Ljava/lang/String;
    .restart local v9       #preferences:Landroid/content/SharedPreferences;
    .restart local v10       #scanDone:Z
    .restart local v13       #systemBuildNo:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 134
    const-string v14, "Widget"

    const-string v16, "update all packages ..."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/WidgetPackageManager;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/htc/launcher/WidgetConverter;->convert(Landroid/content/Context;Lcom/htc/android/rosie/home/HostWidgetManager;)V

    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->isNeedTransferSceneData(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 138
    const-string v14, "Widget"

    const-string v16, "Need transfer scene data"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v12

    .line 141
    .local v12, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v12}, Lcom/htc/htcSceneManager/scene/SceneManager;->clearAllScenes()V

    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->getSceneListLocally(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    .line 144
    .local v11, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lcom/htc/htcSceneManager/scene/SceneManager;->UpgradeSceneByFOTA(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 145
    const-string v14, "launcher"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 146
    .local v6, laucherPref:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 147
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v14, "has_transfer_scene_data"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v14, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    const-string v14, "WidgetPackageManager"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 151
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v14, "CurrentWorkspace"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v7, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, currentSceneId:I
    invoke-virtual {v12, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/htc/launcher/WidgetPackageManager;->resetPageInfo(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V

    .line 157
    .end local v2           #currentSceneId:I
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #laucherPref:Landroid/content/SharedPreferences;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v11           #scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    .end local v12           #sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    :cond_2
    const-string v14, "Widget"

    const-string v16, "cleanFoldersInDatabase"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->cleanFoldersInDatabase(Landroid/content/Context;)V

    .line 160
    const-string v14, "Widget"

    const-string v16, "deleteLiveFoldersFromDatabase"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->deleteLiveFoldersFromDatabase(Landroid/content/Context;)V

    .line 168
    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.htc.rosie.ACTION_START_UPDATE_HTC_WIDGET"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v5       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :try_start_4
    sget-object v14, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    const-wide/32 v16, 0x927c0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 178
    :goto_2
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->isNeedInitLaunchBar(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 179
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->initLaunchBarViaFota(Landroid/content/Context;)V

    .line 182
    :cond_3
    const-string v14, "Widget"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "after scanUpdateDone - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "build_no"

    const-string v18, "Null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 173
    :catch_1
    move-exception v3

    .line 174
    .restart local v3       #e:Ljava/lang/InterruptedException;
    const-string v14, "Widget"

    const-string v16, "Interrupted ."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private createSceneForUpdate(Landroid/content/Context;ILandroid/os/Bundle;Lcom/htc/htcSceneManager/scene/SceneManager;I)V
    .locals 8
    .parameter "context"
    .parameter "sceneIndex"
    .parameter "moduleBundle"
    .parameter "sm"
    .parameter "newSceneId"

    .prologue
    .line 603
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSceneForUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "scene_list"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 606
    .local v7, sceneNameListBundle:Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 607
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSceneForUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), There is no scene_list, we cannot update!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_0
    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plenty_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 611
    .local v6, sceneNameBundle:Landroid/os/Bundle;
    if-nez v6, :cond_1

    .line 612
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSceneForUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cannot find this scene from scene name list!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetShortcutKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p5, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteShortcuts(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 618
    invoke-direct {p0, p3, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p5, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetAppWidgetKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p5, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteAppWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 620
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetWallpaperKey(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v3, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/WidgetPackageManager;->initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;I)V

    .line 622
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSceneForUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHomeWallpaper(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.htc.launcher/files/home_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 691
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 692
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 693
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 696
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 699
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 700
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/launcher/Utilities;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 704
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 710
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 704
    :cond_1
    if-eqz v8, :cond_2

    .line 705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_2
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no module bundle found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getPresetAppWidgetKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "workspaceId"

    .prologue
    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_app_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPresetDefaultQuickLaunchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    const-string v0, "default_quicklaunch"

    return-object v0
.end method

.method private getPresetFolderKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_folders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetFxAppWidgetKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fx_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetFxHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 3
    .parameter "moduleBundle"
    .parameter "id"

    .prologue
    .line 1344
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_1

    .line 1345
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getTwitterWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1347
    .local v1, widgetsBundle:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1348
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFxAppWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1353
    .end local v1           #widgetsBundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 1351
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFxAppWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPresetHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 3
    .parameter "moduleBundle"
    .parameter "id"

    .prologue
    .line 1329
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_1

    .line 1330
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getTwitterWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1332
    .local v1, widgetsBundle:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1333
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getDefaultKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1338
    .end local v1           #widgetsBundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 1336
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getDefaultKey(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPresetQuickLaunchKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_quicklaunch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetShortcutKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetWallpaperKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSceneFileName(ZI)Ljava/lang/String;
    .locals 5
    .parameter "isPortrait"
    .parameter "sceneId"

    .prologue
    .line 312
    if-eqz p0, :cond_0

    .line 314
    const-string v1, "/data/data/com.htc.launcher/files/scenes_picker_%d.png"

    .line 320
    .local v1, fileNameFormat:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, fileName:Ljava/lang/String;
    return-object v0

    .line 318
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #fileNameFormat:Ljava/lang/String;
    :cond_0
    const-string v1, "/data/data/com.htc.launcher/files/scenes_picker_land_%d.png"

    .restart local v1       #fileNameFormat:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSceneListLocally(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    const-string v2, "Widget"

    const-string v3, "getSceneListLocally()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v16, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/launcher/LauncherSettings$WidgetWorkspace;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    :cond_0
    new-instance v15, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v15}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    .line 224
    .local v15, scene:Lcom/htc/htcSceneManager/scene/Scene;
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v15, v10}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    .line 227
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 228
    .local v8, id:I
    invoke-virtual {v15, v8}, Lcom/htc/htcSceneManager/scene/Scene;->setId(I)V

    .line 230
    const-string v2, "status"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 231
    .local v17, status:I
    packed-switch v17, :pswitch_data_0

    .line 244
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->USER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    .line 248
    :goto_0
    const-string v2, "translate_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 249
    .local v18, translateId:I
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    .line 251
    const/4 v2, 0x1

    invoke-static {v2, v8}, Lcom/htc/launcher/WidgetPackageManager;->getSceneFileName(ZI)Ljava/lang/String;

    move-result-object v14

    .line 252
    .local v14, previewPortPath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v13, previewPort:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    const/16 v2, 0x1a4

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v14, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 257
    invoke-virtual {v15, v14}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    .line 263
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v8}, Lcom/htc/launcher/WidgetPackageManager;->getSceneFileName(ZI)Ljava/lang/String;

    move-result-object v12

    .line 264
    .local v12, previewLandPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v11, previewLand:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const/16 v2, 0x1a4

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v12, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 269
    invoke-virtual {v15, v12}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    .line 273
    :cond_1
    const-string v2, "wallpaper_component"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, liveWallpaperComponent:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 278
    invoke-virtual {v15, v9}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    .line 291
    :cond_2
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSceneListLocally() addScene() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    .end local v8           #id:I
    .end local v9           #liveWallpaperComponent:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #previewLand:Ljava/io/File;
    .end local v12           #previewLandPath:Ljava/lang/String;
    .end local v13           #previewPort:Ljava/io/File;
    .end local v14           #previewPortPath:Ljava/lang/String;
    .end local v15           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v17           #status:I
    .end local v18           #translateId:I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_4
    return-object v16

    .line 233
    .restart local v8       #id:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v15       #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .restart local v17       #status:I
    :pswitch_0
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->DEFAULT_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto :goto_0

    .line 238
    :pswitch_1
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->USER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto/16 :goto_0

    .line 241
    :pswitch_2
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->CUSTOMIZED_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto/16 :goto_0

    .line 260
    .restart local v13       #previewPort:Ljava/io/File;
    .restart local v14       #previewPortPath:Ljava/lang/String;
    .restart local v18       #translateId:I
    :cond_5
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preview(port)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 281
    .restart local v9       #liveWallpaperComponent:Ljava/lang/String;
    .restart local v11       #previewLand:Ljava/io/File;
    .restart local v12       #previewLandPath:Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Lcom/htc/launcher/WidgetPackageManager;->getHomeWallpaper(I)Ljava/lang/String;

    move-result-object v20

    .line 282
    .local v20, wallpaperPath:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v19, wallpaper:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const/16 v2, 0x1a4

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 287
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    goto :goto_2

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSceneVersion(Landroid/os/Bundle;)I
    .locals 8
    .parameter "updateSceneBundle"

    .prologue
    const/4 v4, -0x1

    .line 626
    if-nez p1, :cond_0

    .line 627
    const-string v5, "Widget"

    const-string v6, "There is no updateSceneBundle, we cannot get scene version."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_0
    return v4

    .line 630
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    .line 631
    .local v3, size:I
    if-gtz v3, :cond_1

    .line 632
    const-string v5, "Widget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The size of updateSceneBundle is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", so we cannot get scene version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_1
    const-string v5, "Widget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newSceneListBundle size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .local v0, i:I
    if-ge v0, v3, :cond_2

    .line 637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plenty_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 640
    .local v2, newSceneInfoBundle:Landroid/os/Bundle;
    const-string v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 641
    .local v4, version:I
    goto :goto_0

    .line 643
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #newSceneInfoBundle:Landroid/os/Bundle;
    .end local v4           #version:I
    :cond_2
    const-string v5, "Widget"

    const-string v6, "There is no \"version\" tag in updateSceneBundle"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTwitterWidgetKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_twitter_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 355
    invoke-static {p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 356
    .local v2, moduleBundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, names:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/launcher/WidgetPackageManager;->mCustomizeSceneName:[Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 359
    add-int/lit8 v1, v0, 0x1

    .line 360
    .local v1, i_1:I
    iget-object v4, p0, Lcom/htc/launcher/WidgetPackageManager;->mCustomizeSceneName:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/htc/launcher/WidgetPackageManager;->loadCustomizedWorkspaceName(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v1           #i_1:I
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/launcher/WidgetPackageManager;->loadSceneSettings(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method private initAccount(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 1285
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1286
    .local v2, acocuntManager:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1287
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_5

    .line 1288
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v0, v3, v4

    .line 1289
    .local v0, account:Landroid/accounts/Account;
    const-string v6, "Widget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iterating account type - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const-string v6, "com.htc.socialnetwork.flickr"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.socialnetwork.facebook"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.socialnetwork.plurk"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.htctwitter"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.twitter"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1295
    :cond_0
    const-string v6, "Widget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Social network account matches - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iput-boolean v9, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    .line 1304
    :cond_1
    const-string v6, "com.htc.android.mail.eas"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.android.mail"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1306
    :cond_2
    const-string v6, "Widget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mail account matches - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iput-boolean v9, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    .line 1288
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1309
    :cond_4
    const-string v6, "com.htc.notes.account"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1310
    const-string v6, "Widget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notes account matches - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-boolean v9, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    goto :goto_1

    .line 1315
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/launcher/WidgetPackageManager;->hasCommunityAccount(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    .line 1316
    return-void
.end method

.method private initFavoriteAppWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 33
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1557
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "initFavoriteAppWidgets() - "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1560
    .local v10, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v29

    .line 1561
    .local v29, widgetsBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1563
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "widgetsBundle = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    if-eqz v29, :cond_4

    .line 1565
    invoke-virtual/range {v29 .. v29}, Landroid/os/Bundle;->size()I

    move-result v24

    .line 1566
    .local v24, size:I
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "size = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v6, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .local v5, bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1572
    .local v3, allocatedAppWidgets:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    .local v21, pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v24

    if-ge v13, v0, :cond_2

    .line 1574
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1575
    .local v28, values:Landroid/content/ContentValues;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "plenty_set"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v13, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1576
    const-string v30, "Widget"

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 1579
    .local v9, childBundle:Landroid/os/Bundle;
    const-string v30, "show"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1580
    .local v23, showCondition:Ljava/lang/String;
    const-string v30, "hide"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1582
    .local v12, hideCondition:Ljava/lang/String;
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_show >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_hide >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 1573
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1589
    :cond_0
    const-string v30, "package_name"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1590
    .local v20, packageName:Ljava/lang/String;
    const-string v30, "app_widget_provider"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1591
    .local v4, appwidgetProvider:Ljava/lang/String;
    const-string v30, "screen"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1592
    .local v22, screen:Ljava/lang/String;
    const-string v30, "cell_x"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1593
    .local v7, cellX:Ljava/lang/String;
    const-string v30, "cell_y"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1594
    .local v8, cellY:Ljava/lang/String;
    const-string v30, "span_x"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1595
    .local v26, spanX:Ljava/lang/String;
    const-string v30, "span_y"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1596
    .local v27, spanY:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1597
    .local v17, intScreen:I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1598
    .local v15, intCellX:I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1599
    .local v16, intCellY:I
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1600
    .local v18, intSpanX:I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1602
    .local v19, intSpanY:I
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_Pkg >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_Cls >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_screen >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_x >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_y >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_width >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const-string v30, "Widget"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cust_Rosie : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_app_widgets_height >"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    new-instance v14, Lcom/htc/launcher/LauncherAppWidgetInfo;

    const/16 v30, -0x1

    move/from16 v0, v30

    invoke-direct {v14, v0}, Lcom/htc/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1613
    .local v14, info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    new-instance v30, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    iput-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    .line 1614
    invoke-virtual {v14}, Lcom/htc/launcher/LauncherAppWidgetInfo;->isTWM_Widget()Z

    move-result v30

    if-nez v30, :cond_1

    .line 1615
    sget-object v30, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual/range {v30 .. v30}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v30

    move/from16 v0, v30

    iput v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1616
    iget v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    iget-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    const/4 v3, 0x1

    .line 1623
    :cond_1
    :try_start_0
    const-string v30, "itemType"

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1624
    const-string v30, "container"

    const/16 v31, -0x64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1625
    const-string v30, "screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    const-string v30, "cellX"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1627
    const-string v30, "cellY"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1628
    const-string v30, "spanX"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    const-string v30, "spanY"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1630
    const-string v30, "appWidgetId"

    iget v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1631
    const-string v30, "workspace_id"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1632
    const-string v30, "intent"

    iget-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1636
    :catch_0
    move-exception v11

    .line 1637
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v30, "Widget"

    const-string v31, "Problem allocating appWidgetId"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1640
    .end local v4           #appwidgetProvider:Ljava/lang/String;
    .end local v7           #cellX:Ljava/lang/String;
    .end local v8           #cellY:Ljava/lang/String;
    .end local v9           #childBundle:Landroid/os/Bundle;
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hideCondition:Ljava/lang/String;
    .end local v14           #info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .end local v15           #intCellX:I
    .end local v16           #intCellY:I
    .end local v17           #intScreen:I
    .end local v18           #intSpanX:I
    .end local v19           #intSpanY:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v22           #screen:Ljava/lang/String;
    .end local v23           #showCondition:Ljava/lang/String;
    .end local v26           #spanX:Ljava/lang/String;
    .end local v27           #spanY:Ljava/lang/String;
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_2
    sget-object v31, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/content/ContentValues;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1643
    if-eqz v3, :cond_4

    .line 1644
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 1645
    .local v25, sourceArray:[I
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v13, v0, :cond_3

    .line 1646
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aput v30, v25, v13

    .line 1645
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1648
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lcom/htc/launcher/WidgetPackageManager;->launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V

    .line 1652
    .end local v3           #allocatedAppWidgets:Z
    .end local v5           #bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v13           #i:I
    .end local v21           #pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v24           #size:I
    .end local v25           #sourceArray:[I
    :cond_4
    return-void
.end method

.method private initFavoriteFolders(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 27
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 839
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFavoriteFolders() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - key = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 841
    .local v23, foldersBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 843
    if-eqz v23, :cond_d

    .line 844
    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->size()I

    move-result v26

    .line 846
    .local v26, size:I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 848
    .local v16, folderArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v24, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 850
    const-string v2, "Widget"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 853
    .local v12, childBundle:Landroid/os/Bundle;
    new-instance v15, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v15}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 854
    .local v15, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v2, "title"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 855
    move/from16 v0, p3

    iput v0, v15, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 857
    const-string v2, "itemtype"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 858
    .local v18, folderItemType:Ljava/lang/String;
    const-string v2, "package"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 859
    .local v19, folderPackage:Ljava/lang/String;
    const-string v2, "class"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 860
    .local v17, folderClass:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 861
    .local v20, folderScreen:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 862
    .local v21, folderX:Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 864
    .local v22, folderY:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 865
    const-string v2, "itemtype"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 868
    :goto_1
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 869
    :cond_0
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 870
    :cond_1
    if-eqz v20, :cond_2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 871
    :cond_2
    if-eqz v21, :cond_3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 872
    :cond_3
    if-eqz v22, :cond_4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 875
    :cond_4
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_title >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v15, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_ItemType >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_pkg >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_class >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_screen >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_x >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_folders_y >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget v2, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v2, :pswitch_data_0

    .line 848
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 867
    :cond_5
    const/4 v2, 0x2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    goto/16 :goto_1

    .line 886
    :pswitch_0
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/htc/launcher/LauncherModel;->getFolder(Landroid/content/Context;Lcom/htc/launcher/config/FavoriteData;)Lcom/htc/launcher/FolderInfo;

    move-result-object v3

    .line 888
    .local v3, folder:Lcom/htc/launcher/FolderInfo;
    if-eqz v3, :cond_8

    .line 889
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/FolderInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/FolderInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/FolderInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    move-result-wide v13

    .line 892
    .local v13, favId:J
    const-wide/16 v6, -0x1

    cmp-long v2, v13, v6

    if-eqz v2, :cond_6

    .line 893
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/htc/launcher/LauncherModel;->sendItemAdded(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 896
    :cond_6
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder at screen: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/htc/launcher/FolderInfo;->screen:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " x: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/htc/launcher/FolderInfo;->cellX:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " y: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/htc/launcher/FolderInfo;->cellY:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " title:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/htc/launcher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-wide/16 v6, -0x1

    cmp-long v2, v13, v6

    if-eqz v2, :cond_7

    .line 899
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, v15, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 903
    :cond_7
    const-string v2, "Widget"

    const-string v4, "insert fav folder error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 906
    .end local v13           #favId:J
    :cond_8
    const-string v2, "Widget"

    const-string v4, "get UserFolderInfo fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 910
    .end local v3           #folder:Lcom/htc/launcher/FolderInfo;
    :pswitch_1
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v5

    .line 912
    .local v5, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v5, :cond_a

    .line 913
    const-string v2, "parent"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 914
    .local v25, parent:Ljava/lang/String;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITEM_APPLICATION at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    if-eqz v25, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 916
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v8, v5, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v9, v5, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v10, v5, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_2

    .line 919
    :cond_9
    const-string v2, "Widget"

    const-string v4, "null parent folder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 921
    .end local v25           #parent:Ljava/lang/String;
    :cond_a
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 925
    .end local v5           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_2
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v5

    .line 927
    .restart local v5       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v5, :cond_c

    .line 928
    const-string v2, "parent"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 929
    .restart local v25       #parent:Ljava/lang/String;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITEM_SHORTCUT at"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    if-eqz v25, :cond_b

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 931
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v8, v5, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v9, v5, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v10, v5, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_2

    .line 934
    :cond_b
    const-string v2, "Widget"

    const-string v4, "null parent folder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 936
    .end local v25           #parent:Ljava/lang/String;
    :cond_c
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 942
    .end local v5           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v12           #childBundle:Landroid/os/Bundle;
    .end local v15           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v16           #folderArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v17           #folderClass:Ljava/lang/String;
    .end local v18           #folderItemType:Ljava/lang/String;
    .end local v19           #folderPackage:Ljava/lang/String;
    .end local v20           #folderScreen:Ljava/lang/String;
    .end local v21           #folderX:Ljava/lang/String;
    .end local v22           #folderY:Ljava/lang/String;
    .end local v24           #i:I
    .end local v26           #size:I
    :cond_d
    return-void

    .line 884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private initFavoriteFxWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 25
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1482
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFavoriteFxWidgets() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v24

    .line 1487
    .local v24, widgetsBundle:Landroid/os/Bundle;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widgetsBundle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    if-eqz v24, :cond_1

    .line 1489
    invoke-virtual/range {v24 .. v24}, Landroid/os/Bundle;->size()I

    move-result v20

    .line 1490
    .local v20, size:I
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1491
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1495
    const-string v2, "Widget"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 1498
    .local v12, childBundle:Landroid/os/Bundle;
    const-string v2, "show"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1499
    .local v19, showCondition:Ljava/lang/String;
    const-string v2, "hide"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1501
    .local v14, hideCondition:Ljava/lang/String;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_show >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_hide >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1493
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 1508
    :cond_0
    const-string v2, "package_name"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1509
    .local v16, packageName:Ljava/lang/String;
    const-string v2, "provider_name"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1510
    .local v17, providerName:Ljava/lang/String;
    const-string v2, "widget_name"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1511
    .local v23, widgetName:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1512
    .local v18, screen:Ljava/lang/String;
    const-string v2, "cell_x"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1513
    .local v10, cellX:Ljava/lang/String;
    const-string v2, "cell_y"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1514
    .local v11, cellY:Ljava/lang/String;
    const-string v2, "span_x"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1515
    .local v21, spanX:Ljava/lang/String;
    const-string v2, "span_y"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1518
    .local v22, spanY:Ljava/lang/String;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_pkg >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_provider >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_class >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_screen >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_x >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_y >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_span_x >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fx_widget_span_y >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1531
    new-instance v3, Lcom/htc/launcher/FxItemInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/htc/launcher/FxItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    .local v3, fxInfo:Lcom/htc/launcher/FxItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/WidgetPackageManager;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->allocWidgetId()I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    .line 1533
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 1534
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->screen:I

    .line 1535
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->cellX:I

    .line 1536
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->cellY:I

    .line 1537
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->spanX:I

    .line 1538
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->spanY:I

    .line 1539
    move/from16 v0, p3

    iput v0, v3, Lcom/htc/launcher/FxItemInfo;->workspaceId:I

    .line 1540
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/htc/launcher/WidgetPackageManager;->initFxWidgetProperties(Lcom/htc/launcher/FxItemInfo;Landroid/os/Bundle;)V

    .line 1542
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/FxItemInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/FxItemInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/FxItemInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1545
    .end local v3           #fxInfo:Lcom/htc/launcher/FxItemInfo;
    :catch_0
    move-exception v13

    .line 1546
    .local v13, ex:Ljava/lang/Exception;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package/widget fail to added : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1550
    .end local v10           #cellX:Ljava/lang/String;
    .end local v11           #cellY:Ljava/lang/String;
    .end local v12           #childBundle:Landroid/os/Bundle;
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v14           #hideCondition:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #packageName:Ljava/lang/String;
    .end local v17           #providerName:Ljava/lang/String;
    .end local v18           #screen:Ljava/lang/String;
    .end local v19           #showCondition:Ljava/lang/String;
    .end local v20           #size:I
    .end local v21           #spanX:Ljava/lang/String;
    .end local v22           #spanY:Ljava/lang/String;
    .end local v23           #widgetName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static initFavoriteQuickLaunchs(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 22
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 945
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFavoriteQuickLaunchs() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 948
    .local v15, quickLaunchsBundle:Landroid/os/Bundle;
    if-nez v15, :cond_0

    .line 949
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->getPresetDefaultQuickLaunchKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 951
    :cond_0
    move/from16 v14, p2

    .line 953
    .local v14, idx:I
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickLaunchsBundle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    if-eqz v15, :cond_7

    .line 955
    invoke-virtual {v15}, Landroid/os/Bundle;->size()I

    move-result v21

    .line 956
    .local v21, size:I
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 960
    const-string v2, "Widget"

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 962
    .local v10, childBundle:Landroid/os/Bundle;
    const-string v2, "show"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 963
    .local v20, showCondition:Ljava/lang/String;
    const-string v2, "hide"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 965
    .local v12, hideCondition:Ljava/lang/String;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Show >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Hide >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v11, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v11}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 973
    .local v11, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v2, "package"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 974
    const-string v2, "class"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 975
    const-string v2, "url"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    .line 976
    const-string v2, "title"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 977
    const-string v2, "icon"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    .line 980
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Pkg >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Class >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Url >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Title >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Icon >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const-string v2, "removable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->removable:I

    .line 988
    move/from16 v0, p2

    iput v0, v11, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 990
    const-string v2, "itemtype"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 991
    .local v16, shortcutItemType:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 992
    .local v17, shortcutScreen:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 993
    .local v18, shortcutX:Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 995
    .local v19, shortcutY:Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 996
    :cond_1
    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 997
    :cond_2
    if-eqz v18, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 998
    :cond_3
    if-eqz v19, :cond_4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1001
    :cond_4
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_ItemType >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Screen >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_X >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Y >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v2, :pswitch_data_0

    .line 958
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1010
    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1012
    .local v3, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_5

    .line 1014
    const-wide/16 v4, -0x65

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_1

    .line 1018
    :cond_5
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1022
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1024
    .restart local v3       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_6

    .line 1026
    const-wide/16 v4, -0x65

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_1

    .line 1030
    :cond_6
    const-string v2, "Widget"

    const-string v4, "Shortcut: getShortcut fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1036
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v10           #childBundle:Landroid/os/Bundle;
    .end local v11           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v12           #hideCondition:Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #shortcutItemType:Ljava/lang/String;
    .end local v17           #shortcutScreen:Ljava/lang/String;
    .end local v18           #shortcutX:Ljava/lang/String;
    .end local v19           #shortcutY:Ljava/lang/String;
    .end local v20           #showCondition:Ljava/lang/String;
    .end local v21           #size:I
    :cond_7
    return-void

    .line 1008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFavoriteShortcuts(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 21
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1039
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFavoriteShortcuts() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    .line 1042
    .local v18, shortcutsBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1044
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shortcutsBundle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    if-eqz v18, :cond_7

    .line 1046
    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->size()I

    move-result v20

    .line 1047
    .local v20, size:I
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1051
    const-string v2, "Widget"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 1053
    .local v10, childBundle:Landroid/os/Bundle;
    const-string v2, "show"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1054
    .local v19, showCondition:Ljava/lang/String;
    const-string v2, "hide"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1056
    .local v12, hideCondition:Ljava/lang/String;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Show >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Hide >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1049
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1062
    :cond_0
    new-instance v11, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v11}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 1066
    .local v11, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v2, "package"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 1067
    const-string v2, "class"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 1068
    const-string v2, "url"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    .line 1069
    const-string v2, "title"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 1070
    const-string v2, "icon"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    .line 1073
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Pkg >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Class >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Url >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Title >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Icon >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v2, "removable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->removable:I

    .line 1081
    move/from16 v0, p3

    iput v0, v11, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 1083
    const-string v2, "itemtype"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1084
    .local v14, shortcutItemType:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1085
    .local v15, shortcutScreen:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1086
    .local v16, shortcutX:Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1088
    .local v17, shortcutY:Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 1089
    :cond_1
    if-eqz v15, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 1090
    :cond_2
    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 1091
    :cond_3
    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1094
    :cond_4
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_ItemType >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Screen >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_X >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Rosie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Shortcut_Y >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/launcher/config/FavoriteData;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1103
    :pswitch_0
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1105
    .local v3, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_5

    .line 1107
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_1

    .line 1111
    :cond_5
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1115
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_1
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1117
    .restart local v3       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_6

    .line 1119
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_1

    .line 1123
    :cond_6
    const-string v2, "Widget"

    const-string v4, "Shortcut: getShortcut fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1129
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v10           #childBundle:Landroid/os/Bundle;
    .end local v11           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v12           #hideCondition:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #shortcutItemType:Ljava/lang/String;
    .end local v15           #shortcutScreen:Ljava/lang/String;
    .end local v16           #shortcutX:Ljava/lang/String;
    .end local v17           #shortcutY:Ljava/lang/String;
    .end local v19           #showCondition:Ljava/lang/String;
    .end local v20           #size:I
    :cond_7
    return-void

    .line 1101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFavoriteWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 24
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1357
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFavoriteWidgets() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 1360
    .local v23, widgetsBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1363
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widgetsBundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    if-eqz v23, :cond_2

    .line 1365
    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->size()I

    move-result v21

    .line 1366
    .local v21, size:I
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 1369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plenty_set"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1370
    const-string v3, "Widget"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 1373
    .local v13, childBundle:Landroid/os/Bundle;
    const-string v3, "show"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1374
    .local v20, showCondition:Ljava/lang/String;
    const-string v3, "hide"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1376
    .local v15, hideCondition:Ljava/lang/String;
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_Show >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_Hide >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1368
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 1383
    :cond_0
    const-string v3, "package_name"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1384
    .local v18, packageName:Ljava/lang/String;
    const-string v3, "widget_name"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1387
    .local v22, widgetName:Ljava/lang/String;
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_Pkg >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_Class >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/WidgetItem;

    move-result-object v17

    .line 1392
    .local v17, item:Lcom/htc/launcher/WidgetItem;
    if-nez v17, :cond_1

    .line 1393
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1398
    :cond_1
    :try_start_0
    const-string v3, "screen"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1399
    .local v19, screen:Ljava/lang/String;
    const-string v3, "cell_x"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1400
    .local v11, cellX:Ljava/lang/String;
    const-string v3, "cell_y"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1401
    .local v12, cellY:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1402
    .local v7, intScreen:I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1403
    .local v8, intCellX:I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1406
    .local v9, intCellY:I
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_Screen >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_X >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Rosie : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Widgets_Y >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual/range {v17 .. v17}, Lcom/htc/launcher/WidgetItem;->newWidget()Lcom/htc/launcher/WidgetProxy;

    move-result-object v4

    .line 1412
    .local v4, widget:Lcom/htc/launcher/Widget;
    move/from16 v0, p3

    iput v0, v4, Lcom/htc/launcher/Widget;->workspaceId:I

    .line 1413
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/htc/launcher/WidgetPackageManager;->initWidgetProperties(Lcom/htc/launcher/Widget;Landroid/os/Bundle;)V

    .line 1414
    const-wide/16 v5, -0x64

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v10}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1423
    .end local v4           #widget:Lcom/htc/launcher/Widget;
    .end local v7           #intScreen:I
    .end local v8           #intCellX:I
    .end local v9           #intCellY:I
    .end local v11           #cellX:Ljava/lang/String;
    .end local v12           #cellY:Ljava/lang/String;
    .end local v19           #screen:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1424
    .local v14, ex:Ljava/lang/Exception;
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget fail to added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1428
    .end local v13           #childBundle:Landroid/os/Bundle;
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v15           #hideCondition:Ljava/lang/String;
    .end local v16           #i:I
    .end local v17           #item:Lcom/htc/launcher/WidgetItem;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v20           #showCondition:Ljava/lang/String;
    .end local v21           #size:I
    .end local v22           #widgetName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private initFxWidgetProperties(Lcom/htc/launcher/FxItemInfo;Landroid/os/Bundle;)V
    .locals 11
    .parameter "info"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1455
    const/4 v5, 0x0

    .line 1456
    .local v5, props:Ljava/util/Properties;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1457
    .local v1, ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1458
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v8, "property."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1459
    if-nez v5, :cond_1

    .line 1460
    new-instance v5, Ljava/util/Properties;

    .end local v5           #props:Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1462
    .restart local v5       #props:Ljava/util/Properties;
    :cond_1
    const-string v8, "property."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1463
    .local v6, realKey:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1464
    .local v7, value:Ljava/lang/String;
    const-string v8, "Widget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_Rosie : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_fx_widgets_props_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 1469
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #realKey:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 1470
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1471
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1472
    .local v4, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1473
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, p1, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 1475
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #out2:Ljava/io/ObjectOutputStream;
    :cond_3
    return-void
.end method

.method private initLaunchBarViaFota(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 189
    invoke-static {p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 190
    .local v7, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v6

    .line 191
    .local v6, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    if-eqz v6, :cond_0

    .line 192
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 193
    .local v3, nSize:I
    if-lez v3, :cond_0

    .line 194
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcSceneManager/scene/Scene;

    .line 195
    .local v5, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    .line 196
    .local v2, nSceneId:I
    invoke-static {p1, v2}, Lcom/htc/launcher/WidgetPackageManager;->loadDefaultQuickLauch(Landroid/content/Context;I)V

    goto :goto_0

    .line 201
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nSceneId:I
    .end local v3           #nSize:I
    .end local v5           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_0
    invoke-static {p1, v9}, Lcom/htc/launcher/WidgetPackageManager;->loadDefaultQuickLauch(Landroid/content/Context;I)V

    .line 202
    const-string v8, "WidgetPackageManager"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 204
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "init_launch_bar"

    const/4 v9, 0x1

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return-void
.end method

.method private static initScenePagesInfo(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 17
    .parameter "moduleBundle"
    .parameter "context"

    .prologue
    .line 772
    const-string v14, "Widget"

    const-string v15, "initScenePagesInfo"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v4, "scene_list"

    .line 776
    .local v4, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 777
    .local v1, contentResolver:Landroid/content/ContentResolver;
    sget-object v14, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 779
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v6, pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 782
    .local v9, sceneNameListBundle:Landroid/os/Bundle;
    if-nez v9, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sceneNameListBundle = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    if-eqz v9, :cond_0

    .line 787
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v12

    .line 788
    .local v12, size:I
    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sceneNameListBundle size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v12, :cond_7

    .line 791
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plenty_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 792
    const-string v14, "Widget"

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 795
    .local v8, sceneNameBundle:Landroid/os/Bundle;
    const-string v14, "scenename"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 796
    .local v10, sceneNameString:Ljava/lang/String;
    const-string v14, "Widget"

    invoke-static {v14, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v14, "pages_count"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 799
    .local v11, scenePagesCount:Ljava/lang/String;
    const/4 v5, 0x7

    .line 800
    .local v5, pagesCount:I
    if-eqz v11, :cond_3

    .line 801
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 802
    const/4 v14, 0x1

    if-lt v5, v14, :cond_2

    const/4 v14, 0x7

    if-le v5, v14, :cond_3

    .line 803
    :cond_2
    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalide page count from SIE pagesCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v5, 0x7

    .line 807
    :cond_3
    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pages_count - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v14, "home_index"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, sceneHomeIndex:Ljava/lang/String;
    const/4 v2, 0x3

    .line 811
    .local v2, homeIndex:I
    if-eqz v7, :cond_4

    .line 812
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 815
    :cond_4
    if-ge v2, v5, :cond_5

    if-gez v2, :cond_6

    .line 816
    :cond_5
    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalide home page index from SIE homeIndex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    div-int/lit8 v2, v5, 0x2

    .line 819
    :cond_6
    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "home_index - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 823
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "_id"

    add-int/lit8 v15, v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    const-string v14, "scene_name"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v14, "pages_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v14, "home_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 831
    .end local v2           #homeIndex:I
    .end local v5           #pagesCount:I
    .end local v7           #sceneHomeIndex:Ljava/lang/String;
    .end local v8           #sceneNameBundle:Landroid/os/Bundle;
    .end local v10           #sceneNameString:Ljava/lang/String;
    .end local v11           #scenePagesCount:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_7
    sget-object v15, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    new-array v14, v14, [Landroid/content/ContentValues;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/ContentValues;

    invoke-virtual {v1, v15, v14}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method private initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"
    .parameter "index"

    .prologue
    .line 722
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWallpaper() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.initWallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.home.personalize.init_scene_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const-string v1, "com.htc.home.personalize.isOOBE"

    sget-boolean v2, Lcom/htc/launcher/WallpaperManager;->isOOBE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    const-string v1, "com.htc.home.personalize.moduleBundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 727
    const-string v1, "com.htc.home.personalize.wallpaperKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/launcher/WallpaperManager;->isOOBE:Z

    .line 731
    return-void
.end method

.method private initWidgetProperties(Lcom/htc/launcher/Widget;Landroid/os/Bundle;)V
    .locals 11
    .parameter "widget"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1432
    const/4 v5, 0x0

    .line 1433
    .local v5, props:Ljava/util/Properties;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1434
    .local v1, ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1435
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v8, "property."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1436
    if-nez v5, :cond_1

    .line 1437
    new-instance v5, Ljava/util/Properties;

    .end local v5           #props:Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1439
    .restart local v5       #props:Ljava/util/Properties;
    :cond_1
    const-string v8, "property."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1440
    .local v6, realKey:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1441
    .local v7, value:Ljava/lang/String;
    const-string v8, "Widget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_Rosie : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Widgets_props_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 1446
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #realKey:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 1447
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1448
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1449
    .local v4, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1450
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, p1, Lcom/htc/launcher/Widget;->props:[B

    .line 1452
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #out2:Ljava/io/ObjectOutputStream;
    :cond_3
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 92
    const-class v1, Lcom/htc/launcher/WidgetPackageManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/launcher/WidgetPackageManager;->initialized:Z

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/WidgetPackageManager;->checkScanDone(Landroid/content/Context;)V

    .line 94
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/htc/launcher/WidgetPackageManager;->scanWidgetItems(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/WidgetPackageManager;->init(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/WidgetPackageManager;->initialized:Z

    .line 98
    :cond_0
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    return-object v0
.end method

.method private isNeedInitLaunchBar(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    const-string v4, "WidgetPackageManager"

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v4, "init_launch_bar"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 348
    .local v0, bDone:Z
    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isNeedTransferSceneData(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    const-string v6, "launcher"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 328
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v6, "has_transfer_scene_data"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    .local v0, done:Z
    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return v4

    .line 332
    :cond_0
    const-string v6, "PersonalizeSummary"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 333
    const-string v6, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, testResult:Ljava/lang/String;
    if-eqz v3, :cond_1

    move v4, v5

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    const-string v6, "launcher"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 338
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 339
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "has_transfer_scene_data"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1661
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1662
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.home.personalize"

    const-string v4, "com.htc.home.personalize.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1664
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1666
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1667
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.android.launcher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1668
    const-string v2, "com.android.launcher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1669
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1671
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1672
    return-void
.end method

.method private loadCustomizedWorkspaceName(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 6
    .parameter "moduleBundle"
    .parameter "index"

    .prologue
    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_widgets_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 373
    .local v2, sceneNameBundle:Landroid/os/Bundle;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sceneNameBundle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz v2, :cond_0

    .line 375
    const-string v3, "scene_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, sceneName:Ljava/lang/String;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sceneName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1           #sceneName:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadDefaultQuickLauch(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "nSceneId"

    .prologue
    .line 210
    invoke-static {p0}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, moduleBundle:Landroid/os/Bundle;
    const-string v1, "default_quicklaunch"

    invoke-static {v0, p0, p1, v1}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteQuickLaunchs(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 212
    return-void
.end method

.method private loadSceneSettings(Landroid/os/Bundle;)V
    .locals 5
    .parameter "moduleBundle"

    .prologue
    .line 383
    const-string v0, "scene"

    .line 385
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 387
    .local v1, sceneBundle:Landroid/os/Bundle;
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneBundle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v1, :cond_0

    .line 389
    const-string v2, "scene_title_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mSceneTitleName:Ljava/lang/String;

    .line 390
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneTitleName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/WidgetPackageManager;->mSceneTitleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    return-void
.end method

.method public static manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 1838
    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/customize/resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeWidgetsFromDB(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v4, 0x0

    .line 1706
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1710
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetsFromDB id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetPageInfo(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V
    .locals 8
    .parameter "context"
    .parameter "sm"

    .prologue
    const/4 v7, 0x0

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 753
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v2, pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v4

    .line 755
    .local v4, sceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcSceneManager/scene/Scene;

    .line 756
    .local v3, scene:Lcom/htc/htcSceneManager/scene/Scene;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 758
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    const-string v6, "scene_name"

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v6, "pages_count"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const-string v6, "home_index"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    .end local v3           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v7, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 769
    return-void
.end method

.method private shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "showCondition"
    .parameter "hideCondition"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1788
    if-nez p1, :cond_5

    .line 1789
    if-nez p2, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return v0

    .line 1791
    :cond_1
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_2

    .line 1792
    const-string v2, "social"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1793
    goto :goto_0

    .line 1795
    :cond_2
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-eqz v2, :cond_3

    .line 1796
    const-string v2, "mail"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1797
    goto :goto_0

    .line 1799
    :cond_3
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    if-eqz v2, :cond_4

    .line 1800
    const-string v2, "community"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1801
    goto :goto_0

    .line 1803
    :cond_4
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    if-eqz v2, :cond_0

    .line 1804
    const-string v2, "notes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1805
    goto :goto_0

    .line 1810
    :cond_5
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_6

    .line 1811
    const-string v2, "social"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1815
    :cond_6
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-eqz v2, :cond_7

    .line 1816
    const-string v2, "mail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1820
    :cond_7
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    if-eqz v2, :cond_8

    .line 1821
    const-string v2, "community"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1825
    :cond_8
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    if-eqz v2, :cond_a

    .line 1826
    if-eqz p2, :cond_9

    const-string v2, "mail"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-eqz v2, :cond_9

    move v0, v1

    .line 1827
    goto :goto_0

    .line 1829
    :cond_9
    const-string v2, "notes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    .line 1832
    goto :goto_0
.end method

.method private updateSceneVersion(Landroid/content/SharedPreferences;Landroid/os/Bundle;)V
    .locals 5
    .parameter "preferences"
    .parameter "updateSceneBundle"

    .prologue
    .line 648
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getSceneVersion(Landroid/os/Bundle;)I

    move-result v1

    .line 649
    .local v1, sceneVersion:I
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commit scene version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-lez v1, :cond_0

    .line 651
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "scene_update_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 655
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V
    .locals 4
    .parameter "wProxy"

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1744
    :goto_0
    return-void

    .line 1740
    :cond_0
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetItem()Lcom/htc/launcher/WidgetItem;

    move-result-object v0

    .line 1741
    .local v0, item:Lcom/htc/launcher/WidgetItem;
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/htc/launcher/WidgetProxy;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add to workspace - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWidgetCountOnWorkspace(Lcom/htc/launcher/WidgetItem;)I
    .locals 10
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 1715
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v7

    .line 1716
    .local v7, model:Lcom/htc/launcher/LauncherModel;
    if-nez v7, :cond_1

    move v2, v8

    .line 1733
    :cond_0
    :goto_0
    return v2

    .line 1720
    :cond_1
    const/4 v2, 0x0

    .line 1721
    .local v2, count:I
    invoke-virtual {v7}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1722
    .local v5, itemInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez v5, :cond_2

    move v2, v8

    .line 1723
    goto :goto_0

    .line 1726
    :cond_2
    new-array v8, v8, [Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/launcher/ItemInfo;

    .line 1727
    .local v1, arrayItemInfo:[Lcom/htc/launcher/ItemInfo;
    move-object v0, v1

    .local v0, arr$:[Lcom/htc/launcher/ItemInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 1728
    .local v4, itemInfo:Lcom/htc/launcher/ItemInfo;
    iget v8, p1, Lcom/htc/launcher/WidgetItem;->mItemType:I

    iget v9, v4, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v8, v9, :cond_3

    .line 1729
    add-int/lit8 v2, v2, 0x1

    .line 1727
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getWidgetItem(I)Lcom/htc/launcher/WidgetItem;
    .locals 2
    .parameter "itemType"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    return-object v0
.end method

.method public getWidgetItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/WidgetItem;
    .locals 2
    .parameter "packageName"
    .parameter "widgetName"

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    return-object v0
.end method

.method public getWidgetItemList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetCategoryManager;->getItems(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWidgetPackage(Ljava/lang/String;Landroid/content/Context;)Lcom/htc/launcher/WidgetPackage;
    .locals 5
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 1762
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    .local v1, wPackage:Lcom/htc/launcher/WidgetPackage;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1779
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1767
    :cond_0
    if-eqz p2, :cond_1

    .line 1768
    :try_start_1
    new-instance v1, Lcom/htc/launcher/WidgetPackage;

    .end local v1           #wPackage:Lcom/htc/launcher/WidgetPackage;
    invoke-direct {v1}, Lcom/htc/launcher/WidgetPackage;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    .restart local v1       #wPackage:Lcom/htc/launcher/WidgetPackage;
    const/4 v2, 0x3

    :try_start_2
    invoke-virtual {p2, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetPackage;->mPackageContext:Landroid/content/Context;

    .line 1772
    iget-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v1

    .line 1773
    goto :goto_0

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget package not found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no context is given for create WidgetPackage instance (shall not happen) - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1779
    const/4 v2, 0x0

    goto :goto_0

    .line 1762
    .end local v1           #wPackage:Lcom/htc/launcher/WidgetPackage;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasCommunityAccount(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    .line 1215
    const/4 v10, -0x1

    sget v11, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-ne v10, v11, :cond_7

    .line 1216
    const-string v10, "Widget"

    const-string v11, "flag is -1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v10, :cond_6

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd0

    if-ne v10, v11, :cond_6

    .line 1221
    if-nez p1, :cond_0

    .line 1222
    const-string v10, "Widget"

    const-string v11, "no context, judge as NO state"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v10, 0x0

    .line 1281
    :goto_0
    return v10

    .line 1226
    :cond_0
    const-string v10, "Widget"

    const-string v11, "enter judge account manager way"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1228
    .local v2, acocuntManager:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1229
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 1230
    .local v5, hasFound:Z
    if-eqz v1, :cond_2

    .line 1231
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v0, v3, v6

    .line 1232
    .local v0, account:Landroid/accounts/Account;
    const-string v10, "Widget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "iterating account type - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v10, "com.htc.android.myphonebook"

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1234
    const-string v10, "Widget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Community account matches - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const/4 v5, 0x1

    .line 1231
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1239
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    if-nez v5, :cond_3

    .line 1240
    const-string v10, "Widget"

    const-string v11, "account manager no signin, so FALSE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v10, 0x0

    goto :goto_0

    .line 1245
    :cond_3
    const-string v10, "Widget"

    const-string v11, "account manager signin, by service check"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v9, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;-><init>(Z)V

    .line 1247
    .local v9, service:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/htc/clientprofileservice/IClientProfileService;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v9, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    .line 1248
    .local v8, result:Z
    if-nez v8, :cond_4

    .line 1249
    const-string v10, "Widget"

    const-string v11, "service bind failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1253
    :cond_4
    const/4 v4, 0x0

    .line 1254
    .local v4, count:I
    :goto_2
    const/4 v10, -0x1

    sget v11, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-ne v10, v11, :cond_5

    const/4 v10, 0x2

    if-ge v4, v10, :cond_5

    .line 1256
    const-wide/16 v10, 0x1f4

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :goto_3
    const-string v10, "Widget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wait service state count :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1263
    :cond_5
    const-string v10, "Widget"

    const-string v11, "unbind service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {p1, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1265
    const/4 v9, 0x0

    .line 1266
    const/4 v10, 0x2

    if-ne v10, v4, :cond_7

    .line 1267
    const-string v10, "Widget"

    const-string v11, "count over, judge as NO state"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1274
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #acocuntManager:Landroid/accounts/AccountManager;
    .end local v4           #count:I
    .end local v5           #hasFound:Z
    .end local v8           #result:Z
    .end local v9           #service:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    :cond_6
    const-string v10, "Widget"

    const-string v11, "SKU not match, judge as NO state"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1279
    :cond_7
    const-string v10, "Widget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Final decision, with state value :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    sget v10, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-nez v10, :cond_8

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1257
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #acocuntManager:Landroid/accounts/AccountManager;
    .restart local v4       #count:I
    .restart local v5       #hasFound:Z
    .restart local v8       #result:Z
    .restart local v9       #service:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method public initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;)V
    .locals 1
    .parameter "context"
    .parameter "model"

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;Z)V

    .line 600
    return-void
.end method

.method public initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;Z)V
    .locals 28
    .parameter "context"
    .parameter "model"
    .parameter "demoFLO"

    .prologue
    .line 498
    const-string v3, "WidgetPackageManager"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 500
    .local v23, preferences:Landroid/content/SharedPreferences;
    const-string v3, "Initialized"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 501
    .local v18, initialized:Z
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    .line 502
    .local v6, moduleBundle:Landroid/os/Bundle;
    const-string v3, "update_scene"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 504
    .local v27, updateSceneBundle:Landroid/os/Bundle;
    const-string v3, "Steven"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to initialize favorites ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-nez p3, :cond_4

    .line 506
    if-eqz v18, :cond_3

    .line 508
    if-eqz v27, :cond_2

    .line 509
    const-string v3, "scene_update_version"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 510
    .local v21, latestSceneVersion:I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/htc/launcher/WidgetPackageManager;->getSceneVersion(Landroid/os/Bundle;)I

    move-result v14

    .line 511
    .local v14, currentSceneVersion:I
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initFavorites(), latest scene version: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", current scene version = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move/from16 v0, v21

    if-le v14, v0, :cond_2

    .line 514
    invoke-virtual/range {v27 .. v27}, Landroid/os/Bundle;->size()I

    move-result v25

    .line 515
    .local v25, size:I
    if-lez v25, :cond_1

    .line 516
    const-string v20, "plenty_set1"

    .line 517
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 518
    .local v22, newSceneInfoBundle:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->initAccount(Landroid/content/Context;)V

    .line 519
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 520
    .local v7, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 521
    .local v26, updataSceneIndexes:[I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 523
    .local v5, updateSceneIndex:I
    aput v5, v26, v17

    .line 521
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 525
    .end local v5           #updateSceneIndex:I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->createSceneFromSIE(Landroid/content/Context;[I)[I

    move-result-object v24

    .line 526
    .local v24, sceneIds:[I
    const/16 v17, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 528
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 529
    .restart local v5       #updateSceneIndex:I
    aget v8, v24, v17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/htc/launcher/WidgetPackageManager;->createSceneForUpdate(Landroid/content/Context;ILandroid/os/Bundle;Lcom/htc/htcSceneManager/scene/SceneManager;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v5           #updateSceneIndex:I
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 530
    :catch_0
    move-exception v16

    .line 531
    .local v16, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSceneInfoBundle.getString(scene_id_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v17, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scene_id_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v17, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 537
    .end local v7           #sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v16           #ex:Ljava/lang/NumberFormatException;
    .end local v17           #i:I
    .end local v20           #key:Ljava/lang/String;
    .end local v22           #newSceneInfoBundle:Landroid/os/Bundle;
    .end local v24           #sceneIds:[I
    .end local v26           #updataSceneIndexes:[I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->updateSceneVersion(Landroid/content/SharedPreferences;Landroid/os/Bundle;)V

    .line 596
    .end local v14           #currentSceneVersion:I
    .end local v21           #latestSceneVersion:I
    .end local v25           #size:I
    :cond_2
    :goto_3
    return-void

    .line 542
    :cond_3
    if-eqz v27, :cond_4

    .line 545
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->updateSceneVersion(Landroid/content/SharedPreferences;Landroid/os/Bundle;)V

    .line 549
    :cond_4
    const-string v3, "Steven"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to initialize favorites ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 552
    .restart local v7       #sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->clearAllScenes()V

    .line 553
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->initCustomizeSceneData(Landroid/content/Context;)Landroid/os/Bundle;

    .line 555
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->deleteAllItemsFromDatabase(Landroid/content/Context;)V

    .line 564
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->initAccount(Landroid/content/Context;)V

    .line 566
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 567
    add-int/lit8 v11, v17, 0x1

    .line 568
    .local v11, i_1:I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetShortcutKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteShortcuts(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFolderKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteFolders(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFxHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteFxWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetAppWidgetKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteAppWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetQuickLaunchKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v6, v0, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteQuickLaunchs(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetWallpaperKey(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, p0

    move-object v9, v6

    move-object/from16 v10, p1

    move v13, v11

    invoke-direct/range {v8 .. v13}, Lcom/htc/launcher/WidgetPackageManager;->initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;I)V

    .line 566
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 577
    .end local v11           #i_1:I
    :cond_5
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    .line 578
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/htc/launcher/Launcher;->mCurrentSceneId:I

    .line 580
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/htc/launcher/WidgetPackageManager;->initScenePagesInfo(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 582
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/htc/launcher/LauncherModel;->duplicateAllItems(Landroid/content/Context;II)V

    .line 584
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v19, intent:Landroid/content/Intent;
    const-string v3, "com.htc.home.personalize.initFinish"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 589
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 590
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Initialized"

    const/4 v4, 0x1

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 591
    const-string v3, "init_launch_bar"

    const/4 v4, 0x1

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 592
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 594
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/launcher/PagesManager;->reset(Landroid/content/Context;)V

    .line 595
    const-string v3, "Widget"

    const-string v4, "Finish initializing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public loadHomeWallpaper(Lcom/htc/launcher/Launcher;Lcom/htc/htcSceneManager/scene/SceneManager;)V
    .locals 2
    .parameter "launcher"
    .parameter "sm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 659
    new-instance v0, Lcom/htc/launcher/WidgetPackageManager$1;

    const-string v1, "loadHomeWallpaper"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/htc/launcher/WidgetPackageManager$1;-><init>(Lcom/htc/launcher/WidgetPackageManager;Ljava/lang/String;Lcom/htc/htcSceneManager/scene/SceneManager;Lcom/htc/launcher/Launcher;)V

    .line 687
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 688
    return-void
.end method

.method public newWidget(ILandroid/content/Context;J)Lcom/htc/launcher/WidgetProxy;
    .locals 5
    .parameter "itemType"
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v2, 0x0

    .line 1687
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-eqz v3, :cond_0

    .line 1688
    iget-object v3, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetProxy;

    .line 1689
    .local v1, proxy:Lcom/htc/launcher/WidgetProxy;
    if-eqz v1, :cond_0

    .line 1690
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found in WidgetProxy Map - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .end local v1           #proxy:Lcom/htc/launcher/WidgetProxy;
    :goto_0
    return-object v1

    .line 1695
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    .line 1696
    .local v0, item:Lcom/htc/launcher/WidgetItem;
    if-nez v0, :cond_1

    const/16 v3, 0x44c

    if-lt p1, v3, :cond_1

    .line 1697
    invoke-static {p2, p3, p4}, Lcom/htc/launcher/WidgetPackageManager;->removeWidgetsFromDB(Landroid/content/Context;J)V

    move-object v1, v2

    .line 1698
    goto :goto_0

    .line 1699
    :cond_1
    if-eqz v0, :cond_2

    .line 1700
    invoke-virtual {v0}, Lcom/htc/launcher/WidgetItem;->newWidget()Lcom/htc/launcher/WidgetProxy;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1702
    goto :goto_0
.end method

.method public removeAllWidgetLayout(Lcom/htc/launcher/Launcher;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1754
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1755
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    .line 1756
    .local v0, proxy:Lcom/htc/launcher/WidgetProxy;
    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetProxy;->onLayoutRemoved(Lcom/htc/launcher/Launcher;)V

    goto :goto_0

    .line 1758
    .end local v0           #proxy:Lcom/htc/launcher/WidgetProxy;
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1759
    return-void
.end method

.method public removeWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V
    .locals 4
    .parameter "wProxy"

    .prologue
    .line 1747
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetItem()Lcom/htc/launcher/WidgetItem;

    move-result-object v0

    .line 1748
    .local v0, item:Lcom/htc/launcher/WidgetItem;
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/htc/launcher/WidgetProxy;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1750
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from workspace - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return-void
.end method

.method scanWidgetItems(Landroid/content/Context;Ljava/lang/String;)V
    .locals 30
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 404
    const-string v3, "Widget"

    const-string v4, "search widgets in background ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 407
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 408
    .local v9, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 410
    sget-object v3, Lcom/htc/launcher/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "item_category!=0"

    const/4 v6, 0x0

    const-string v7, "parent_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 433
    :goto_0
    if-nez v9, :cond_3

    .line 434
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanWidgetItems("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), cannot get cursor. The widget list may be empty."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_1
    return-void

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/htc/launcher/WidgetItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lcom/htc/launcher/WidgetItem;

    .line 416
    .local v27, items:[Lcom/htc/launcher/WidgetItem;
    move-object/from16 v8, v27

    .local v8, arr$:[Lcom/htc/launcher/WidgetItem;
    array-length v0, v8

    move/from16 v28, v0

    .local v28, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    move/from16 v0, v28

    if-ge v11, v0, :cond_2

    aget-object v26, v8, v11

    .line 417
    .local v26, item:Lcom/htc/launcher/WidgetItem;
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/htc/launcher/WidgetCategoryManager;->unbindCategory(Lcom/htc/launcher/WidgetItem;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 426
    .end local v26           #item:Lcom/htc/launcher/WidgetItem;
    :cond_2
    sget-object v3, Lcom/htc/launcher/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "item_category!=0 AND package_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const-string v7, "parent_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    .line 438
    .end local v8           #arr$:[Lcom/htc/launcher/WidgetItem;
    .end local v11           #i$:I
    .end local v27           #items:[Lcom/htc/launcher/WidgetItem;
    .end local v28           #len$:I
    :cond_3
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 439
    .local v14, idxId:I
    const-string v3, "package_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 440
    .local v17, idxPackageName:I
    const-string v3, "plugin_classname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 441
    .local v19, idxPluginClassname:I
    const-string v3, "widget_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 442
    .local v23, idxWidgetName:I
    const-string v3, "item_category"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 443
    .local v15, idxItemCategory:I
    const-string v3, "parent_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 444
    .local v18, idxParentId:I
    const-string v3, "text_resource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 445
    .local v22, idxTextResource:I
    const-string v3, "icon_resource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 446
    .local v13, idxIconResource:I
    const-string v3, "span_x"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 447
    .local v20, idxSpanX:I
    const-string v3, "span_y"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 448
    .local v21, idxSpanY:I
    const-string v3, "layout_resource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 449
    .local v16, idxLayoutResource:I
    const-string v3, "extra_properties"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 452
    .local v12, idxExtraProperties:I
    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 453
    new-instance v26, Lcom/htc/launcher/WidgetItem;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/launcher/WidgetItem;-><init>(Landroid/content/Context;)V

    .line 454
    .restart local v26       #item:Lcom/htc/launcher/WidgetItem;
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    .line 455
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 456
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mPluginClassname:Ljava/lang/String;

    .line 457
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 458
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mItemCategory:I

    .line 459
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mTextResource:I

    .line 460
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mIconResource:I

    .line 461
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mSpanX:I

    .line 462
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mSpanY:I

    .line 463
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mLayoutResource:I

    .line 464
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mParentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :try_start_1
    new-instance v24, Ljava/io/ByteArrayInputStream;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 468
    .local v24, in:Ljava/io/ByteArrayInputStream;
    new-instance v25, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 469
    .local v25, in2:Ljava/io/ObjectInputStream;
    invoke-virtual/range {v25 .. v25}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    .end local v24           #in:Ljava/io/ByteArrayInputStream;
    .end local v25           #in2:Ljava/io/ObjectInputStream;
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/htc/launcher/WidgetCategoryManager;->bindCategory(Lcom/htc/launcher/WidgetItem;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanWidgetItems : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, v26

    iget v3, v0, Lcom/htc/launcher/WidgetItem;->mParentId:I

    if-lez v3, :cond_4

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/htc/launcher/WidgetItem;->mParentId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/htc/launcher/WidgetItem;

    .line 483
    .local v29, parentItem:Lcom/htc/launcher/WidgetItem;
    if-eqz v29, :cond_4

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetItem;->addChild(Lcom/htc/launcher/WidgetItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 487
    .end local v26           #item:Lcom/htc/launcher/WidgetItem;
    .end local v29           #parentItem:Lcom/htc/launcher/WidgetItem;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_5

    .line 488
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 470
    .restart local v26       #item:Lcom/htc/launcher/WidgetItem;
    :catch_0
    move-exception v10

    .line 471
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Widget"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 487
    .end local v10           #e:Ljava/lang/Exception;
    .end local v26           #item:Lcom/htc/launcher/WidgetItem;
    :cond_6
    if-eqz v9, :cond_7

    .line 488
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_7
    const-string v3, "Widget"

    const-string v4, "finish searching."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setFxWidgetManager(Lcom/htc/android/rosie/home/HostWidgetManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/launcher/WidgetPackageManager;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    .line 107
    return-void
.end method
