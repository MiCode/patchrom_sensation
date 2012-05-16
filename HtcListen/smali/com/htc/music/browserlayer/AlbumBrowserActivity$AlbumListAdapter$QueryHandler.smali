.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    .line 1056
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 1057
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 1062
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 1063
    .local v2, unknownWhere:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1064
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getUnknownAlbum(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1065
    .local v1, unknown:Landroid/database/Cursor;
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 1066
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object p3, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p3
    .local v0, cursor:Landroid/database/Cursor;
    move-object p3, v0

    .line 1073
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #unknown:Landroid/database/Cursor;
    .restart local p3
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1074
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    iput-boolean v5, v3, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    .line 1075
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1076
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showSpinner(Z)V

    .line 1078
    :cond_1
    return-void

    .line 1069
    .restart local v1       #unknown:Landroid/database/Cursor;
    :cond_2
    if-eqz v1, :cond_0

    .line 1070
    move-object p3, v1

    goto :goto_0
.end method
