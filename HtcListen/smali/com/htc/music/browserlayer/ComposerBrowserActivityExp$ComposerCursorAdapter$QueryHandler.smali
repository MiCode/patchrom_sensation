.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposerBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    .line 1248
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1249
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1254
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iput-boolean v4, v2, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    .line 1259
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getUnknownComposer()Landroid/database/Cursor;

    move-result-object v1

    .line 1260
    .local v1, unknown:Landroid/database/Cursor;
    move-object v0, p3

    .line 1261
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 1262
    new-instance v0, Landroid/database/MergeCursor;

    .end local v0           #cur:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1265
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 1266
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    .line 1268
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method
