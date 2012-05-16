.class public Lcom/htc/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_QUERYBROWSER_ACTIVITY:Ljava/lang/String; = "com.htc.music.query_browser_activity"

.field private static final ADD_TO_QUEUE:I = 0x1

.field private static final EXPLORE_ALBUM:I = 0x6

.field private static final EXPLORE_ARTIST:I = 0x4

.field private static final PLAY_ALBUM:I = 0x5

.field private static final PLAY_ARTIST:I = 0x3

.field private static final PLAY_NEXT:I = 0x2

.field private static final PLAY_NOW:I = 0x0

.field private static final REQUERY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[QueryBrowserActivity]"


# instance fields
.field private mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 262
    new-instance v0, Lcom/htc/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/QueryBrowserActivity$1;-><init>(Lcom/htc/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Lcom/htc/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/QueryBrowserActivity$2;-><init>(Lcom/htc/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 541
    iput-object v1, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 543
    iput-object v1, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/QueryBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/QueryBrowserActivity;)Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 359
    if-nez p2, :cond_0

    .line 360
    const-string p2, ""

    .line 362
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "artist"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "title"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "data1"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "data2"

    aput-object v5, v4, v0

    .line 372
    .local v4, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 375
    .local v3, search:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 376
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 377
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_0
    return-object v11

    :cond_1
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 379
    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 302
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 303
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 288
    :pswitch_0
    if-nez p2, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 99
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->requestWindowFeature(I)Z

    .line 102
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 235
    const-string v2, "[QueryBrowserActivity]"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 250
    iget-boolean v2, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 252
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 256
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "QueryBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy, fail to unregisterReceiver(mScanListener), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 318
    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 319
    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v6, "mime_type"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, selectedType:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/album"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v4, "artistid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v4, "album"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, albumId:Ljava/lang/String;
    const-string v4, "[QueryBrowserActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to launch album detail view. albumId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/albumtrack"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v4, "albumid"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 337
    .end local v0           #albumId:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    if-ltz p3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-ltz v4, :cond_4

    .line 338
    const/4 v4, 0x1

    new-array v2, v4, [I

    long-to-int v4, p4

    aput v4, v2, v7

    .line 339
    .local v2, list:[I
    const/4 v4, 0x0

    invoke-static {p0, v2, v7, v4}, Lcom/htc/music/util/MusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    .line 341
    .end local v2           #list:[I
    :cond_4
    const-string v4, "QueryBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid position/id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 109
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 112
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 119
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 355
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 351
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 231
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 222
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 18
    .parameter "name"
    .parameter "service"

    .prologue
    .line 122
    const-string v1, "[QueryBrowserActivity]"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v11, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "file"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/htc/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 130
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 134
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, path:Ljava/lang/String;
    const-string v1, "content://media/external/audio/media/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, id:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v15, v1, [I

    const/4 v1, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v15, v1

    .line 139
    .local v15, list:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15, v1, v2}, Lcom/htc/music/util/MusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    .line 213
    .end local v13           #id:Ljava/lang/String;
    .end local v15           #list:[I
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local v16       #path:Ljava/lang/String;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, "content://media/external/audio/albums/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, albumId:Ljava/lang/String;
    const-string v1, "[QueryBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. albumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v12, i:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "albumid"

    invoke-virtual {v12, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/high16 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 153
    .end local v9           #albumId:Ljava/lang/String;
    .end local v12           #i:Landroid/content/Intent;
    :cond_2
    const-string v1, "content://media/external/audio/artists/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v12       #i:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "artistid"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/high16 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 163
    .end local v12           #i:Landroid/content/Intent;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_3
    const-string v1, "com.htc.music.query_browser_activity"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    const-string v1, "albumid"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 165
    .restart local v9       #albumId:Ljava/lang/String;
    const-string v1, "[QueryBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. albumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v12       #i:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "albumid"

    invoke-virtual {v12, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/high16 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 174
    .end local v9           #albumId:Ljava/lang/String;
    .end local v12           #i:Landroid/content/Intent;
    :cond_4
    const-string v1, "query"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 176
    const v1, 0x7f030054

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->setContentView(I)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v1, :cond_6

    .line 182
    new-instance v1, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f030055

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v7, v3, [I

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 193
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/htc/music/QueryBrowserActivity;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getConstraint()Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, constraint:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1, v10}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    .end local v10           #constraint:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 216
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method
