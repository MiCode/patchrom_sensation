.class public Lcom/htc/music/browserlayer/AlbumDetailActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_AUDIO_ID:Ljava/lang/String; = "audioid"

.field private static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final BUNDLE_KEY_TRACK_NAME:Ljava/lang/String; = "trackname"

.field private static final DIALOG_DRM_CONFIRM:I = 0x2

.field private static final DIALOG_DRM_ERROR:I = 0x1

.field private static final DIALOG_FOR_DELETE:I = 0x0

.field private static final DIALOG_NO_NETWORK:I = 0x9

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x3

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x4

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x6

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x8

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "[AlbumDetailActivity]"

.field private static final TYPE_COUNT:I = 0x4

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1

.field private static final TYPE_TEXT:I = 0x3

.field private static final TYPE_TRACK_LIST_ITEM:I = 0x2

.field private static final mAlbumCols:[Ljava/lang/String;

.field private static final mCursorCols:[Ljava/lang/String;


# instance fields
.field private final PLAY_ALL:I

.field private final SETTING:I

.field private final UPLOAD:I

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mAlbumArtOffectX:I

.field private mAlbumArtOffectY:I

.field private mAlbumArtPath:Ljava/lang/String;

.field private mAlbumArtSize:I

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumTitle:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mCategory:Lcom/htc/music/NpCategory;

.field private mComposer:Ljava/lang/String;

.field private mDefaultAlbumArt:Landroid/graphics/Bitmap;

.field private mEmptyViewMsg:I

.field private mGenre:Ljava/lang/String;

.field private mLG:Landroid/graphics/Shader;

.field private mMode:Landroid/graphics/Xfermode;

.field private mMsg:Ljava/lang/CharSequence;

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mNumberOfTracks:I

.field private mOrientation:I

.field private mReflectionHeight:I

.field private mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedData:Landroid/os/Bundle;

.field private mShareText:Ljava/lang/String;

.field private mShowError:Z

.field private mStopping:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private volatile mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

.field private volatile nonUIThread:Landroid/os/HandlerThread;

.field private queryingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCursorCols:[Ljava/lang/String;

    .line 140
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "numsongs"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 93
    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->PLAY_ALL:I

    .line 95
    const/16 v0, 0x19

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->UPLOAD:I

    .line 97
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->SETTING:I

    .line 144
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 146
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    .line 148
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    .line 150
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 152
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    .line 154
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 156
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 158
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I

    .line 160
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I

    .line 162
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I

    .line 164
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I

    .line 166
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    .line 168
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    .line 170
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    .line 172
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 174
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 182
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 184
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    .line 186
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 190
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 192
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 194
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    .line 196
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    .line 198
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 202
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 206
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 208
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 1719
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$7;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 1726
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$8;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V

    return-void
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Xfermode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Shader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showTrackOptions()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->decreaseQueryingCount()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicFile()V

    return-void
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1762
    return-void
.end method

.method private clearData()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 398
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 401
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_0
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 406
    :cond_1
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 407
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    .line 408
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 409
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 410
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 411
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    .line 412
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 416
    :cond_2
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 418
    :cond_3
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 419
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    .line 420
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    .line 421
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 422
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 423
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->clearData()V

    .line 425
    return-void
.end method

.method private clearQueryingCount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1859
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 1860
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 1861
    return-void
.end method

.method private decreaseQueryingCount()V
    .locals 2

    .prologue
    .line 1854
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 1855
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 1856
    return-void

    .line 1855
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 1757
    .local v0, rootContext:Landroid/app/Activity;
    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    return-void
.end method

.method private increaseQueryingCount()V
    .locals 2

    .prologue
    .line 1849
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 1850
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 1851
    return-void

    .line 1850
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 1765
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v6, "position"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1766
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1767
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v5, "audioid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1769
    .local v0, audioId:I
    invoke-static {p0, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1771
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 1783
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1784
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1786
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1773
    :pswitch_0
    const-string v4, "[AlbumDetailActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    goto :goto_0

    .line 1778
    :pswitch_1
    const-string v4, "[AlbumDetailActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    goto :goto_0

    .line 1771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 1789
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    .line 1791
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1792
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    .line 1796
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1797
    return-void
.end method

.method private showTrackOptions()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x7

    .line 1801
    const/4 v2, 0x0

    .line 1802
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1803
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 1804
    .local v0, dlnaMode:I
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1805
    if-nez v0, :cond_0

    .line 1807
    const/16 v3, 0x9

    new-array v2, v3, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f070050

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x20c01f7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x20c0138

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x20c01fe

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1812
    .restart local v2       #items:[Ljava/lang/CharSequence;
    const/16 v3, 0x9

    new-array v1, v3, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 1841
    .restart local v1       #ids:[I
    :goto_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v4, "trackname"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1842
    return-void

    .line 1816
    :cond_0
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f07000a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x20c01f7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x20c0138

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x20c01fe

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1820
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 1824
    :cond_1
    if-nez v0, :cond_2

    .line 1826
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f070050

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x20c01f7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x20c0138

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x20c01fe

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1830
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_2

    .restart local v1       #ids:[I
    goto/16 :goto_0

    .line 1834
    :cond_2
    new-array v2, v5, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x20c01f7

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x20c0138

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x20c01fe

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1838
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v5, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_3

    .restart local v1       #ids:[I
    goto/16 :goto_0

    .line 1812
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1820
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1830
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1838
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getQueryingCount()I
    .locals 1

    .prologue
    .line 1845
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    .line 708
    sparse-switch p1, :sswitch_data_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 710
    :sswitch_0
    if-ne p2, v8, :cond_0

    .line 714
    const/4 v8, 0x1

    new-array v5, v8, [I

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v9, "audioid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v10

    .line 715
    .local v5, list:[I
    const-string v8, "playlist"

    invoke-virtual {p3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {p0, v5, v8, v9}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 720
    .end local v5           #list:[I
    :sswitch_1
    if-ne p2, v8, :cond_0

    .line 721
    const-string v8, "[AlbumDetailActivity]"

    const-string v9, "receive set contact ringtone activity result"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    const-string v9, "SELECTED_ID"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->handleContactRingtoneResult(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 728
    :sswitch_2
    if-ne p2, v8, :cond_0

    .line 729
    const-string v8, "selectedlist"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 730
    .local v6, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 733
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 734
    .local v4, iCount:I
    new-array v1, v4, [Ljava/lang/String;

    .line 735
    .local v1, dataPathArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 736
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 737
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 738
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 739
    const-string v8, "_data"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    .line 740
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 744
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    new-instance v7, Ljava/lang/String;

    const-string v8, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 746
    .local v7, szAction:Ljava/lang/String;
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "upload"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, ex:Ljava/lang/SecurityException;
    const-string v8, "[AlbumDetailActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "We do not have permission to start the service :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 753
    .end local v1           #dataPathArray:[Ljava/lang/String;
    .end local v2           #ex:Ljava/lang/SecurityException;
    .end local v3           #i:I
    .end local v4           #iCount:I
    .end local v6           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #szAction:Ljava/lang/String;
    :sswitch_3
    if-ne p2, v8, :cond_0

    .line 754
    if-eqz p3, :cond_3

    .line 755
    invoke-virtual {p0, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 757
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x19 -> :sswitch_2
        0xc351 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 324
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 326
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 214
    const-string v0, "[AlbumDetailActivity]"

    const-string v2, "== onCreate() =="

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->requestWindowFeature(I)Z

    .line 218
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setVolumeControlStream(I)V

    .line 221
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setContentView(I)V

    .line 222
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "albumid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 236
    const-string v0, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mComposer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 241
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 253
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 254
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 258
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 260
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 263
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-direct {v0, p0, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Lcom/htc/music/browserlayer/AlbumDetailActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    .line 270
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "[AlbumDetailActivity]"

    invoke-direct {v0, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 271
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 272
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    .line 274
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->backPressed(I)V

    .line 315
    :goto_1
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 244
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 246
    new-instance v0, Lcom/htc/music/NpCategory;

    invoke-direct {v0, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 247
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    .line 249
    :cond_3
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    .line 280
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->enableSearch()V

    .line 282
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 283
    .local v10, resources:Landroid/content/res/Resources;
    const v0, 0x7f0a000a

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I

    .line 284
    const v0, 0x7f0a000b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I

    .line 285
    const v0, 0x7f0a000c

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I

    .line 286
    const v0, 0x7f0a000d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I

    .line 288
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 289
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 290
    const v0, 0x7f020046

    invoke-static {v10, v0, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 292
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    .line 293
    const-string v0, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "options.outHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v3

    const/high16 v5, -0x100

    const/high16 v6, 0x5f00

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    .line 298
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 300
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.metachanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 311
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v0, v11, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeAlbumArt(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const v13, 0x1080027

    const v12, 0x1040013

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 537
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 538
    move-object v0, p0

    .line 539
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 644
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v6

    :goto_0
    return-object v6

    .line 542
    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 543
    const v7, 0x7f070011

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, f:Ljava/lang/String;
    :goto_1
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v9, "trackname"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, desc:Ljava/lang/String;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x20c01fc

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/htc/music/browserlayer/AlbumDetailActivity$1;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto :goto_0

    .line 545
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_1
    const v7, 0x7f070010

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_1

    .line 560
    .end local v2           #f:Ljava/lang/String;
    :pswitch_1
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07005d

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/browserlayer/AlbumDetailActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto :goto_0

    .line 568
    :pswitch_2
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/htc/music/browserlayer/AlbumDetailActivity$4;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 582
    :pswitch_3
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/CharSequence;

    const v7, 0x7f0700a9

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    const v7, 0x7f0700aa

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    const v7, 0x7f0700ab

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v11

    .line 584
    .local v3, items:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v7, :cond_2

    .line 585
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/16 v8, 0x13

    invoke-virtual {v7, v3, v8}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 587
    :cond_2
    const-string v7, "[AlbumDetailActivity]"

    const-string v8, "mRingToneHelper is null!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_4
    const-string v7, "Soar"

    const-string v8, "DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-array v3, v11, [Ljava/lang/CharSequence;

    const v7, 0x7f0700a9

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    const v7, 0x7f0700aa

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 595
    .restart local v3       #items:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v7, :cond_3

    .line 596
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/16 v8, 0x13

    invoke-virtual {v7, v3, v8}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 598
    :cond_3
    const-string v7, "[AlbumDetailActivity]"

    const-string v8, "mRingToneHelper is null!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v6

    goto/16 :goto_0

    .line 607
    :pswitch_6
    new-array v3, v11, [Ljava/lang/CharSequence;

    const v7, 0x7f07010d

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    const v7, 0x7f07010e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 610
    .restart local v3       #items:[Ljava/lang/CharSequence;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v9, "trackname"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/browserlayer/AlbumDetailActivity$6;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v7, v3, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 627
    .local v6, shareTypeDialog:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 631
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v6           #shareTypeDialog:Landroid/app/AlertDialog;
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v10, v8, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v5

    .local v5, shareNormaldialog:Landroid/app/Dialog;
    move-object v6, v5

    .line 633
    goto/16 :goto_0

    .line 637
    .end local v5           #shareNormaldialog:Landroid/app/Dialog;
    :pswitch_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v10, v8, v9}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .local v4, shareDRMDialog:Landroid/app/Dialog;
    move-object v6, v4

    .line 639
    goto/16 :goto_0

    .line 642
    .end local v4           #shareDRMDialog:Landroid/app/Dialog;
    :pswitch_9
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v6

    goto/16 :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 474
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 475
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 476
    const/16 v0, 0x18

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 477
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const/16 v0, 0x19

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080aa0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 480
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const/16 v0, 0x1a

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 484
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 447
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearData()V

    .line 448
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 450
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 469
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 470
    return-void

    .line 463
    :catch_0
    move-exception v0

    goto :goto_1

    .line 457
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 14
    .parameter "id"

    .prologue
    .line 815
    const-string v10, "[AlbumDetailActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onHtcContextItemSelected, id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    packed-switch p1, :pswitch_data_0

    .line 901
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v10

    :goto_0
    return v10

    .line 818
    :pswitch_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "position"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->playAllFromIndex(I)V

    .line 819
    const/4 v10, 0x1

    goto :goto_0

    .line 822
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 823
    .local v7, intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v7, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 824
    const-string v10, "pickermode"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "audioid"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v0, v10

    .line 826
    .local v0, addToPlaylistData:[I
    const-string v10, "AddToPlaylistData"

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 827
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 828
    const/4 v10, 0x1

    goto :goto_0

    .line 832
    .end local v0           #addToPlaylistData:[I
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v10, "[AlbumDetailActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v13, "audioid"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :try_start_0
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v13, "audioid"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 835
    :catch_0
    move-exception v4

    .line 836
    .local v4, e:Landroid/os/RemoteException;
    const-string v10, "[AlbumDetailActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 842
    .end local v4           #e:Landroid/os/RemoteException;
    :pswitch_4
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 843
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 847
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 848
    .restart local v7       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v7, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 849
    const-string v10, "track"

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "audioid"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const/4 v10, -0x2

    invoke-virtual {p0, v7, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 852
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 856
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_6
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_data"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 858
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 859
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 861
    :cond_1
    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 863
    .local v1, currentAudioType:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v10, :cond_2

    .line 864
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "audioid"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/util/RingtoneHelper;->setAudioId(I)V

    .line 865
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v10, v8}, Lcom/htc/music/util/RingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 866
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v10, v1}, Lcom/htc/music/util/RingtoneHelper;->setAudioType(I)V

    .line 867
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/music/util/RingtoneHelper;->useAsRingtone(Z)V

    .line 870
    :cond_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 874
    .end local v1           #currentAudioType:I
    .end local v8           #path:Ljava/lang/String;
    :pswitch_7
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v11, "audioid"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 875
    .local v6, index:Ljava/lang/Integer;
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .line 876
    .local v3, dataPathArray:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    .line 877
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 878
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 879
    const/4 v10, 0x0

    const-string v11, "_data"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 880
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 881
    const/4 v2, 0x0

    .line 883
    :cond_3
    new-instance v9, Ljava/lang/String;

    const-string v10, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 885
    .local v9, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "upload"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 889
    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 886
    :catch_1
    move-exception v5

    .line 887
    .local v5, ex:Ljava/lang/SecurityException;
    const-string v10, "[AlbumDetailActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "We do not have permission to start the service :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 892
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #dataPathArray:[Ljava/lang/String;
    .end local v5           #ex:Ljava/lang/SecurityException;
    .end local v6           #index:Ljava/lang/Integer;
    .end local v9           #szAction:Ljava/lang/String;
    :pswitch_8
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v11, "trackname"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 896
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->chooseShareType()V

    .line 897
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 765
    const-string v3, "[AlbumDetailActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick, position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I

    move-result v3

    if-ne p3, v3, :cond_2

    .line 768
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    const-string v3, "[AlbumDetailActivity]"

    const-string v4, "Trying to launching online artist detail view..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.store.DETAIL_VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.media/artist"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 778
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v3, "InnerActivityType"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const v3, 0xc351

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 789
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    add-int/lit8 v0, p3, -0x2

    .line 790
    .local v0, i:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v0, :cond_0

    .line 793
    const v3, 0x7f080058

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 794
    .local v1, ib:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 796
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->onHtcContextItemSelected(I)Z

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 800
    const-string v2, "[AlbumDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemLongClick, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    add-int/lit8 v0, p3, -0x2

    .line 803
    .local v0, i:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 804
    :cond_0
    const/4 v2, 0x0

    .line 811
    :goto_0
    return v2

    .line 806
    :cond_1
    const v2, 0x7f080058

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 807
    .local v1, ib:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 809
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showTrackOptions()V

    .line 811
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 353
    const-string v1, "albumid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, albumId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearData()V

    .line 359
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 363
    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 364
    const-string v1, "artistid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 365
    const-string v1, "genreid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 366
    const-string v1, "composer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 370
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 380
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 382
    const-string v1, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mComposer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->backPressed(I)V

    .line 395
    :goto_1
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 372
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 373
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 375
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 376
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 378
    :cond_2
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 393
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 530
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 508
    :sswitch_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->playAll()V

    goto :goto_0

    .line 512
    :sswitch_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->shuffleAll()V

    goto :goto_0

    .line 516
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "albumid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-class v2, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 520
    const/16 v2, 0x19

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 525
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v2, -0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 12
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 649
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 650
    packed-switch p1, :pswitch_data_0

    .line 704
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 653
    .restart local p2
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    const v5, 0x7f070011

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, f:Ljava/lang/String;
    :goto_1
    new-array v5, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v10, "trackname"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, desc:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v6}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 656
    .end local v6           #desc:Ljava/lang/String;
    .end local v7           #f:Ljava/lang/String;
    .restart local p2
    :cond_0
    const v5, 0x7f070010

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #f:Ljava/lang/String;
    goto :goto_1

    .line 662
    .end local v7           #f:Ljava/lang/String;
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 665
    .restart local p2
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 666
    .local v4, adapter:Lcom/htc/music/widget/SharedAdapter;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareText:Ljava/lang/String;

    invoke-static {v3, v5, v4, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    .local v8, listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v3, p2

    .line 668
    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 669
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 674
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v8           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_4
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v5, "trackname"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 678
    .restart local p2
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 679
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v9, "audioid"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 680
    .local v1, audioId:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v10, "_data"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, path:Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .restart local v4       #adapter:Lcom/htc/music/widget/SharedAdapter;
    move-object v5, p2

    .line 683
    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    .restart local v8       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v3, p2

    .line 685
    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 686
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 691
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #audioId:I
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v8           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 692
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v9, "audioid"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 693
    .restart local v1       #audioId:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v10, "_data"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    .restart local v2       #path:Ljava/lang/String;
    invoke-static {v0, v1, v2, v11}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .restart local v4       #adapter:Lcom/htc/music/widget/SharedAdapter;
    move-object v5, p2

    .line 696
    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    .restart local v8       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v3, p2

    .line 698
    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 699
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 490
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 491
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 493
    :cond_0
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_1

    .line 495
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 497
    :cond_1
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_2

    .line 499
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_5

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 501
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_3
    move v1, v3

    .line 491
    goto :goto_0

    :cond_4
    move v1, v3

    .line 495
    goto :goto_1

    :cond_5
    move v2, v3

    .line 499
    goto :goto_2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 340
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 345
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 433
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 434
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 440
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 441
    return-void
.end method
