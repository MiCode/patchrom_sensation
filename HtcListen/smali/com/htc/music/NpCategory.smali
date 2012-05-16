.class public Lcom/htc/music/NpCategory;
.super Ljava/lang/Object;
.source "NpCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CATEGORY_ALBUM:S = 0x8s

.field public static final CATEGORY_ALLALBUM:S = 0xcs

.field public static final CATEGORY_ALLARTIST:S = 0x5s

.field public static final CATEGORY_ALLCOMPOSER:S = 0x13s

.field public static final CATEGORY_ALLGENRE:S = 0x11s

.field public static final CATEGORY_ALLPLAYLIST:S = 0x16s

.field public static final CATEGORY_ALLSONG:S = 0x0s

.field public static final CATEGORY_ARTIST:S = 0x2s

.field public static final CATEGORY_ARTIST_ALBUM:S = 0xbs

.field public static final CATEGORY_ARTIST_ALLALBUM:S = 0xfs

.field public static final CATEGORY_COMPOSER:S = 0x12s

.field public static final CATEGORY_COMPOSER_ALBUM:S = 0xas

.field public static final CATEGORY_COMPOSER_ALLALBUM:S = 0xes

.field public static final CATEGORY_COMPOSER_ALLARTIST:S = 0x7s

.field public static final CATEGORY_COMPOSER_ARTIST:S = 0x4s

.field public static final CATEGORY_DONT_REFRESH:S = 0x15s

.field public static final CATEGORY_GENRE:S = 0x10s

.field public static final CATEGORY_GENRE_ALBUM:S = 0x9s

.field public static final CATEGORY_GENRE_ALLALBUM:S = 0xds

.field public static final CATEGORY_GENRE_ALLARTIST:S = 0x6s

.field public static final CATEGORY_GENRE_ARTIST:S = 0x3s

.field public static final CATEGORY_PLAYLIST:S = 0x14s

.field public static final CATEGORY_PURCHASED:S = 0x1s

.field public static final CATEGORY_UNDEFINED:S = -0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/NpCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[NpCategory]"


# instance fields
.field private mAlbumId:I

.field private mArtistId:I

.field private mCategory:S

.field private mComposer:Ljava/lang/StringBuilder;

.field private mGenreId:I

.field private mPlaylistId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/htc/music/NpCategory$1;

    invoke-direct {v0}, Lcom/htc/music/NpCategory$1;-><init>()V

    sput-object v0, Lcom/htc/music/NpCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 504
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 506
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/music/NpCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/music/NpCategory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3
    .parameter "category"

    .prologue
    const/4 v2, -0x1

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 129
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 134
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 135
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 136
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 138
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 139
    return-void

    .line 132
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SIIILjava/lang/String;I)V
    .locals 3
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v2, -0x1

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 143
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 148
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 149
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 150
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 152
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 154
    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    .line 155
    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    .line 156
    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    .line 157
    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 158
    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    .line 159
    return-void

    .line 146
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v2, -0x1

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 163
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 168
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 169
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 170
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 172
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 174
    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 175
    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 176
    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 177
    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 178
    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 179
    return-void

    .line 166
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    return v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    return v0
.end method

.method public getCategory()S
    .locals 1

    .prologue
    .line 440
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenreId()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    return v0
.end method

.method public query(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 26
    .parameter "context"

    .prologue
    .line 523
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 524
    :cond_0
    const/4 v11, 0x0

    .line 835
    :cond_1
    :goto_0
    return-object v11

    .line 527
    :cond_2
    const/4 v11, 0x0

    .line 528
    .local v11, c:Landroid/database/Cursor;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v24, where:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 530
    .local v7, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 531
    .local v10, sortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 533
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    packed-switch v2, :pswitch_data_0

    .line 819
    :pswitch_0
    const-string v2, "[NpCategory]"

    const-string v3, "There is something wrong in NpCategory.query()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :goto_1
    if-nez v10, :cond_3

    .line 822
    const-string v10, "title COLLATE NOCASE ASC"

    .line 824
    :cond_3
    if-nez v6, :cond_4

    .line 825
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 827
    :cond_4
    if-nez v7, :cond_5

    .line 828
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #cols:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    .line 830
    .restart local v7       #cols:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 831
    const/16 v24, 0x0

    .line 832
    const/4 v10, 0x0

    .line 833
    const/4 v6, 0x0

    .line 834
    const/4 v7, 0x0

    .line 835
    goto :goto_0

    .line 535
    :pswitch_1
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 539
    :pswitch_2
    const-string v2, "title != \'\' AND is_music>1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 543
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_6

    .line 544
    const/4 v11, 0x0

    goto :goto_0

    .line 546
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 550
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_8

    .line 551
    :cond_7
    const/4 v11, 0x0

    goto :goto_0

    .line 553
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 557
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    .line 558
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 560
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 564
    :pswitch_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 568
    goto/16 :goto_1

    .line 571
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_b

    .line 572
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 574
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v10, "title_key"

    .line 576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 577
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    .line 579
    :cond_c
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 584
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    .line 585
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 587
    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 592
    goto/16 :goto_1

    .line 595
    :pswitch_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_f

    .line 596
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 598
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 600
    goto/16 :goto_1

    .line 603
    :pswitch_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_11

    .line 604
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 606
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 608
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 612
    :goto_2
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 613
    goto/16 :goto_1

    .line 610
    :cond_12
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 616
    :pswitch_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_14

    .line 617
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 619
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 622
    goto/16 :goto_1

    .line 625
    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_16

    .line 626
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 628
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 631
    goto/16 :goto_1

    .line 634
    :pswitch_d
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 638
    goto/16 :goto_1

    .line 641
    :pswitch_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_17

    .line 642
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 644
    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v10, "title_key"

    .line 646
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 647
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    .line 649
    :cond_18
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 654
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1a

    .line 655
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 657
    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 662
    goto/16 :goto_1

    .line 665
    :pswitch_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1b

    .line 666
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 668
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 672
    goto/16 :goto_1

    .line 675
    :pswitch_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_1c

    .line 676
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 678
    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 680
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 684
    :goto_3
    const-string v10, "title_key"

    .line 685
    goto/16 :goto_1

    .line 682
    :cond_1d
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 688
    :pswitch_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v25, whereClause:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "title"

    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #cols:[Ljava/lang/String;
    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 697
    .local v22, results:Landroid/database/Cursor;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 702
    .local v16, genres:Landroid/database/Cursor;
    if-eqz v22, :cond_1e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    :cond_1e
    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    .line 704
    :cond_1f
    if-eqz v22, :cond_20

    .line 705
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 706
    const/16 v22, 0x0

    .line 708
    :cond_20
    if-eqz v16, :cond_21

    .line 709
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 710
    const/16 v16, 0x0

    .line 712
    :cond_21
    const/16 v25, 0x0

    .line 713
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 716
    :cond_22
    if-nez v16, :cond_25

    const/16 v19, 0x0

    .line 717
    .local v19, len:I
    :goto_4
    if-eqz v22, :cond_23

    .line 718
    add-int/lit8 v19, v19, 0x1

    .line 719
    move-object/from16 v11, v22

    .line 722
    :cond_23
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    .line 723
    .local v15, cursors:[Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 724
    .local v23, start:I
    if-eqz v22, :cond_24

    .line 725
    const/4 v2, 0x0

    aput-object v22, v15, v2

    .line 726
    add-int/lit8 v23, v23, 0x1

    .line 728
    :cond_24
    if-eqz v16, :cond_27

    .line 729
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 730
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 731
    .local v12, colidx:I
    move/from16 v18, v23

    .local v18, i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    .line 732
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 733
    .local v17, gid:I
    const-string v2, "external"

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 737
    .local v14, cursor:Landroid/database/Cursor;
    aput-object v14, v15, v18

    .line 738
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 731
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 716
    .end local v12           #colidx:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v17           #gid:I
    .end local v18           #i:I
    .end local v19           #len:I
    .end local v23           #start:I
    :cond_25
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v19

    goto :goto_4

    .line 740
    .restart local v12       #colidx:I
    .restart local v15       #cursors:[Landroid/database/Cursor;
    .restart local v18       #i:I
    .restart local v19       #len:I
    .restart local v23       #start:I
    :cond_26
    new-instance v11, Landroid/database/MergeCursor;

    .end local v11           #c:Landroid/database/Cursor;
    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 741
    .restart local v11       #c:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 742
    const/16 v16, 0x0

    .line 743
    const/16 v25, 0x0

    .line 744
    goto/16 :goto_0

    .line 746
    .end local v12           #colidx:I
    .end local v18           #i:I
    :cond_27
    const/16 v25, 0x0

    .line 747
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 752
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v16           #genres:Landroid/database/Cursor;
    .end local v19           #len:I
    .end local v22           #results:Landroid/database/Cursor;
    .end local v23           #start:I
    .end local v25           #whereClause:Ljava/lang/StringBuilder;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #cols:[Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_29

    .line 753
    :cond_28
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 755
    :cond_29
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 759
    :pswitch_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v10, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 762
    goto/16 :goto_1

    .line 765
    :pswitch_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_2a

    .line 766
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 768
    :cond_2a
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #cols:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    .line 772
    .restart local v7       #cols:[Ljava/lang/String;
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 773
    const-string v2, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v10, "play_order"

    .line 775
    goto/16 :goto_1

    .line 778
    :pswitch_16
    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v13, v2

    .line 782
    .end local v7           #cols:[Ljava/lang/String;
    .local v13, cols:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 785
    .local v4, colsPlaylist:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 786
    .local v20, playlistCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 787
    .restart local v15       #cursors:[Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 789
    .restart local v19       #len:I
    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    .end local v6           #uri:Landroid/net/Uri;
    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 792
    if-eqz v20, :cond_2c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2c

    .line 793
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 794
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 795
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 796
    .restart local v12       #colidx:I
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    .line 797
    const/16 v18, 0x0

    .end local v10           #sortOrder:Ljava/lang/String;
    .restart local v18       #i:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b

    .line 798
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 799
    .local v21, plid:I
    const-string v2, "external"

    move/from16 v0, v21

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "title_key"

    move-object/from16 v5, p1

    move-object v7, v13

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v15, v18

    .line 803
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 797
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 805
    .end local v21           #plid:I
    :cond_2b
    new-instance v11, Landroid/database/MergeCursor;

    .end local v11           #c:Landroid/database/Cursor;
    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    .restart local v11       #c:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 812
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 813
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 808
    .end local v12           #colidx:I
    .end local v18           #i:I
    .restart local v10       #sortOrder:Ljava/lang/String;
    :cond_2c
    const/4 v11, 0x0

    .line 811
    .end local v11           #c:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 812
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 813
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 811
    .end local v10           #sortOrder:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_2d

    .line 812
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 813
    const/16 v20, 0x0

    :cond_2d
    throw v2

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public reset(S)Lcom/htc/music/NpCategory;
    .locals 4
    .parameter "category"

    .prologue
    const/4 v3, -0x1

    .line 189
    if-lt p1, v3, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 190
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 195
    :goto_0
    iput v3, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 196
    iput v3, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 197
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 198
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    iput v3, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 202
    return-object p0

    .line 193
    :cond_2
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public setAlbumId(I)Lcom/htc/music/NpCategory;
    .locals 6
    .parameter "albumId"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 265
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object p0

    .line 268
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 269
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 282
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    goto :goto_0

    .line 270
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 271
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 272
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 273
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 274
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 275
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 276
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v4, :cond_0

    goto :goto_1
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "albumId"

    .prologue
    .line 293
    if-nez p1, :cond_1

    .line 305
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 296
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 298
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 299
    .local v1, localAlbumId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 300
    .end local v1           #localAlbumId:I
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistId(I)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "artistId"

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0xb

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 211
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object p0

    .line 214
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 215
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 231
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    goto :goto_0

    .line 216
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 217
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 218
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 219
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 220
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 221
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 222
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 223
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 224
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v6, :cond_0

    goto :goto_1
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "artistId"

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 254
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 245
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 247
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 248
    .local v1, localArtistId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 249
    .end local v1           #localArtistId:I
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "composer"

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xe

    const/16 v4, 0xa

    const/4 v3, 0x7

    const/4 v2, 0x4

    .line 365
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object p0

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_4

    .line 372
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 388
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 374
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 375
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 376
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 377
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 378
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 379
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    .line 380
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 381
    :cond_8
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v3, :cond_0

    goto :goto_1
.end method

.method public setGenreId(I)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "genreId"

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xd

    const/16 v4, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    .line 317
    const/4 v0, -0x2

    if-gt p1, v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object p0

    .line 320
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 321
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 337
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    goto :goto_0

    .line 322
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 323
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 324
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 325
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 326
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 327
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 328
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 329
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 330
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v5, :cond_0

    goto :goto_1
.end method

.method public setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "genreId"

    .prologue
    .line 342
    if-nez p1, :cond_1

    .line 354
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 345
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 347
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 348
    .local v1, localGenreId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 349
    .end local v1           #localGenreId:I
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylistId(I)Lcom/htc/music/NpCategory;
    .locals 2
    .parameter "playlistId"

    .prologue
    const/16 v1, 0x14

    .line 402
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object p0

    .line 405
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_2

    .line 406
    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 412
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    goto :goto_0

    .line 407
    :cond_2
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "playlistId"

    .prologue
    .line 423
    if-nez p1, :cond_1

    .line 435
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 426
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 428
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 429
    .local v1, localPlaylistId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 430
    .end local v1           #localPlaylistId:I
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Composer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 478
    :try_start_0
    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
