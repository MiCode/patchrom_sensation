.class public Lcom/android/camera/HTCCameraAdvanceSetting;
.super Landroid/app/Activity;
.source "HTCCameraAdvanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    }
.end annotation


# static fields
.field static final PREF_VERSION_NAME:Ljava/lang/String; = "version"

.field static final PREF_VERSION_NO:I = 0x132b677

.field static final TAG:Ljava/lang/String; = "HTCCameraAdvanceSetting"

.field public static mIsInitZoom:Z

.field private static mIsSetDefault:Z

.field public static mZoomValue:I


# instance fields
.field MaxOfPage:I

.field isFilterListByCategory:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field mBackButton:Landroid/widget/Button;

.field mNextPageButton:Landroid/widget/ImageView;

.field mPageIndex:I

.field mPreferenceManager:Landroid/preference/PreferenceManager;

.field mPrevPageButton:Landroid/widget/ImageView;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z

    .line 57
    sput-boolean v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 59
    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mBackButton:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mPrevPageButton:Landroid/widget/ImageView;

    .line 38
    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mNextPageButton:Landroid/widget/ImageView;

    .line 40
    iput v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->MaxOfPage:I

    .line 42
    iput v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mPageIndex:I

    .line 46
    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mAdapter:Landroid/widget/ListAdapter;

    .line 48
    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->isFilterListByCategory:Z

    .line 62
    return-void
.end method

.method public static ContainsKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "activity"
    .parameter "key"

    .prologue
    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 83
    .local v1, value:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 86
    :cond_0
    return-object v1
.end method

.method private static checkPreferenceVersion(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Lcom/android/camera/CameraController;)Z
    .locals 10
    .parameter "sp"
    .parameter "editor"
    .parameter "controller"

    .prologue
    const v9, 0x132b677

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 175
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 176
    :cond_0
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "checkPreferenceVersion - sp = null or editor = null"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 220
    :goto_0
    return v4

    .line 180
    :cond_1
    const-string v6, "version"

    const/4 v7, -0x1

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 181
    .local v3, version:I
    if-ne v3, v9, :cond_2

    .line 182
    const-string v5, "HTCCameraAdvanceSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not need to update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string v6, "HTCCameraAdvanceSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v6, "HTCCameraAdvanceSetting"

    const-string v7, "new version: 20100727"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, value:Ljava/lang/String;
    const-string v1, "null"

    .line 190
    .local v1, str_null:Ljava/lang/String;
    const/4 v0, 0x0

    .line 191
    .local v0, info:Lcom/android/camera/CameraController$SettingInfo;
    sparse-switch v3, :sswitch_data_0

    .line 216
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "check version: unknown version no., reset to default"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 220
    goto :goto_0

    .line 193
    :sswitch_0
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: no version no."

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :sswitch_1
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100305"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :sswitch_2
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100608"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :sswitch_3
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100609"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :sswitch_4
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100621"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :sswitch_5
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100726"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "older version no., reset to default"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 208
    goto/16 :goto_0

    .line 210
    :sswitch_6
    const-string v5, "HTCCameraAdvanceSetting"

    const-string v6, "final version: 20100727"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v5, "version"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x132b4d1 -> :sswitch_1
        0x132b600 -> :sswitch_2
        0x132b601 -> :sswitch_3
        0x132b60d -> :sswitch_4
        0x132b676 -> :sswitch_5
        0x132b677 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getFaceNumber(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    .line 495
    const-string v2, "pref_camera_face_number"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 497
    .local v0, number:I
    if-nez v1, :cond_1

    .line 498
    const/4 v0, 0x0

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    const-string v2, "1face"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    const/4 v0, 0x1

    goto :goto_0

    .line 501
    :cond_2
    const-string v2, "2faces"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getIsRecordWithAudio(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_camera_record_with_audio"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 97
    .local v1, value:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "activity"
    .parameter "key"

    .prologue
    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 77
    .local v1, value:Ljava/lang/Boolean;
    return-object v1
.end method

.method public static getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 3
    .parameter "activity"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 91
    .local v1, value:Ljava/lang/Boolean;
    return-object v1
.end method

.method public static getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "activity"
    .parameter "key"

    .prologue
    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "null"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, value:Ljava/lang/String;
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "HTCCameraAdvanceSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for the key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object v1
.end method

.method public static getRecordingLimit(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    .line 508
    const-string v2, "pref_camera_recording_limit"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 511
    .local v0, choice:I
    if-eqz v1, :cond_0

    const-string v2, "null"

    if-eq v1, v2, :cond_0

    const-string v2, "unlimited"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    :cond_0
    const/4 v0, 0x0

    .line 529
    :cond_1
    :goto_0
    return v0

    .line 514
    :cond_2
    const-string v2, "250kb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    :cond_3
    const-string v2, "1mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    const/4 v0, 0x2

    goto :goto_0

    .line 518
    :cond_4
    const-string v2, "2mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 519
    const/4 v0, 0x3

    goto :goto_0

    .line 520
    :cond_5
    const-string v2, "10s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 521
    const/4 v0, 0x4

    goto :goto_0

    .line 522
    :cond_6
    const-string v2, "30s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 523
    const/4 v0, 0x5

    goto :goto_0

    .line 524
    :cond_7
    const-string v2, "1min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 525
    const/4 v0, 0x6

    goto :goto_0

    .line 526
    :cond_8
    const-string v2, "3min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static declared-synchronized initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z
    .locals 20
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 231
    const-class v16, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v16

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 232
    .local v12, sp:Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 233
    .local v10, result:Z
    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 235
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 237
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    sget-boolean v15, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z

    if-nez v15, :cond_2

    .line 239
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 242
    move-object/from16 v0, p1

    invoke-static {v12, v3, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->checkPreferenceVersion(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Lcom/android/camera/CameraController;)Z

    move-result v9

    .line 243
    .local v9, reset:Z
    if-nez v9, :cond_1

    .line 244
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v17, "not reset to default and preference existed"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    const/4 v15, 0x1

    .line 490
    .end local v9           #reset:Z
    :goto_0
    monitor-exit v16

    return v15

    .line 248
    :cond_0
    :try_start_1
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v17, "not reset to default, but no preference"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_1
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/HTCCameraAdvanceSetting$Item;>;"
    const-class v17, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    :try_start_2
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_white_balance"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_white_balance_2nd"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_self_timer"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_face_number"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_recording_limit"

    const-string v19, "unlimited"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x38

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    .line 286
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v18, "REVIEW_DURATION init - 3s"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_review_duration"

    const-string v19, "3s"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_2
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_3D_file_format"

    const-string v19, "mpo"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_video_file_format"

    const-string v19, "3gpp"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_capture_quality"

    const-string v19, "_super"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_capture_format_image"

    const-string v19, "jpeg"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_capture_format_video"

    const-string v19, "mpeg4"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const/4 v13, 0x0

    .line 340
    .local v13, storage:Ljava/lang/String;
    const-string v13, "sdcard"

    .line 341
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_storage_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1, v13}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_effect"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_video_effect"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_effect_2nd"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_flicker_adjustment"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_flash_mode"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_iso"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_scene"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_video_scene"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const/4 v7, 0x2

    .line 379
    .local v7, level_def:I
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_brightness"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const/4 v7, 0x2

    .line 384
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_contrast"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_saturation"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_shaprness"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const/4 v4, 0x0

    .line 392
    .local v4, i:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 394
    .local v11, size:I
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 397
    const-string v15, "version"

    const v18, 0x132b677

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 399
    const/4 v5, 0x0

    .line 400
    .local v5, item:Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    :goto_3
    if-ge v4, v11, :cond_5

    .line 401
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #item:Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    check-cast v5, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    .line 402
    .restart local v5       #item:Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    invoke-virtual {v5}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->getItemName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->getItemValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 403
    if-nez v3, :cond_4

    .line 404
    const/4 v15, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .line 488
    .end local v4           #i:I
    .end local v5           #item:Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    .end local v7           #level_def:I
    .end local v11           #size:I
    .end local v13           #storage:Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/HTCCameraAdvanceSetting$Item;>;"
    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v10           #result:Z
    .end local v12           #sp:Landroid/content/SharedPreferences;
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    .line 251
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v8       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v10       #result:Z
    .restart local v12       #sp:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_4
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v17, "reset to default"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 292
    .restart local v6       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/HTCCameraAdvanceSetting$Item;>;"
    :cond_3
    :try_start_5
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v18, "REVIEW_DURATION init - no review"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_review_duration"

    const-string v19, "no_review"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_effect_manual"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_white_balance_manual"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_iso_manual"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v7, 0x2

    .line 306
    .restart local v7       #level_def:I
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_brightness_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const/4 v7, 0x2

    .line 311
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_contrast_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_saturation_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_sharpness_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 400
    .restart local v4       #i:I
    .restart local v5       #item:Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    .restart local v11       #size:I
    .restart local v13       #storage:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 412
    :cond_5
    const-string v15, "pref_camera_timestamp"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 415
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v14

    .line 416
    .local v14, wide:Z
    const-string v15, "pref_camera_image_ratio"

    invoke-interface {v3, v15, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 418
    const-string v15, "pref_camera_switch"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 420
    const-string v15, "pref_front_camera_mode"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 422
    const-string v15, "pref_face_detection"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 425
    invoke-static {}, Lcom/android/camera/DisplayDevice;->EnableGeoTagByDefault()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 426
    const-string v15, "pref_camera_geo_tagging"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 430
    :goto_4
    const-string v15, "pref_post_processing"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 432
    const-string v15, "pref_stereo_recording"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 434
    const-string v15, "pref_camera_auto_focus"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 436
    const-string v15, "pref_play_shutter_sound"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 438
    const-string v15, "pref_grid"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 440
    const-string v15, "pref_camera_self_portrait"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 443
    const-string v15, "pref_camera_record_with_audio"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 446
    const-string v15, "pref_camera_3D_status"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 449
    const-string v15, "pref_smile_capture"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 450
    const-string v15, "pref_blink detection"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 453
    const-string v15, "pref_fast_fps"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 455
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v10

    .line 456
    if-nez v10, :cond_6

    .line 457
    const-string v15, "camera advance settnigs"

    const-string v18, "commit fail on writePreference"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_6
    monitor-exit v17

    move v15, v10

    .line 490
    goto/16 :goto_0

    .line 428
    :cond_7
    const-string v15, "pref_camera_geo_tagging"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto/16 :goto_4
.end method

.method public static declared-synchronized isSetDefault()Z
    .locals 2

    .prologue
    .line 169
    const-class v0, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefault(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 165
    const-class v0, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "activity"
    .parameter "setting"
    .parameter "value"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 7
    .parameter "activity"
    .parameter "setting"
    .parameter "value"
    .parameter "bcommit"

    .prologue
    .line 101
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference E"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 103
    .local v3, sp:Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .line 112
    .local v2, result:Z
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 113
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    if-eqz p3, :cond_1

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 118
    :goto_0
    if-nez v2, :cond_0

    .line 126
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference X"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return v2

    .line 117
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HTCCameraAdvanceSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writePreference commit fail on setPreference: key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "activity"
    .parameter "setting"
    .parameter "value"

    .prologue
    .line 135
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference E"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 137
    .local v3, sp:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 146
    .local v2, result:Z
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 147
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference X"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HTCCameraAdvanceSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writePreference commit fail on setPreference: key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
