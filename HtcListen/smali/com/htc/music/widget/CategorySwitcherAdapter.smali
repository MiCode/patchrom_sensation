.class public Lcom/htc/music/widget/CategorySwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/CategorySwitcherAdapter$1;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_BROWSE_TAG:Ljava/lang/String; = "AlbumBrowserTabPlugin"

.field public static final CATEGORY_ARTIST_BROWSE_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field public static final CATEGORY_GENRES_BROWSE_TAG:Ljava/lang/String; = "genreBrowserTabPlugin"

.field public static final CATEGORY_PLAYLISTS_BROWSE_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field public static final CATEGORY_SONGS_BROWSE_TAG:Ljava/lang/String; = "TrackBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mEditModePlaylistUri:Ljava/lang/String;

.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "editModePlaylistUri"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 54
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 56
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/widget/CategorySwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 79
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v4, intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-ne v9, v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 81
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/artistalbumexp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :goto_0
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v7, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 91
    .local v1, artistSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f07001d

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 93
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.media/album"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-class v7, Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v7, "AlbumBrowserTabPlugin"

    invoke-direct {v0, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 101
    .local v0, albumSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f07001e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 103
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 104
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 110
    const-string v7, "pickermode"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_0
    new-instance v6, Lcom/htc/music/util/SourceItem;

    const-string v7, "TrackBrowserTabPlugin"

    invoke-direct {v6, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 113
    .local v6, trackSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f07001f

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, playlistSource:Lcom/htc/music/util/SourceItem;
    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 117
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 118
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    new-instance v5, Lcom/htc/music/util/SourceItem;

    .end local v5           #playlistSource:Lcom/htc/music/util/SourceItem;
    const-string v7, "PlaylistBrowserTabPlugin"

    invoke-direct {v5, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 123
    .restart local v5       #playlistSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f070021

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 126
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 127
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 128
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/genreexp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :goto_1
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    new-instance v3, Lcom/htc/music/util/SourceItem;

    const-string v7, "genreBrowserTabPlugin"

    invoke-direct {v3, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 138
    .local v3, genreSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f070024

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 140
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 141
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 143
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/dlnaexp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :goto_2
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v7, "DlnaBrowserTabPlugin"

    invoke-direct {v2, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 151
    .local v2, dlnaSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f070026

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 154
    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 155
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v12

    aput-object v5, v7, v11

    aput-object v3, v7, v13

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 171
    :goto_3
    return-void

    .line 83
    .end local v0           #albumSource:Lcom/htc/music/util/SourceItem;
    .end local v1           #artistSource:Lcom/htc/music/util/SourceItem;
    .end local v2           #dlnaSource:Lcom/htc/music/util/SourceItem;
    .end local v3           #genreSource:Lcom/htc/music/util/SourceItem;
    .end local v5           #playlistSource:Lcom/htc/music/util/SourceItem;
    .end local v6           #trackSource:Lcom/htc/music/util/SourceItem;
    :cond_2
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/artistalbum"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 130
    .restart local v0       #albumSource:Lcom/htc/music/util/SourceItem;
    .restart local v1       #artistSource:Lcom/htc/music/util/SourceItem;
    .restart local v5       #playlistSource:Lcom/htc/music/util/SourceItem;
    .restart local v6       #trackSource:Lcom/htc/music/util/SourceItem;
    :cond_3
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/genre"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 145
    .restart local v3       #genreSource:Lcom/htc/music/util/SourceItem;
    :cond_4
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/dlna"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 164
    .restart local v2       #dlnaSource:Lcom/htc/music/util/SourceItem;
    :cond_5
    new-array v7, v13, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v12

    aput-object v3, v7, v11

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 183
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 193
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 194
    :cond_0
    const-wide/16 v0, -0x1

    .line 197
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, v1

    .line 247
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const-string v0, "ArtistBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, v1

    goto :goto_0

    .line 237
    :cond_1
    const-string v0, "AlbumBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 239
    :cond_2
    const-string v0, "TrackBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 241
    :cond_3
    const-string v0, "PlaylistBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 243
    :cond_4
    const-string v0, "genreBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 203
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v4, v4

    if-gt v4, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v3

    .line 207
    :cond_1
    if-nez p2, :cond_2

    .line 208
    iget-object v4, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f030066

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 209
    new-instance v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter$1;)V

    .line 211
    .local v0, holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    const v3, 0x7f0800fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, image:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v3, 0x7f0800fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 214
    iget-object v3, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    .end local v0           #holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    .end local v1           #image:Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    .line 221
    .restart local v0       #holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    iget-object v3, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v3, p1

    .line 223
    .local v2, item:Lcom/htc/music/util/SourceItem;
    iget-object v3, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v3, p2

    .line 225
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
