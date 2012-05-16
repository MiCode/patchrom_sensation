.class Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mNowPlaying:[I

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 3912
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 3913
    iput-object p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 3914
    iput-object p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 3915
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 3916
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 4060
    const-string v1, "("

    .line 4061
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 4062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4063
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 4064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4061
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4067
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4068
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4069
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 15

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 3925
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3929
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    if-nez v0, :cond_2

    .line 3930
    const-string v0, "[PluginNowPlayingListActivity]"

    const-string v1, "now playing list is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4004
    :cond_1
    :goto_1
    return-void

    .line 3926
    :catch_0
    move-exception v9

    .line 3927
    .local v9, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 3933
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 3934
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-eqz v0, :cond_1

    .line 3938
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3939
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v10, v0, :cond_4

    .line 3941
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v0, v0, v10

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3942
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_3

    .line 3943
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3946
    :cond_4
    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3951
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 3952
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3953
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 3955
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 3956
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    goto :goto_1

    .line 3959
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 3960
    .local v12, size:I
    new-array v0, v12, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    .line 3961
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3962
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 3963
    .local v7, colidx:I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_7

    .line 3964
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, v10

    .line 3965
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 3963
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3972
    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mPos:I

    .line 3973
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mRowIdColumnIndex:I

    .line 3974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 3975
    invoke-super {p0}, Landroid/database/AbstractCursor;->moveToFirst()Z

    .line 3976
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    .line 3983
    const/4 v11, 0x0

    .line 3984
    .local v11, removed:I
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    :goto_4
    if-ltz v10, :cond_9

    .line 3985
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v13, v0, v10

    .line 3986
    .local v13, trackid:I
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v0, v13}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    .line 3987
    .local v8, crsridx:I
    if-gez v8, :cond_8

    .line 3990
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0, v13}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    move-result v0

    add-int/2addr v11, v0

    .line 3984
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 3993
    .end local v8           #crsridx:I
    .end local v13           #trackid:I
    :cond_9
    if-lez v11, :cond_1

    .line 3994
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    .line 3995
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 3996
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_1

    .line 3997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 4001
    :catch_1
    move-exception v9

    .line 4002
    .restart local v9       #ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_1
.end method

.method private moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 4175
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    .line 4176
    .local v0, PlayListLen:I
    if-lt p1, v0, :cond_0

    .line 4177
    add-int/lit8 p1, v0, -0x1

    .line 4179
    :cond_0
    if-lt p2, v0, :cond_1

    .line 4180
    add-int/lit8 p2, v0, -0x1

    .line 4182
    :cond_1
    if-ge p1, p2, :cond_4

    .line 4183
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 4184
    .local v2, tmp:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 4185
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 4184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4187
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    .line 4196
    .end local v1           #i:I
    .end local v2           #tmp:I
    :cond_3
    :goto_1
    return-void

    .line 4188
    :cond_4
    if-ge p2, p1, :cond_3

    .line 4189
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 4190
    .restart local v2       #tmp:I
    move v1, p1

    .restart local v1       #i:I
    :goto_2
    if-le v1, p2, :cond_5

    .line 4191
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 4190
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 4193
    :cond_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4141
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 4134
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 4135
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 4171
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 4162
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4165
    :goto_0
    return v1

    .line 4163
    :catch_0
    move-exception v0

    .line 4164
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 4165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "idx"

    .prologue
    .line 4152
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4155
    :goto_0
    return-object v1

    .line 4153
    :catch_0
    move-exception v0

    .line 4154
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 4155
    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 4008
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 4118
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 4094
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4097
    :goto_0
    return v1

    .line 4095
    :catch_0
    move-exception v0

    .line 4096
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 4097
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 4104
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4107
    :goto_0
    return-wide v1

    .line 4105
    :catch_0
    move-exception v0

    .line 4106
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 4107
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    .prologue
    .line 4199
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 4084
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4087
    :goto_0
    return v1

    .line 4085
    :catch_0
    move-exception v0

    .line 4086
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 4087
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 4074
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4077
    :goto_0
    return-object v1

    .line 4075
    :catch_0
    move-exception v0

    .line 4076
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 4077
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 4123
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 4055
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->moveQueueItem(II)V

    .line 4056
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z

    .line 4057
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 4013
    if-ne p1, p2, :cond_0

    .line 4029
    :goto_0
    return v2

    .line 4016
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 4017
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4024
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 4025
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 4026
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4027
    iput p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 4034
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 4035
    const/4 v1, 0x0

    .line 4046
    :goto_0
    return v1

    .line 4037
    :cond_0
    move v0, p1

    .line 4038
    .local v0, i:I
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 4039
    :goto_1
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 4040
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 4041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4043
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4046
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 4044
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 4145
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 4146
    const/4 v0, 0x1

    return v0
.end method
