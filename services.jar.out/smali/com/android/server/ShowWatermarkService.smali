.class public Lcom/android/server/ShowWatermarkService;
.super Landroid/app/Service;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShowWatermarkService$LoadView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "watermark"

.field private static final VERSION:Ljava/lang/String; = "v1.3"


# instance fields
.field private MESSAGE:[Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    return-object v0
.end method

.method private getWatermarkWords()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 220
    sget-object v2, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    array-length v0, v2

    .line 221
    .local v0, mWordFromConf:I
    add-int/lit8 v1, v0, 0x1

    .line 222
    .local v1, mWordLength:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    .line 223
    sget-object v2, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    const-string v4, "ro.serialno"

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 226
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, -0x2

    .line 200
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getWatermarkWords()V

    .line 202
    new-instance v2, Lcom/android/server/ShowWatermarkService$LoadView;

    invoke-direct {v2, p0, p0}, Lcom/android/server/ShowWatermarkService$LoadView;-><init>(Lcom/android/server/ShowWatermarkService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    .line 203
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x418

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 211
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 212
    const-string v1, "Show Watermark"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 215
    .local v6, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 231
    const-string v1, "watermark"

    const-string v2, "stop watermark service, reboot device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 234
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    iput-object v3, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    .line 239
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Landroid/os/Power;->shutdown()V

    goto :goto_0
.end method
