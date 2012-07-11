.class public final Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThumbnailsSequence"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/thumbnails_sequence"

.field public static final CONTENT_ITEM_TYPE_RAW:Ljava/lang/String; = "vnd.android.cursor.item/thumbnails_sequence-raw_contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/thumbnails_sequence"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EMPTY:I = 0x0

.field public static final FILE_PREFIX:Ljava/lang/String; = "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

#the value of this static final field might be set in the static constructor
.field public static final ICON_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IS_HD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_QHD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_QVGA:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_WVGA:Z = false

.field public static final OVERLAY_ICON:Ljava/lang/String; = "overlay_icon"

.field public static final SIZE_HD:I = 0x5a

.field public static final SIZE_HVGA:I = 0x30

.field public static final SIZE_QHD:I = 0x48

.field public static final SIZE_QVGA:I = 0x28

.field public static final SIZE_WVGA:I = 0x48

.field public static final TABLE_NAME:Ljava/lang/String; = "thumbnails_sequence"

.field public static final THUMBNAIL_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v4, 0x48

    const/16 v5, 0x30

    const/16 v3, 0x28

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1364
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "thumbnails_sequence"

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->CONTENT_URI:Landroid/net/Uri;

    .line 1389
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x60

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xc

    if-ne v0, v6, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QVGA:Z

    .line 1395
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x19

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x40

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x79

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7a

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xa8

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x20

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x91

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x61

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x93

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xaa

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x94

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3c

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3d

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x1c

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7c

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x21

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x22

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xf

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x9d

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x70

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x8a

    if-ne v0, v6, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_WVGA:Z

    .line 1430
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7b

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x95

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x96

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x88

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3e

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x50

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7d

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x89

    if-ne v0, v6, :cond_5

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QHD:Z

    .line 1442
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xad

    if-ne v0, v6, :cond_6

    :goto_3
    sput-boolean v2, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_HD:Z

    .line 1456
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QVGA:Z

    if-eqz v0, :cond_7

    move v0, v3

    :goto_4
    sput v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    return-void

    :cond_3
    move v0, v1

    .line 1389
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1395
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1430
    goto :goto_2

    :cond_6
    move v2, v1

    .line 1442
    goto :goto_3

    .line 1456
    :cond_7
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_WVGA:Z

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_4

    :cond_8
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QHD:Z

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_4

    :cond_9
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_HD:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x5a

    goto :goto_4

    :cond_a
    move v0, v5

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1354
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .parameter "contactId"
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    .line 1543
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v0

    .line 1546
    .local v2, PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "thumbnails_sequence"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1548
    .local v7, uriPrefix:Landroid/net/Uri;
    invoke-static {v7, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, thumbnailUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v4, v3

    move-object v5, v3

    .line 1549
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1550
    .local v6, matchCursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private static getJpgThumbnailName(J)Ljava/lang/String;
    .locals 2
    .parameter "_id"

    .prologue
    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1586
    .local v0, fileName:Ljava/lang/StringBuilder;
    const-string v1, "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1588
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thumbnails_sequence"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1556
    .local v7, uriPrefix:Landroid/net/Uri;
    invoke-static {v7, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, thumbnailUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1557
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1558
    .local v6, matchCursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getThumbnailName(J)Ljava/lang/String;
    .locals 2
    .parameter "_id"

    .prologue
    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1470
    .local v0, fileName:Ljava/lang/StringBuilder;
    const-string v1, "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1472
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getThumbnailSize()I
    .locals 2

    .prologue
    .line 1612
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x60

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1614
    :cond_0
    const/16 v0, 0x28

    .line 1619
    :goto_0
    return v0

    .line 1615
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    .line 1617
    :cond_2
    const/16 v0, 0x46

    goto :goto_0

    .line 1619
    :cond_3
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public static loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "contactId"
    .parameter "opts"
    .parameter "cr"

    .prologue
    .line 1486
    invoke-static {p0, p1, p3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1487
    .local v0, matchCursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1488
    .local v1, thumbnailId:J
    if-eqz v0, :cond_1

    .line 1489
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1490
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1493
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1496
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1497
    invoke-static {v1, v2, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1499
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "source"
    .parameter "opts"

    .prologue
    .line 1600
    const/4 v0, 0x0

    .line 1601
    .local v0, result:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    :goto_0
    return-object v0

    .line 1604
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadRawContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "rawContactId"
    .parameter "opts"
    .parameter "cr"

    .prologue
    .line 1504
    invoke-static {p0, p1, p3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1505
    .local v0, matchCursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1506
    .local v1, thumbnailId:J
    if-eqz v0, :cond_1

    .line 1507
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1508
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1511
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1514
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1515
    invoke-static {v1, v2, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1517
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadRawContactThumbnailId(JLandroid/content/ContentResolver;)J
    .locals 4
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    .line 1522
    invoke-static {p0, p1, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1523
    .local v0, matchCursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1524
    .local v1, thumbnailId:J
    if-eqz v0, :cond_1

    .line 1525
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1526
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1529
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1532
    :cond_1
    return-wide v1
.end method

.method public static loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "thumbnailId"
    .parameter "opts"

    .prologue
    .line 1569
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getThumbnailName(J)Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, imagePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1572
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getJpgThumbnailName(J)Ljava/lang/String;

    move-result-object v1

    .line 1574
    :cond_0
    const/4 v0, 0x0

    .line 1575
    invoke-static {v1, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
