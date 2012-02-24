.class public abstract Lcom/android/server/HtcPowerSaver$Feature;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Feature"
.end annotation


# instance fields
.field private final DEFAULT_SWITCH_VALUE:Z

.field private final KEY_FEATURE_SWITCH:Ljava/lang/String;

.field private final KEY_FEATURE_SYSPROP:Ljava/lang/String;

.field protected final TAG:Ljava/lang/String;

.field private mApplied:Z

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "feature"
    .parameter "switchKey"
    .parameter "switchValue"
    .parameter "sysProp"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcPowerSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    .line 540
    iput-object p3, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    .line 541
    iput-boolean p4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    .line 542
    iput-object p5, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    .line 543
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 544
    return-void
.end method

.method private updateSystemProperties()V
    .locals 4

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set SystemProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public apply()Z
    .locals 2

    .prologue
    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 594
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->saveSystemSettings()I

    .line 596
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->applyPowerSaverSettings()I

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 600
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Applied."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 607
    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    return v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip applying."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract applyPowerSaverSettings()I
.end method

.method protected getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 548
    if-nez p1, :cond_0

    .line 550
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v4, "Reference context fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-object v2

    .line 556
    :cond_0
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 563
    .local v0, appsContext:Landroid/content/Context;
    const-string v2, "powersaver_shared"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 558
    .end local v0           #appsContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 560
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected isEnable()Z
    .locals 5

    .prologue
    .line 578
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/HtcPowerSaver;->access$000(Lcom/android/server/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/HtcPowerSaver$Feature;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 579
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    .line 586
    :goto_0
    return v0

    .line 584
    :cond_0
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 585
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->restoreSystemSettings()I

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 615
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Restored."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 620
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip restoring."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract restoreSystemSettings()I
.end method

.method protected abstract saveSystemSettings()I
.end method
