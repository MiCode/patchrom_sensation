.class public Lcom/htc/music/util/OnlineMusicUtils;
.super Ljava/lang/Object;
.source "OnlineMusicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[OnlineMusicUtils]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createErrorDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createLoadingDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getErrorDialogTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getErrorDialogTitleResId(I)I
    .locals 1
    .parameter "result"

    .prologue
    .line 82
    const v0, 0x7f07014d

    return v0
.end method

.method public static getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getErrorStringId(I)I
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 72
    const v0, 0x7f070198

    return v0
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "email"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public static isNoNetworkConnection(Landroid/content/Context;)Z
    .locals 1
    .parameter "cotext"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 1
    .parameter "activity"
    .parameter "nextAction"
    .parameter "requestCode"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public static startEulaActivity(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 56
    return-void
.end method

.method public static startLoginActivity(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 52
    return-void
.end method
