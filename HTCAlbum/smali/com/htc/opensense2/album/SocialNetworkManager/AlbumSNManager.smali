.class public Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;,
        Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;,
        Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    }
.end annotation


# static fields
.field private static final KEY_TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumSNManager"

.field public static final SPECIAL_ITEM_PHOTO_OF_ME:I = 0x63

.field public static final SPECIAL_ITEM_RECENT_PHOTO:I = 0x1e

.field public static final SPECIAL_ITEM_RECENT_VIDEO:I = 0x1e


# instance fields
.field private mAccount:[Landroid/accounts/Account;

.field private mAccountMgr:Landroid/accounts/AccountManager;

.field private mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mFlagLoginAction:Z

.field private mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

.field private mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

.field private mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

.field private mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

.field private mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

.field private mIsEnablePhotoOfMe:Z

.field private mIsEnableRecentList:Z

.field private mIsEnableRecentVideo:Z

.field private mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceID:I

.field private mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

.field private mServiceName:Ljava/lang/String;

.field protected mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 117
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 75
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 76
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    .line 77
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 79
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 80
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 81
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 82
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    .line 83
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    .line 84
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    .line 86
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    .line 87
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 96
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    .line 97
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 98
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 99
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    .line 100
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 101
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 102
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    .line 107
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    .line 361
    new-instance v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$1;

    invoke-direct {v5, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 118
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 122
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    .end local v4           #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-direct {v4, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    .line 123
    .restart local v4       #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v1

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 124
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v1

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    .line 130
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPlugin;

    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    move-object v3, v2

    .line 132
    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 133
    .local v3, remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 135
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    .end local v4           #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-direct {v4, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    .line 136
    .restart local v4       #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 137
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 138
    iput-boolean v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 139
    iput-boolean v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsOpenSense:Z

    .line 140
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v2           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v3           #remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_2
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    return v0
.end method

.method public static createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 10
    .parameter "context"
    .parameter "szServiceName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 875
    .local p2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v0, 0x0

    .line 876
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 878
    .local v2, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 928
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 881
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object v3, v2

    .line 882
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 884
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v3, v2

    .line 885
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 888
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 889
    .local v4, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 890
    .local v7, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 894
    .local v1, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_7

    .line 896
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 897
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v9, "com.htc.opensense.upload.TITLE"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v9, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v9, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v9, "com.htc.opensense.upload.URI"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_6

    .line 894
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 909
    :cond_6
    const/4 v6, 0x0

    .local v6, nIndexTag:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_5

    .line 911
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 912
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v8, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    const-string v9, "tag_display_name"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v9, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v9, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 916
    const-string v9, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 917
    const-string v9, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 918
    const-string v9, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 919
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 923
    .end local v6           #nIndexTag:I
    :cond_7
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    const-string v8, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const-string v8, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 926
    const-string v8, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v3, v2

    .line 928
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method public static getTabPlugins(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 979
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_tab"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 980
    .local v0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    return-object v0
.end method

.method public static varargs getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 947
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v11, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-eqz p0, :cond_3

    .line 949
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .line 950
    .local v3, feature:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v9

    .line 952
    .local v9, names:[Landroid/content/ComponentName;
    move-object v1, v9

    .local v1, arr$:[Landroid/content/ComponentName;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v1, v4

    .line 954
    .local v8, name:Landroid/content/ComponentName;
    :try_start_0
    new-instance v10, Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-direct {v10, p0, v8}, Lcom/htc/opensense/plugin/TabPluginRemote;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 957
    .local v10, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_0

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 960
    :cond_0
    const-string v12, "AlbumSNManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TabPlugin is not fully implemented: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 965
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_1
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "PluginTabTag"

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 968
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_0
    move-exception v2

    .line 969
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "AlbumSNManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to instantiate TabPlugin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 949
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #name:Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto/16 :goto_0

    .line 975
    .end local v1           #arr$:[Landroid/content/ComponentName;
    .end local v3           #feature:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #names:[Landroid/content/ComponentName;
    :cond_3
    return-object v11
.end method


# virtual methods
.method public InitAccountLogin(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 322
    const-string v1, "AlbumSNManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumSNManager][InitAccountLogin]: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 324
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 326
    return-void
.end method

.method public InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z
    .locals 5
    .parameter "plugin"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-eq v2, v3, :cond_0

    if-nez p1, :cond_1

    .line 421
    :cond_0
    const/16 v0, 0x274d

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    move v0, v1

    .line 436
    :goto_0
    return v0

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    if-nez v2, :cond_2

    .line 426
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 428
    :cond_2
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 430
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    if-eqz v2, :cond_3

    .line 431
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->cancel(Z)Z

    .line 433
    :cond_3
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    invoke-direct {v2, p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    .line 434
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public InitConnection(ZZ)Z
    .locals 6
    .parameter "bEnableListener"
    .parameter "bEnableAutoSync"

    .prologue
    const/4 v5, 0x0

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, bResult:Z
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v2, v3, :cond_0

    .line 393
    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    move v1, v0

    .line 414
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 403
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    if-nez p1, :cond_1

    .line 405
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    const-string v4, "SupportGallery"

    invoke-static {v3, v2, v4, v5}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 414
    .restart local v1       #bResult:I
    goto :goto_0

    .line 409
    .end local v1           #bResult:I
    :cond_1
    const-string v2, "AlbumSNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AlbumSNManager][InitConnection]: connectTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    if-nez v2, :cond_2

    .line 411
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 412
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    const-string v4, "SupportGallery"

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-static {v3, v2, v4, v5}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v0

    goto :goto_1
.end method

.method public UninitConnection()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][UninitConnection]: disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    .line 448
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 449
    return-void
.end method

.method public cancelBackgroundAction()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->cancelBackgroundAction()V

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->cancelBackgroundAction()V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->cancelBackgroundAction()V

    .line 870
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 871
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->cancelBackgroundAction()V

    .line 872
    :cond_4
    return-void
.end method

.method public enablePhotoOfMeAlbumList()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    .line 348
    return-void
.end method

.method public enableRecentAlbumList()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    .line 352
    return-void
.end method

.method public enableRecentVideoList()V
    .locals 3

    .prologue
    .line 358
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][enableRecentVideoList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    .line 360
    return-void
.end method

.method public getActiveUser(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUser(Z)V

    .line 693
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getActiveUserSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 699
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserSync()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumList(Ljava/util/List;Z)Z
    .locals 2
    .parameter
    .parameter "bIsForceSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, szUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->actionInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][getAlbumList]: already running skip..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaList(Ljava/lang/Object;Z)Z

    goto :goto_0
.end method

.method public getAlbumNextOnList(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaNextOnList(Z)Z

    .line 736
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOp([Ljava/lang/String;)Z
    .locals 1
    .parameter "szUIDs"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaInfo([Ljava/lang/String;)Z

    .line 646
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOpFast([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;
    .locals 2
    .parameter "albums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Album;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, albumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaOpFast([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 654
    :cond_0
    return-object v0
.end method

.method public getAlbumRecentList(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaRecentList(Z)Z

    .line 729
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCachedAccountOwner()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    const/4 v0, 0x0

    .line 796
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 798
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedAlbumList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    check-cast v0, Ljava/util/List;

    .line 822
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 836
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    check-cast v0, Ljava/util/List;

    .line 838
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedFriendList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 812
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 814
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedPhotoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    const/4 v0, 0x0

    .line 828
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v0, Ljava/util/List;

    .line 830
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    const/4 v0, 0x0

    .line 844
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    check-cast v0, Ljava/util/List;

    .line 846
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 804
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getUserResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 806
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCommentCount(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 3
    .parameter "medium"

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 770
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaListCount(Ljava/lang/Object;Z)Z

    .line 773
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCommentList(Lcom/htc/opensense/social/MediumOp;)Z
    .locals 2
    .parameter "mediumOp"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaList(Ljava/lang/Object;Z)Z

    .line 764
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentServiceURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z
    .locals 1
    .parameter "personOp"
    .parameter "bIsForceSync"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaList(Ljava/lang/Object;Z)Z

    .line 706
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediaInfo3(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo2(Ljava/lang/String;)V

    .line 630
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumInfo(Ljava/lang/String;)Lcom/htc/opensense/social/MediumOp;
    .locals 2
    .parameter "szUID"

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, mediumOp:Lcom/htc/opensense/social/MediumOp;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    .line 663
    .restart local v0       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    :cond_0
    return-object v0
.end method

.method public getMediumInfo2(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfo(Ljava/lang/String;)V

    .line 670
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 2
    .parameter "medium"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Medium;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    check-cast v0, Ljava/util/List;

    .line 678
    .restart local v0       #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_0
    return-object v0
.end method

.method public getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 5
    .parameter "serviceName"

    .prologue
    const/4 v3, 0x0

    .line 933
    if-nez p1, :cond_0

    move-object v1, v3

    .line 942
    :goto_0
    return-object v1

    .line 935
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    .local v1, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    move-object v2, v1

    .line 937
    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 938
    .local v2, remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v2           #remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_2
    move-object v1, v3

    .line 942
    goto :goto_0
.end method

.method public getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "szUIDs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    check-cast v0, Ljava/util/List;

    .line 638
    .restart local v0       #peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_0
    return-object v0
.end method

.method public getPersonInfo(Ljava/lang/String;)Lcom/htc/opensense/social/PersonOp;
    .locals 2
    .parameter "szUID"

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, personOp:Lcom/htc/opensense/social/PersonOp;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #personOp:Lcom/htc/opensense/social/PersonOp;
    check-cast v0, Lcom/htc/opensense/social/PersonOp;

    .line 616
    .restart local v0       #personOp:Lcom/htc/opensense/social/PersonOp;
    :cond_0
    return-object v0
.end method

.method public getPersonInfo2(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo(Ljava/lang/String;)V

    .line 623
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "szUMediumID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaList(Ljava/lang/Object;Ljava/lang/Object;ZI)Z

    .line 743
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotosOfMeList(Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeList(Ljava/lang/Object;ZI)Z

    .line 757
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getRecentPhotoList(Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentMediaList(Ljava/lang/Object;ZI)Z

    .line 750
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getTagList(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 2
    .parameter "medium"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaList(Ljava/lang/Object;Z)Z

    .line 785
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountActive()Z
    .locals 6

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 237
    .local v0, account:[Landroid/accounts/Account;
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v3, v4, :cond_0

    .line 239
    const-string v3, "AlbumSNManager"

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountActive]: no service id availabled..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 255
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 242
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_2

    .line 246
    :cond_1
    const-string v3, "AlbumSNManager"

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountActive]: no active account availabled..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    :goto_1
    move v2, v1

    .line 255
    .restart local v2       #bResult:I
    goto :goto_0

    .line 251
    .end local v2           #bResult:I
    :cond_2
    const-string v3, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountActive]: active account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isAccountStatusChanged()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 263
    const/4 v1, 0x1

    .line 269
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 271
    .local v0, account:[Landroid/accounts/Account;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 273
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 275
    :cond_0
    const-string v3, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: sync active account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 290
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 278
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v4, v0, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 280
    const-string v3, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: active account changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 281
    .restart local v2       #bResult:I
    goto :goto_0

    .line 285
    .end local v2           #bResult:I
    :cond_2
    const-string v3, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: active account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v3, "AlbumSNManager"

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: no change just skip!"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x0

    move v2, v1

    .line 290
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method public isExistActiveUserCache()Z
    .locals 2

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isExistActiveUserCache()Z

    move-result v0

    .line 686
    :cond_0
    return v0
.end method

.method public isExistingAccount()Z
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 299
    :cond_0
    return v0
.end method

.method public isFlaggedLoginAction()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 148
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 149
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    .line 152
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDestroy()V

    .line 154
    :cond_0
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    .line 156
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDestroy()V

    .line 158
    :cond_1
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 160
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDestroy()V

    .line 162
    :cond_2
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 164
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDestroy()V

    .line 166
    :cond_3
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    .line 168
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->onDestroy()V

    .line 170
    :cond_4
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 172
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 174
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 175
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 176
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 177
    return-void
.end method

.method public resetActiveAccount()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 260
    return-void
.end method

.method public resetFlagLoginAction()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 334
    return-void
.end method

.method public scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z
    .locals 9
    .parameter "szService"
    .parameter "hDataHandler"
    .parameter "hUIHandler"

    .prologue
    const/4 v8, 0x1

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, bResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v1, v0

    .line 229
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 185
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    const-string v6, "SupportGallery"

    invoke-static {v5, v6}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getOpenSenseServices(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 188
    .local v4, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available services."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, index:I
    const/4 v3, 0x0

    .line 194
    .local v3, index2:I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 196
    const-string v6, "AlbumSNManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 199
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 201
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iput-boolean v8, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 197
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 213
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-boolean v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    if-nez v5, :cond_6

    .line 211
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 216
    :cond_6
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    const/4 v0, 0x1

    .line 220
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    .line 221
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 222
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    .line 223
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    .line 224
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: Match found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v1, v0

    .line 229
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method public setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V
    .locals 1
    .parameter "medium"
    .parameter "szComment"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 779
    :cond_0
    return-void
.end method

.method public setPhotoTags(Lcom/htc/opensense/social/data/Medium;Ljava/util/List;)V
    .locals 1
    .parameter "medium"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Medium;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p2, faceTags:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    :cond_0
    return-void
.end method

.method public syncActiveAccount()V
    .locals 4

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, account:[Landroid/accounts/Account;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 307
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 308
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setAccount(Landroid/accounts/Account;)V

    .line 310
    :cond_0
    return-void
.end method

.method public syncActiveDummyAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 313
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/accounts/Account;

    .line 314
    .local v0, account:[Landroid/accounts/Account;
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "dummy_account"

    const-string v3, "dummy_account"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 315
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 317
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setAccount(Landroid/accounts/Account;)V

    .line 319
    :cond_0
    return-void
.end method

.method public updateFriendList(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objList"

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->updateCacheList(Ljava/lang/Object;)Z

    .line 854
    :cond_0
    return v0
.end method
