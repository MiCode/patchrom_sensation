.class public Lcom/htc/music/browserlayer/ComposerBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "ComposerBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerCursor;,
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
    }
.end annotation


# static fields
.field private static final COMPOSER_DEFAULT_SORT_ORDER:Ljava/lang/String; = "composer COLLATE NOCASE ASC"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

.field private mAdapterSent:Z

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mComposerCursor:Landroid/database/Cursor;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentComposerName:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mFilter:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 219
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 941
    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 943
    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 945
    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    .line 946
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->preSearchTime:J

    .line 947
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 613
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v1, "is_music>=1"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, " AND composer is not null"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, " AND composer != \'\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, " AND composer != \'<unknown>\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const/4 v7, 0x0

    .line 622
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_1

    const/4 v11, 0x1

    .line 623
    .local v11, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 637
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 638
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 639
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, "composer LIKE ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 643
    .local v13, unknownAlbum:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const/4 v11, 0x1

    .line 648
    .end local v13           #unknownAlbum:Ljava/lang/String;
    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, whereclause:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISTINCT composer"

    aput-object v2, v5, v1

    .line 654
    .local v5, cols:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 655
    .local v9, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 656
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    .line 657
    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .line 665
    .end local v9           #ret:Landroid/database/Cursor;
    .local v10, ret:Landroid/database/Cursor;
    :goto_1
    if-eqz v11, :cond_3

    if-nez p1, :cond_3

    .line 666
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getUnknownComposer()Landroid/database/Cursor;

    move-result-object v12

    .line 667
    .local v12, unknown:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 668
    new-instance v9, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    invoke-direct {v9, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 674
    .end local v10           #ret:Landroid/database/Cursor;
    .end local v12           #unknown:Landroid/database/Cursor;
    .restart local v9       #ret:Landroid/database/Cursor;
    :goto_2
    return-object v9

    .line 622
    .end local v5           #cols:[Ljava/lang/String;
    .end local v6           #whereclause:Ljava/lang/String;
    .end local v9           #ret:Landroid/database/Cursor;
    .end local v11           #searchContainsUnkown:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 661
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v6       #whereclause:Ljava/lang/String;
    .restart local v9       #ret:Landroid/database/Cursor;
    .restart local v11       #searchContainsUnkown:Z
    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v10, v9

    .end local v9           #ret:Landroid/database/Cursor;
    .restart local v10       #ret:Landroid/database/Cursor;
    goto :goto_1

    :cond_3
    move-object v9, v10

    .end local v10           #ret:Landroid/database/Cursor;
    .restart local v9       #ret:Landroid/database/Cursor;
    goto :goto_2
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 294
    const-string v0, ""

    .line 296
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 301
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 304
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    return-void

    .line 299
    :cond_0
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public getUnknownComposer()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 678
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "composer"

    aput-object v1, v2, v0

    .line 682
    .local v2, cols:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 686
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, whereclause:Ljava/lang/String;
    const-string v5, "random() desc limit 1"

    .line 689
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 692
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 272
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showDatabaseError()V

    .line 275
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->closeContextMenu()V

    .line 276
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 280
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 284
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->hideEmptyErrorView()V

    .line 290
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 310
    sparse-switch p1, :sswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 312
    :sswitch_0
    if-nez p2, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->finish()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 322
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 324
    .local v0, list:[I
    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 325
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 330
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_2
    if-ne p2, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 338
    :sswitch_3
    if-ne p2, v2, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->finish()V

    goto :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCountTemplate:Ljava/lang/String;

    .line 113
    if-eqz p1, :cond_1

    .line 114
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 115
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 121
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->requestWindowFeature(I)Z

    .line 124
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setVolumeControlStream(I)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 127
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setContentView(I)V

    .line 135
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    .line 136
    .local v10, lv:Lcom/htc/widget/HtcListView;
    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 137
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 138
    invoke-virtual {v10, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    .line 141
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f030012

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    new-array v6, v1, [Ljava/lang/String;

    new-array v7, v1, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    .line 145
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle()V

    .line 148
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setSearchHint(I)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->enableSearch()V

    .line 165
    :cond_0
    return-void

    .line 117
    .end local v8           #f:Landroid/content/IntentFilter;
    .end local v10           #lv:Lcom/htc/widget/HtcListView;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 118
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "artistid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 119
    const-string v0, "playlisturi"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v8       #f:Landroid/content/IntentFilter;
    .restart local v10       #lv:Lcom/htc/widget/HtcListView;
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    .line 151
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    .line 153
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f070045

    const v8, 0x20c01fc

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 395
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 396
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 466
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 399
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, title:Ljava/lang/String;
    :goto_1
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 407
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 402
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    .restart local v4       #title:Ljava/lang/String;
    goto :goto_1

    .line 438
    .end local v4           #title:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    const v5, 0x7f07000f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, f:Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 446
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, desc:Ljava/lang/String;
    :goto_3
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/htc/music/browserlayer/ComposerBrowserActivity$4;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 441
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_2
    const v5, 0x7f07000e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_2

    .line 448
    :cond_3
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_3

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 506
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 507
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 517
    :goto_0
    return v3

    .line 515
    :cond_0
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 516
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809ea

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 472
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDeletionCompleted()V

    .line 473
    const-string v0, "ComposerBrowserActivity"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 477
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 202
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iput-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    .line 205
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 206
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 347
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 351
    const-string v1, "<unknown>"

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v2, "composer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, result:Z
    const-string v1, "ComposerBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 380
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    const-string v3, "composer"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    .line 382
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showDialog(I)V

    .line 383
    const/4 v0, 0x1

    .line 385
    :cond_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 581
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 557
    :pswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 559
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequery(ZZ)V

    .line 263
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    .line 264
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    const v6, 0x7f070045

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 481
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 502
    .end local p2
    :goto_0
    return-void

    .line 485
    .restart local p2
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, title:Ljava/lang/String;
    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    .end local v2           #title:Ljava/lang/String;
    .restart local p2
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_1

    .line 492
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, f:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, desc:Ljava/lang/String;
    :goto_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    .end local v0           #desc:Ljava/lang/String;
    .restart local p2
    :cond_1
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #desc:Ljava/lang/String;
    goto :goto_2

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 528
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 529
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 531
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 535
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 523
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 211
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle()V

    .line 212
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequery(ZZ)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showSpinner(Z)V

    .line 217
    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapterSent:Z

    .line 170
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 178
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 903
    packed-switch p2, :pswitch_data_0

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 905
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 909
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequery(Z)V

    goto :goto_0

    .line 913
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->preSearchTime:J

    .line 898
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 900
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 9
    .parameter "forceShuffle"

    .prologue
    const/4 v8, 0x1

    .line 591
    const/4 v6, 0x0

    .line 592
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "album_id"

    aput-object v0, v2, v8

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 597
    if-eqz v6, :cond_1

    .line 598
    const/4 v7, 0x0

    .line 599
    .local v7, npc:Lcom/htc/music/NpCategory;
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 600
    new-instance v7, Lcom/htc/music/NpCategory;

    .end local v7           #npc:Lcom/htc/music/NpCategory;
    const/16 v0, 0x13

    invoke-direct {v7, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 602
    .restart local v7       #npc:Lcom/htc/music/NpCategory;
    :cond_0
    if-eqz p1, :cond_2

    .line 603
    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 606
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 607
    const/4 v6, 0x0

    .line 609
    .end local v7           #npc:Lcom/htc/music/NpCategory;
    :cond_1
    return v8

    .line 605
    .restart local v7       #npc:Lcom/htc/music/NpCategory;
    :cond_2
    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_0
.end method
