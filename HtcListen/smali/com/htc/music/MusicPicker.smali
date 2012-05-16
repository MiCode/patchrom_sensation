.class public Lcom/htc/music/MusicPicker;
.super Lcom/htc/music/widget/MusicListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPicker$QueryHandler;,
        Lcom/htc/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC"

.field static final ALBUM_MENU:I = 0x2

.field static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC, album COLLATE NOCASE ASC"

.field static final ARTIST_MENU:I = 0x3

.field static final CURSOR_COLS:[Ljava/lang/String; = null

.field static final DBG:Z = false

.field static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field static final LIMIT_SIZE:Ljava/lang/String; = "sizeLimit"

.field static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MEDIASTORE_DRM_CD:I = 0x5

.field static final MEDIASTORE_DRM_FL:I = 0x3

.field static final MY_QUERY_TOKEN:I = 0x2a

.field static final SORT_MODE_KEY:Ljava/lang/String; = "sortMode"

.field static final TAG:Ljava/lang/String; = "[MusicPickerActivity]"

.field static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field static final TRACK_MENU:I = 0x1

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field mCursor:Landroid/database/Cursor;

.field private mIsPlaying:Z

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mMimeTypeFilter:Ljava/lang/String;

.field mOkayButton:Lcom/htc/widget/HtcFooterButton;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mShowDRM:Z

.field mShowOgg:Z

.field mSizeLimit:I

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 112
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 129
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 131
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 109
    iput-boolean v1, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 142
    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 168
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    .line 174
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 179
    iput-boolean v1, p0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 181
    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    .line 183
    iput v1, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    .line 466
    new-instance v0, Lcom/htc/music/MusicPicker$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPicker$1;-><init>(Lcom/htc/music/MusicPicker;)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v0, Lcom/htc/music/MusicPicker$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPicker$2;-><init>(Lcom/htc/music/MusicPicker;)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MusicPicker;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/music/MusicPicker;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/MusicPicker;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/music/MusicPicker;->getUnknownAlbum()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/MusicPicker;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPicker;->setSelectedItemPosition(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MusicPicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MusicPicker;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MusicPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/music/MusicPicker;->isPlaying()Z

    move-result v0

    return v0
.end method

.method private addExtraQueryConditions(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "where"

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    if-eqz v0, :cond_2

    .line 1016
    const-string v0, " AND is_music!=3 AND is_music!=5 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :goto_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    if-nez v0, :cond_0

    .line 1023
    const-string v0, " AND is_music!=3 AND mime_type NOT LIKE \'application/ogg%\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_0
    iget v0, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    if-lez v0, :cond_1

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _size <= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    mul-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPicker;->addMimeTypeFilter(Ljava/lang/StringBuilder;)V

    .line 1033
    const-string v0, "[MusicPickerActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return-void

    .line 1020
    :cond_2
    const-string v0, " AND is_music<=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private addMimeTypeFilter(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "where"

    .prologue
    .line 1057
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1058
    iget-object v4, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, entries:[Ljava/lang/String;
    array-length v2, v0

    .line 1060
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .local v3, mimeTypeFilter:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_3

    .line 1062
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1063
    aget-object v4, v0, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mime_type == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    .line 1068
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1071
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1072
    const-string v4, " AND ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1074
    const-string v4, " )"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .end local v0           #entries:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #mimeTypeFilter:Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private getUnknownAlbum()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "album ISNULL"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v0, " OR album = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-direct {p0, v7}, Lcom/htc/music/MusicPicker;->addExtraQueryConditions(Ljava/lang/StringBuilder;)V

    .line 1005
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1007
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method private getUnknownArtist()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 991
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "artist ISNULL"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string v0, " OR artist = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-direct {p0, v7}, Lcom/htc/music/MusicPicker;->addExtraQueryConditions(Ljava/lang/StringBuilder;)V

    .line 995
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 997
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    return v0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "secs"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 449
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/htc/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 456
    sget-object v1, Lcom/htc/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    .line 457
    .local v1, timeArgs:[Ljava/lang/Object;
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 458
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 459
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 460
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 461
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 463
    sget-object v2, Lcom/htc/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setSelectedItemPosition(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cur"

    .prologue
    .line 1037
    iget-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1038
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 1039
    .local v1, savedCursorPos:I
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1040
    .local v0, idIndex:I
    const/4 v2, -0x1

    .line 1041
    .local v2, selectedPos:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1042
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1043
    iget-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 1044
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1046
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1050
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1051
    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 1052
    invoke-virtual {p0, v2}, Lcom/htc/music/MusicPicker;->setSelection(I)V

    .line 1054
    .end local v0           #idIndex:I
    .end local v1           #savedCursorPos:I
    .end local v2           #selectedPos:I
    :cond_2
    return-void
.end method


# virtual methods
.method canBeForwarded(Landroid/net/Uri;)Z
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 960
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 961
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 975
    :goto_0
    return v10

    .line 963
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 964
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 965
    const/4 v7, 0x0

    .line 966
    goto :goto_0

    .line 968
    :cond_1
    const/4 v6, 0x1

    .line 969
    .local v6, canBeForwarded:Z
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 970
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v1, "is_music"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 971
    .local v8, isMusic:J
    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 972
    const-wide/16 v0, 0x3

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x5

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .line 973
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 974
    const/4 v7, 0x0

    move v10, v6

    .line 975
    goto :goto_0

    :cond_3
    move v6, v10

    .line 972
    goto :goto_1
.end method

.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 756
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 759
    const-string v2, " AND artist is not null"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v2, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 768
    .local v6, keywords:[Ljava/lang/String;
    if-nez p2, :cond_4

    const/16 v19, 0x1

    .line 769
    .local v19, searchContainsUnkown:Z
    :goto_1
    if-eqz p2, :cond_6

    .line 770
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 771
    .local v23, unknownArtist:Ljava/lang/String;
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    .line 772
    .local v22, unknownAlbum:Ljava/lang/String;
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 773
    .local v20, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v6, v2, [Ljava/lang/String;

    .line 774
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v15

    .line 775
    .local v15, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 776
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 777
    aget-object v2, v20, v16

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v20, v16

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    :cond_1
    const/16 v19, 0x1

    .line 779
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v20, v16

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 776
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 761
    .end local v6           #keywords:[Ljava/lang/String;
    .end local v15           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v19           #searchContainsUnkown:Z
    .end local v20           #searchWords:[Ljava/lang/String;
    .end local v22           #unknownAlbum:Ljava/lang/String;
    .end local v23           #unknownArtist:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 762
    const-string v2, " AND album is not null"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v2, " AND album != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 768
    .restart local v6       #keywords:[Ljava/lang/String;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 781
    .restart local v15       #col:Ljava/text/Collator;
    .restart local v16       #i:I
    .restart local v19       #searchContainsUnkown:Z
    .restart local v20       #searchWords:[Ljava/lang/String;
    .restart local v22       #unknownAlbum:Ljava/lang/String;
    .restart local v23       #unknownArtist:Ljava/lang/String;
    :cond_5
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 782
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v2, "artist_key||"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v2, "album_key||"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const-string v2, "title_key LIKE ?"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 789
    .end local v15           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v20           #searchWords:[Ljava/lang/String;
    .end local v22           #unknownAlbum:Ljava/lang/String;
    .end local v23           #unknownArtist:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/music/MusicPicker;->addExtraQueryConditions(Ljava/lang/StringBuilder;)V

    .line 791
    if-eqz p1, :cond_9

    .line 793
    const/16 v17, 0x0

    .line 794
    .local v17, ret:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 797
    if-eqz v19, :cond_7

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v21

    .line 799
    .local v21, unknown:Landroid/database/Cursor;
    if-eqz v21, :cond_7

    .line 800
    new-instance v18, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    aput-object v21, v2, v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v17           #ret:Landroid/database/Cursor;
    .local v18, ret:Landroid/database/Cursor;
    move-object/from16 v17, v18

    .line 824
    .end local v18           #ret:Landroid/database/Cursor;
    .end local v21           #unknown:Landroid/database/Cursor;
    :cond_7
    :goto_4
    return-object v17

    .line 805
    .restart local v17       #ret:Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 806
    if-eqz v19, :cond_7

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getUnknownAlbum()Landroid/database/Cursor;

    move-result-object v21

    .line 808
    .restart local v21       #unknown:Landroid/database/Cursor;
    if-eqz v21, :cond_7

    .line 809
    new-instance v18, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    aput-object v21, v2, v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v17           #ret:Landroid/database/Cursor;
    .restart local v18       #ret:Landroid/database/Cursor;
    move-object/from16 v17, v18

    .end local v18           #ret:Landroid/database/Cursor;
    .restart local v17       #ret:Landroid/database/Cursor;
    goto :goto_4

    .line 819
    .end local v17           #ret:Landroid/database/Cursor;
    .end local v21           #unknown:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 820
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 821
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/MusicPicker;->mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

    const/16 v8, 0x2a

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v11, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/htc/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :goto_5
    const/16 v17, 0x0

    goto :goto_4

    .line 816
    .restart local v17       #ret:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto :goto_5
.end method

.method makeListShown(Z)V
    .locals 3
    .parameter "querySuccess"

    .prologue
    const/4 v2, 0x0

    .line 731
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mListShown:Z

    .line 733
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 735
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 738
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 936
    :pswitch_0
    iget-wide v0, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->canBeForwarded(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 938
    const v0, 0x7f07008a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 942
    :cond_1
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 943
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->finish()V

    goto :goto_0

    .line 948
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->finish()V

    goto :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x7f08003d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 914
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 916
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 918
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 919
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 921
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 686
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 688
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 689
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 690
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 692
    if-lez v1, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 695
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 494
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 495
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 497
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 498
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/MusicPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->requestWindowFeature(I)Z

    .line 507
    const/4 v13, 0x1

    .line 508
    .local v13, sortMode:I
    if-nez p1, :cond_4

    .line 509
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 511
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showDrm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    .line 512
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showOgg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 513
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sizeLimit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    .line 514
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MimeTypeFilter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "[MusicPickerActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mime type filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 537
    :cond_0
    :goto_0
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 548
    :cond_1
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setContentView(I)V

    .line 549
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 550
    .local v12, savePanel:Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 551
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setTitle(I)V

    .line 553
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 557
    .local v3, listView:Lcom/htc/widget/HtcListView;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 558
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 559
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 561
    new-instance v0, Lcom/htc/music/MusicPicker$TrackListAdapter;

    const v4, 0x7f030034

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v6, v1, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/MusicPicker$TrackListAdapter;-><init>(Lcom/htc/music/MusicPicker;Landroid/content/Context;Lcom/htc/widget/HtcListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    .line 565
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 570
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 572
    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 573
    new-instance v0, Lcom/htc/music/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/MusicPicker$QueryHandler;-><init>(Lcom/htc/music/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

    .line 575
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 576
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 578
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    .line 579
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c013c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 580
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 582
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c013d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 583
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 589
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v11

    .line 590
    .local v11, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 591
    .local v10, idx:I
    if-ltz v10, :cond_2

    .line 592
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 594
    :cond_2
    invoke-virtual {v8, v11}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 595
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 599
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    .line 606
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v10           #idx:I
    .end local v11           #path:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v13}, Lcom/htc/music/MusicPicker;->setSortMode(I)Z

    .line 607
    .end local v3           #listView:Lcom/htc/widget/HtcListView;
    .end local v12           #savePanel:Landroid/view/View;
    :goto_1
    return-void

    .line 521
    :cond_4
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 525
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 526
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mListHasFocus:Z

    .line 527
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 528
    const-string v0, "showDrm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    .line 529
    const-string v0, "showOgg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 530
    const-string v0, "sizeLimit"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    .line 531
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MimeTypeFilter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    const-string v0, "[MusicPickerActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mime type filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    goto/16 :goto_0

    .line 540
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 541
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 542
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->finish()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 623
    const v0, 0x7f070062

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 624
    const/4 v0, 0x2

    const v1, 0x7f070063

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 625
    const/4 v0, 0x3

    const v1, 0x7f070064

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 626
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 487
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 488
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 489
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 835
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 836
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 615
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 656
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    .line 657
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    .line 658
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 659
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 631
    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 633
    .local v0, enabled:Ljava/lang/Boolean;
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 634
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 636
    :cond_0
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 639
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 640
    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 642
    :cond_2
    return v3

    .line 631
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 610
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onRestart()V

    .line 611
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 612
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 675
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 676
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 677
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 678
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 680
    if-lez v1, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 683
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 646
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 649
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 650
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    const-string v0, "sortMode"

    iget v1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const-string v0, "sizeLimit"

    iget v1, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "filter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 955
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 956
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 957
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 662
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    .line 668
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 669
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    .line 670
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 10
    .parameter "c"

    .prologue
    .line 867
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 868
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 869
    .local v3, newId:J
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 871
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    .line 872
    iget-wide v6, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    cmp-long v6, v3, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v6, :cond_3

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    .line 874
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v8, "is_music"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 875
    .local v1, isMusic:J
    const-wide/16 v6, 0x1

    cmp-long v6, v1, v6

    if-lez v6, :cond_2

    .line 876
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 877
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 909
    .end local v1           #isMusic:J
    :cond_1
    :goto_0
    return-void

    .line 888
    .restart local v1       #isMusic:J
    :cond_2
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 890
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v6, p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 891
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 892
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 893
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 894
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 896
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 897
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 898
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 899
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->updateConfirmButtons()V

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Ljava/io/IOException;
    const-string v6, "[MusicPickerActivity]"

    const-string v7, "Unable to play track"

    invoke-static {v6, v7, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 902
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_1

    .line 905
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #isMusic:J
    :cond_3
    iget-object v6, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_1

    .line 906
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    .line 907
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method setSortMode(I)Z
    .locals 4
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 703
    iget v2, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    if-eq p1, v2, :cond_0

    .line 704
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 723
    :goto_0
    return v0

    .line 706
    :pswitch_0
    iput p1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 707
    const-string v2, "title COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 708
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 711
    :pswitch_1
    iput p1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 712
    const-string v2, "album COLLATE NOCASE ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 713
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 716
    :pswitch_2
    iput p1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 717
    const-string v2, "artist ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC, album COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 718
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 926
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 929
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 931
    :cond_0
    return-void
.end method

.method updateConfirmButtons()V
    .locals 5

    .prologue
    .line 979
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 980
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 984
    :cond_0
    return-void

    .line 979
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
