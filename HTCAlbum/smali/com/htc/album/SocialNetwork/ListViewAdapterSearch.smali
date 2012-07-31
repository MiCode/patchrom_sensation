.class public Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;
.super Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
.source "ListViewAdapterSearch.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final REQUEST_DATA_UPDATE_BY_FILTER:I = 0x9c41

.field public static final REQUEST_FRIENDSLIST_BY_FILTER:I = 0x9c42


# instance fields
.field private bSkipCombineMainUserList:Z

.field private mServiceName:Ljava/lang/String;

.field public final strTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 27
    const-string v0, "ListViewAdapterSearch"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->strTag:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->mServiceName:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bSkipCombineMainUserList:Z

    .line 39
    iput-object p2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->mServiceName:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bSkipCombineMainUserList:Z

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, AccountOwner:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .local p2, FriendList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 228
    :cond_1
    :goto_0
    return-object v3

    .line 195
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, listFinal:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bSkipCombineMainUserList:Z

    if-eqz v5, :cond_3

    .line 199
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 203
    :cond_3
    const/4 v5, 0x1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-ne v5, v6, :cond_4

    .line 205
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 210
    :cond_4
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 215
    .local v2, indexList:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 216
    .local v4, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_5

    .line 218
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 220
    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "strFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v9, 0x0

    .line 233
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v9

    .line 318
    :goto_0
    return-object v5

    .line 235
    :cond_1
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ListViewAdapterSearch][filterList]: +"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v6, listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getTop5FriendList()Ljava/util/ArrayList;

    move-result-object v6

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, bAddTop5:Z
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v0, 0x1

    .line 246
    :cond_2
    if-eqz p1, :cond_7

    .line 249
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][ListViewAdapterSearch][filterList] List size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 260
    .local v4, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_3

    .line 262
    const/4 v1, 0x0

    .line 265
    .local v1, bInTop5:Z
    if-eqz v0, :cond_5

    .line 267
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 269
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 271
    .local v8, top5_index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, strTop5Name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 274
    const/4 v1, 0x1

    .line 281
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #strTop5Name:Ljava/lang/String;
    .end local v8           #top5_index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_5
    if-nez v1, :cond_3

    .line 283
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 284
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 285
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 286
    :cond_6
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    .end local v1           #bInTop5:Z
    .end local v4           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 311
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ListViewAdapterSearch]: KA>>> 2 list size is Zero."

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 312
    goto/16 :goto_0

    .line 316
    :cond_8
    sget-object v9, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][ListViewAdapterSearch][filterList]: -"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onErrorNoList()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterSearch][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncListComplete()V

    .line 54
    return-void
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onMessageHandler(Landroid/os/Message;)V

    .line 123
    :goto_0
    return-void

    .line 81
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestDataUpdateByFilter(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestFriendsByFilter(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestAccountManager()V

    goto :goto_0

    .line 90
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 96
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 99
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncConnection()V

    goto :goto_0

    .line 102
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncListComplete()V

    goto :goto_0

    .line 108
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorConnection()V

    goto :goto_0

    .line 114
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorNoActiveUser()V

    goto :goto_0

    .line 117
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorNoList()V

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_a
        0x2760 -> :sswitch_b
        0x2761 -> :sswitch_c
        0x4e20 -> :sswitch_3
        0x4e23 -> :sswitch_4
        0x4e28 -> :sswitch_5
        0x4e2d -> :sswitch_2
        0x4e84 -> :sswitch_6
        0x4e85 -> :sswitch_7
        0x4e88 -> :sswitch_8
        0x4e89 -> :sswitch_9
        0x9c41 -> :sswitch_0
        0x9c42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRequestDataUpdateByFilter(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x2724

    const/4 v2, 0x0

    .line 127
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 159
    const v0, 0x9c42

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 160
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 143
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterSearch][ERROR_NO_ACTIVEUSER]: msg.obj == null. set to false."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    const/16 v0, 0x4e20

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 149
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 154
    :sswitch_2
    const/16 v0, 0x4e23

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 155
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFriendsByFilter(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 167
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, listCombine:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 178
    const-string v1, ""

    .line 179
    .local v1, strFilter:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #strFilter:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 181
    .restart local v1       #strFilter:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->syncListItem(Ljava/util/List;Ljava/lang/String;)V

    .line 183
    const/16 v2, 0x4e8d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 184
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 185
    const/16 v2, 0x272d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 189
    return-void
.end method

.method protected onSyncListComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 60
    sget-object v2, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterSearch][onSyncListComplete]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, listCombine:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 67
    const-string v1, ""

    .line 68
    .local v1, strFilter:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->syncListItem(Ljava/util/List;Ljava/lang/String;)V

    .line 70
    const/16 v2, 0x4e8d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 71
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 72
    const/16 v2, 0x272d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 73
    return-void
.end method

.method public syncListItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "strFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v7, 0x1

    .line 323
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_0

    .line 324
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 327
    :cond_0
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v0, 0x1

    .line 338
    .local v0, bAddTop5:Z
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 341
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v1, listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getTop5FriendList()Ljava/util/ArrayList;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 346
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 347
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 348
    const v4, 0x7f0b005c

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 349
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 354
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 356
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v2, :cond_3

    .line 358
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 359
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 372
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 363
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    .line 365
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 369
    :cond_4
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 377
    .end local v2           #nIndex:I
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 379
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 380
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 381
    const v4, 0x20c01d8

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 382
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #nIndex:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_b

    .line 387
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 389
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v2, :cond_9

    .line 391
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 392
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 405
    :goto_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_7

    .line 409
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    .line 385
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 394
    :cond_8
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 396
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_a

    .line 398
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 402
    :cond_a
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 413
    .end local v0           #bAddTop5:Z
    .end local v1           #listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v2           #nIndex:I
    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_b
    const/16 v4, 0x4e8d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 414
    return-void
.end method
