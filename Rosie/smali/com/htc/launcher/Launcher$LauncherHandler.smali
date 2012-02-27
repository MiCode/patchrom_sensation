.class Lcom/htc/launcher/Launcher$LauncherHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 7146
    iput-object p1, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7146
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$LauncherHandler;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "m"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 7149
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 7233
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7151
    :pswitch_1
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v8}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 7152
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v8}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/htc/launcher/AddListAdapter;->reset(Z)V

    .line 7154
    :cond_1
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z
    invoke-static {v8, v11}, Lcom/htc/launcher/Launcher;->access$7002(Lcom/htc/launcher/Launcher;Z)Z

    .line 7155
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v8, v8, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v8}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7156
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8}, Lcom/htc/launcher/Launcher;->closeAllApplications()V

    goto :goto_0

    .line 7160
    :pswitch_2
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v8}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/launcher/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 7163
    :pswitch_3
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsAllowMoveToDefaultScreen:Z
    invoke-static {v8, v11}, Lcom/htc/launcher/Launcher;->access$7802(Lcom/htc/launcher/Launcher;Z)Z

    .line 7164
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v8}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v8

    #setter for: Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z
    invoke-static {v8, v10}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$2402(Lcom/htc/launcher/Launcher$WidgetTilter;Z)Z

    goto :goto_0

    .line 7167
    :pswitch_4
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsLockEnterThumbnailMode:Z
    invoke-static {v8, v10}, Lcom/htc/launcher/Launcher;->access$7902(Lcom/htc/launcher/Launcher;Z)Z

    goto :goto_0

    .line 7170
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    const-string v8, "ACTION_UAK_TRIGGLE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7171
    .local v7, uakIntent:Landroid/content/Intent;
    const-string v8, "EXTRA_UAK_KEY_TYPE"

    iget v9, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v9, v9, -0x1d

    add-int/lit8 v9, v9, 0x61

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7172
    const-string v8, "EXTRA_UAK_KEY_EVENT_LONGPRESS"

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7173
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8, v7}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 7174
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z
    invoke-static {v8, v11}, Lcom/htc/launcher/Launcher;->access$8002(Lcom/htc/launcher/Launcher;Z)Z

    .line 7175
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget v9, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/htc/launcher/Launcher;->lastUakKeyCode:I
    invoke-static {v8, v9}, Lcom/htc/launcher/Launcher;->access$8102(Lcom/htc/launcher/Launcher;I)I

    goto :goto_0

    .line 7179
    .end local v7           #uakIntent:Landroid/content/Intent;
    :pswitch_6
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v8, v11}, Lcom/htc/launcher/Launcher;->access$8212(Lcom/htc/launcher/Launcher;I)I

    .line 7180
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFinishLoading:I
    invoke-static {v8}, Lcom/htc/launcher/Launcher;->access$8200(Lcom/htc/launcher/Launcher;)I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 7181
    sget-boolean v8, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v8, :cond_2

    const-string v8, "Rosie"

    const-string v9, "[APTR_TEST, rider_s_351] LauncherHandler MSG_FINISH_BIND_FXWIDGET"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7182
    :cond_2
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8}, Lcom/htc/launcher/Launcher;->finishLoading()V

    goto/16 :goto_0

    .line 7190
    :pswitch_7
    sget-boolean v8, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v8, :cond_3

    const-string v8, "Rosie"

    const-string v9, "[APTR_TEST, rider_s_351] DISMISS_LOADING-------------"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7191
    :cond_3
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/htc/launcher/Launcher;->removeDialog(I)V

    .line 7192
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->enableTilt(Z)V
    invoke-static {v8, v11}, Lcom/htc/launcher/Launcher;->access$8300(Lcom/htc/launcher/Launcher;Z)V

    .line 7195
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    const-string v9, "launcher"

    invoke-virtual {v8, v9, v10}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 7196
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v8, "addDemoFLOShortcut"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7197
    .local v0, addDemoFLOShortcut:Z
    if-eqz v0, :cond_0

    .line 7198
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7199
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7200
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7201
    .local v2, data:Landroid/content/Intent;
    const-string v8, "com.htc.demoflo/.DemoFLO"

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 7202
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7203
    sget-boolean v8, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v8, :cond_4

    const-string v8, "Rosie"

    const-string v9, "Add DemoFLO shortcut"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7204
    :cond_4
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->addApplication(Landroid/content/Intent;)V

    .line 7206
    const-string v8, "com.htc.music/.browserlayer.MusicBrowserTabActivity"

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 7207
    .local v5, musicComp:Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7208
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v8, v12}, Lcom/htc/launcher/Launcher;->access$3102(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/CellInfo;)Lcom/htc/launcher/CellInfo;

    .line 7209
    sget-boolean v8, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v8, :cond_5

    const-string v8, "Rosie"

    const-string v9, "Add Music shortcut"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7210
    :cond_5
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->addApplication(Landroid/content/Intent;)V

    .line 7212
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "addDemoFLOShortcut"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 7217
    .end local v0           #addDemoFLOShortcut:Z
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v2           #data:Landroid/content/Intent;
    .end local v4           #mainIntent:Landroid/content/Intent;
    .end local v5           #musicComp:Landroid/content/ComponentName;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :pswitch_8
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v8}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/launcher/AddListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 7220
    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent;

    move-object v3, v8

    check-cast v3, Landroid/content/Intent;

    .line 7221
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.htccontacts.DialerTabActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.htccontacts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7223
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8}, Lcom/htc/launcher/Launcher;->startCallActivity()V

    goto/16 :goto_0

    .line 7225
    :cond_6
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8, v3}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7229
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_a
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8}, Lcom/htc/launcher/Launcher;->invalidateScenePreviews()V

    .line 7230
    iget-object v8, p0, Lcom/htc/launcher/Launcher$LauncherHandler;->this$0:Lcom/htc/launcher/Launcher;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v11, v9, v10}, Lcom/htc/launcher/Launcher;->startCreateScenePreviewThread(ZJ)V

    goto/16 :goto_0

    .line 7149
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
