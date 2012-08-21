.class public Lcom/broadcom/bt/service/map/MapProviderContext;
.super Ljava/lang/Object;
.source "MapProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapProviderContext"


# instance fields
.field protected mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

.field protected mFeatureMessageFilter:Z

.field protected mFeatureMessageOffsetBrowsing:Z

.field protected mFolderMappings:[Ljava/lang/String;

.field protected mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

.field protected mMseInstanceId:I

.field protected mProviderDSDisplayName:Ljava/lang/String;

.field protected mProviderDSId:Ljava/lang/String;

.field protected mProviderDisplayName:Ljava/lang/String;

.field protected mProviderId:Ljava/lang/String;

.field protected mProviderRootPath:Ljava/lang/String;

.field protected mProviderType:B

.field protected mSessions:Ljava/util/Vector;


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 1
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v0, "root"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    .line 211
    new-instance v0, Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MapMessageIdMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    .line 223
    iput-byte p1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    .line 224
    iput-object p2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    .line 226
    iput-object p4, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    .line 227
    iput-object p5, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    .line 228
    iput-boolean p6, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFeatureMessageFilter:Z

    .line 229
    iput-boolean p7, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFeatureMessageOffsetBrowsing:Z

    .line 230
    iput-object p8, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    .line 231
    iput-object p9, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .line 232
    return-void
.end method


# virtual methods
.method public declared-synchronized addSession(ILjava/lang/String;)V
    .locals 7
    .parameter "session_id"
    .parameter "dev_name"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;-><init>(Lcom/broadcom/bt/service/map/MapProviderContext;Lcom/broadcom/bt/service/map/MapProviderContext;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMAPMsgId(Ljava/lang/String;)J
    .locals 5
    .parameter "sProviderMsgId"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 341
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 344
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 346
    :cond_0
    const-string v2, "MapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMAPMsgId] Provider MsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MAP MsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-wide v0
.end method

.method public getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 308
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 309
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 311
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    :goto_0
    const-string v2, "MapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMAPMsgId] Provider MsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MAP MsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", folder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-wide v0

    .line 314
    :cond_1
    if-eqz p2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMAPMsgIdFolder(J)Ljava/lang/String;
    .locals 4
    .parameter "sMAPMsgId"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, sProviderMsgId:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getFolderEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 334
    :cond_0
    const-string v1, "MapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMAPMsgIdFolder] No found MAP_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sProviderMsgId"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getFolderEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderMsgId(J)Ljava/lang/String;
    .locals 3
    .parameter "sMAPMsgId"

    .prologue
    .line 352
    const-string v0, "MapProviderContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getProviderMsgId] MAP MsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .locals 3
    .parameter "session_id"

    .prologue
    .line 262
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 264
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 268
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 262
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 262
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isEqual(BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 239
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/lang/String;B)Z
    .locals 1
    .parameter "provider_id"
    .parameter "provider_type"

    .prologue
    .line 244
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMAPMsgId(Ljava/lang/String;)V
    .locals 3
    .parameter "sProviderMsgId"

    .prologue
    .line 272
    const-string v0, "MapProviderContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeMAPMsgId] Msg Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeEntry(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public removeMAPMsgId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 279
    const-string v1, "MapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[removeMAPMsgId] Msg Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Provider Folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, folder:Ljava/lang/String;
    const-string v1, "MapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v1, "MapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder Unmatched: Wanted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Real("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized removeSession(I)V
    .locals 3
    .parameter "session_id"

    .prologue
    .line 252
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 254
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I

    if-ne v2, p1, :cond_1

    .line 255
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 291
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 292
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 293
    const-string v2, "MapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMAPMsgFolder] Moving MsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(MAP_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to folder("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-wide v0

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 299
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "MapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMAPMsgFolder] Creating MsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(MAP_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to folder("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
