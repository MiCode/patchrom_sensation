.class Lcom/android/server/HtcAutoBrightnessCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xff

    const/4 v10, 0x1

    const/16 v6, 0x14

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 95
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v8, v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$002(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    .line 97
    const-string v8, "entering.screen.brightness"

    const/16 v9, 0x7f

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, enteringLcdValue:I
    if-le v3, v7, :cond_0

    move v3, v7

    .line 99
    :cond_0
    if-ge v3, v6, :cond_1

    move v3, v6

    .line 101
    :cond_1
    const-string v7, "backlight.delay"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, enteringDelay:I
    const/16 v1, 0x7f

    .line 105
    .local v1, currentLcdValue:I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 111
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I
    invoke-static {v6, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$202(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    .line 124
    :cond_2
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v6

    if-le v3, v6, :cond_3

    .line 125
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I
    invoke-static {v6, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$302(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    .line 126
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v7

    invoke-virtual {v6, v7, v1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(III)V

    .line 130
    :cond_3
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 131
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 134
    :cond_4
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    .end local v1           #currentLcdValue:I
    .end local v2           #enteringDelay:I
    .end local v3           #enteringLcdValue:I
    :cond_5
    :goto_1
    return-void

    .line 106
    .restart local v1       #currentLcdValue:I
    .restart local v2       #enteringDelay:I
    .restart local v3       #enteringLcdValue:I
    :catch_0
    move-exception v5

    .line 107
    .local v5, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "HtcAutoBrightnessCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: [SettingNotFoundException]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1           #currentLcdValue:I
    .end local v2           #enteringDelay:I
    .end local v3           #enteringLcdValue:I
    .end local v5           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 138
    const-string v6, "backlight.delay"

    const/16 v7, 0x28

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 147
    .local v4, leavingDelay:I
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v6, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;I)V

    goto :goto_1
.end method
