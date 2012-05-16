.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 1205
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1206
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 1212
    if-eqz p3, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-result-object v0

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p3

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1216
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-result-object v0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    .line 1217
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showSpinner(Z)V

    .line 1220
    :cond_1
    return-void
.end method
