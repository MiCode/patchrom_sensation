.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;
.super Landroid/os/Handler;
.source "GenreBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 2842
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 2845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->preSearchTime:J
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$2100(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x122

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 2846
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    .line 2847
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2848
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 2850
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 2846
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
