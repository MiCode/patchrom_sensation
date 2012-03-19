.class public Lcom/htc/htcjavaflag/HtcUtility;
.super Ljava/lang/Object;
.source "HtcUtility.java"


# static fields
.field static sHasHtcSignature:Z

.field static sInitialized:Z

.field static sInitializedHasHtcSignature:Z

.field static sIsHtcApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    .line 10
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    .line 26
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    .line 27
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasHtcSignature()Z
    .locals 2

    .prologue
    .line 30
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    if-eqz v1, :cond_0

    .line 31
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    .line 42
    .local v0, app:Landroid/app/Application;
    :goto_0
    return v1

    .line 32
    .end local v0           #app:Landroid/app/Application;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 34
    .restart local v0       #app:Landroid/app/Application;
    if-eqz v0, :cond_1

    .line 38
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    .line 39
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBitmapReleaseEnabled()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcApp()Z
    .locals 2

    .prologue
    .line 13
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    if-eqz v1, :cond_0

    .line 14
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    .line 23
    .local v0, app:Landroid/app/Application;
    :goto_0
    return v1

    .line 15
    .end local v0           #app:Landroid/app/Application;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 17
    .restart local v0       #app:Landroid/app/Application;
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    .line 19
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    .line 20
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTopApp()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Landroid/app/ActivityThread;->isTopApp()Z

    move-result v0

    return v0
.end method
