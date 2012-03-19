.class public abstract Landroid/widget/IMECursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "IMECursorAdapter.java"


# static fields
.field private static final AUTHORITY_Latin:Ljava/lang/String; = "htc_ime_latin"

.field private static final CONTENT_DIRECTORY:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri; = null

.field public static final INPUT_TYPE_BROWSER:I = 0x1

.field public static final INPUT_TYPE_DEFAULT:I = 0x0

.field public static final MAX_INPUT_TYPE:I = 0x2

.field private static final OLD_AUTHORITY:Ljava/lang/String; = "htc_ime"

.field private static final OLD_CONTENT_DIRECTORY:[Ljava/lang/String; = null

.field private static final OLD_HTCIMEProvider_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "IMECursorAdapter"

.field private static sContentDirectory:[Ljava/lang/String;

.field private static sContentUri:Landroid/net/Uri;


# instance fields
.field private MAX_STRING_COLLECT:I

.field private mInputType:I

.field private mSuperFilter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    const-string v0, "content://htc_ime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/widget/IMECursorAdapter;->OLD_HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "typo_correct_contacts_display_name"

    aput-object v1, v0, v2

    const-string v1, "typo_correct_top_website"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/IMECursorAdapter;->OLD_CONTENT_DIRECTORY:[Ljava/lang/String;

    .line 93
    const-string v0, "content://htc_ime_latin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/widget/IMECursorAdapter;->HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "rc_contacts_display_name"

    aput-object v1, v0, v2

    const-string v1, "rc_top_website"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/IMECursorAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 104
    sget-object v0, Landroid/widget/IMECursorAdapter;->HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentUri:Landroid/net/Uri;

    .line 105
    sget-object v0, Landroid/widget/IMECursorAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentDirectory:[Ljava/lang/String;

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Landroid/widget/IMECursorAdapter;->OLD_HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentUri:Landroid/net/Uri;

    .line 109
    sget-object v0, Landroid/widget/IMECursorAdapter;->OLD_CONTENT_DIRECTORY:[Ljava/lang/String;

    sput-object v0, Landroid/widget/IMECursorAdapter;->sContentDirectory:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 21
    iput v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    .line 22
    iput-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 21
    iput v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    .line 22
    iput-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    .line 45
    return-void
.end method


# virtual methods
.method protected BeforeStringCorrection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 122
    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Landroid/widget/IMECursorAdapter$1;

    invoke-direct {v0, p0, p0}, Landroid/widget/IMECursorAdapter$1;-><init>(Landroid/widget/IMECursorAdapter;Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 81
    :cond_1
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    return v0
.end method

.method public reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 185
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    .line 186
    :cond_0
    return-void
.end method

.method public setMaxStringReturn(I)V
    .locals 0
    .parameter "m"

    .prologue
    .line 118
    if-lez p1, :cond_0

    iput p1, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    .line 119
    :cond_0
    return-void
.end method

.method public setSuperType(Z)V
    .locals 0
    .parameter "isSuper"

    .prologue
    .line 194
    iput-boolean p1, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    .line 195
    return-void
.end method

.method protected stringCorrection(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/IMECursorAdapter;->BeforeStringCorrection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-object v8

    .line 133
    :cond_0
    const/4 v8, 0x0

    .line 134
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Landroid/widget/IMECursorAdapter;->sContentUri:Landroid/net/Uri;

    sget-object v2, Landroid/widget/IMECursorAdapter;->sContentDirectory:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, htcime_rc:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 136
    .local v4, args:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 137
    .local v9, string_count:I
    const/4 v6, 0x0

    .line 139
    .local v6, csr:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 146
    :goto_1
    if-nez v6, :cond_2

    .line 148
    const/4 v8, 0x0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v7

    .line 141
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 150
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local v8       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    if-ge v9, v0, :cond_3

    .line 153
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v9, v9, 0x1

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 158
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
