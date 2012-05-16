.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;
.super Landroid/os/Handler;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 887
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 966
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 889
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 890
    .local v3, data:Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 892
    .local v5, notRefresh:Z
    if-eqz v3, :cond_1

    .line 893
    const-string v7, "NotRefresh"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 896
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eq v5, v8, :cond_2

    .line 897
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    .line 899
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 901
    const/4 v1, 0x0

    .line 903
    .local v1, bisBrowseDone:Z
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 904
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 911
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 912
    .local v6, size:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 913
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 915
    :cond_4
    if-eqz v1, :cond_5

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 916
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const v8, 0x7f0700c7

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 907
    .end local v6           #size:I
    :catch_0
    move-exception v4

    .line 909
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 918
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v6       #size:I
    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const v8, 0x7f0700be

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    goto/16 :goto_0

    .line 920
    .end local v1           #bisBrowseDone:Z
    .end local v6           #size:I
    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 921
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->hideEmptyErrorView()V

    goto/16 :goto_0

    .line 929
    .end local v3           #data:Landroid/os/Bundle;
    .end local v5           #notRefresh:Z
    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    goto/16 :goto_0

    .line 933
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    .line 935
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_7

    .line 936
    const-string v7, "[DMS]"

    const-string v8, "get cursor == null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 940
    :cond_7
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 941
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 945
    :cond_8
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->GetCursorInfo(Landroid/database/Cursor;)V

    .line 946
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 947
    const/4 v2, 0x0

    .line 948
    goto/16 :goto_0

    .line 951
    .end local v2           #cursor:Landroid/database/Cursor;
    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->sendBroadcast(Landroid/content/Intent;)V

    .line 952
    const-string v7, "DLNA"

    const-string v8, "DETAIL_PAGE"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    :pswitch_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setTitle()V
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 957
    const-string v7, "DLNA"

    const-string v8, "Set title"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 961
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "errorID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 964
    .local v0, ID:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v7, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showDialog(I)V

    goto/16 :goto_0

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
