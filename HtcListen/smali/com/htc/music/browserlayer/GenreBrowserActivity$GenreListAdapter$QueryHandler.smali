.class Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GenreBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    .line 885
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 886
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 893
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 894
    .local v1, searchContainsUnkown:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 895
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getUnknownGenre()Landroid/database/Cursor;

    move-result-object v2

    .line 896
    .local v2, unknown:Landroid/database/Cursor;
    const-string v3, "GenreBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete unknown= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    .line 898
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object p3, v3, v6

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p3
    .local v0, cursor:Landroid/database/Cursor;
    move-object p3, v0

    .line 904
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #unknown:Landroid/database/Cursor;
    .restart local p3
    :cond_0
    :goto_0
    const-string v3, "GenreBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete unknown= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 906
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v3

    iput-boolean v6, v3, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    .line 907
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 908
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showSpinner(Z)V

    .line 910
    :cond_1
    return-void

    .line 901
    .restart local v2       #unknown:Landroid/database/Cursor;
    :cond_2
    if-eqz v2, :cond_0

    .line 902
    move-object p3, v2

    goto :goto_0
.end method
