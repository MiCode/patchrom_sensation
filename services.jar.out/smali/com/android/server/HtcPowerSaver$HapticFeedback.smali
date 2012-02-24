.class final Lcom/android/server/HtcPowerSaver$HapticFeedback;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HapticFeedback"
.end annotation


# instance fields
.field private final DEFAULT_N_HAPTIC_FEEDBACK:I

.field private final KEY_N_HAPTIC_FEEDBACK:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 909
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 910
    const-string v2, "HapticFeedback"

    const-string v3, "powersaver_haptic_feedback"

    const-string v5, "sys.psaver.haptic"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 904
    const-string v0, "psaver_normal_haptic_feedback"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->KEY_N_HAPTIC_FEEDBACK:Ljava/lang/String;

    .line 905
    iput v4, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->DEFAULT_N_HAPTIC_FEEDBACK:I

    .line 911
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    .line 912
    return-void
.end method

.method private setSysSettings(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 918
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSysSettings: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->TAG:Ljava/lang/String;

    const-string v2, "setSysSettings: Set fail."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 943
    invoke-direct {p0, v2}, Lcom/android/server/HtcPowerSaver$HapticFeedback;->setSysSettings(I)V

    .line 944
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->TAG:Ljava/lang/String;

    const-string v1, "applyPowerSaverSettings."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v2
.end method

.method protected restoreSystemSettings()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 950
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/HtcPowerSaver$HapticFeedback;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 951
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->TAG:Ljava/lang/String;

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_0
    return v4

    .line 956
    :cond_0
    const-string v2, "psaver_normal_haptic_feedback"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 957
    .local v0, normalValue:I
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$HapticFeedback;->setSysSettings(I)V

    goto :goto_0
.end method

.method protected saveSystemSettings()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 928
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 929
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/HtcPowerSaver$HapticFeedback;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 930
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 932
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->TAG:Ljava/lang/String;

    const-string v4, "Get SharedPreferences fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_0
    return v6

    .line 935
    :cond_0
    const-string v3, "haptic_feedback_enabled"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 936
    .local v2, sysValue:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "psaver_normal_haptic_feedback"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 937
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$HapticFeedback;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSystemSettings: sysValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
