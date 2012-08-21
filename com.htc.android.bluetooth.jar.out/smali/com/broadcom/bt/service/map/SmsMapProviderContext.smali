.class public Lcom/broadcom/bt/service/map/SmsMapProviderContext;
.super Lcom/broadcom/bt/service/map/MapProviderContext;
.source "SmsMapProviderContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsMapProviderContext"


# instance fields
.field protected mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;


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
    .line 36
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/map/MapProviderContext;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .line 26
    new-instance v0, Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MapMessageIdMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    .line 39
    return-void
.end method


# virtual methods
.method public getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    .line 96
    .local v0, lMAPMsgId:J
    const-string v2, "deleted"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 104
    :cond_0
    const-string v2, "SmsMapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMAPMsgId()] MAP Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from deleted folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-wide v0

    .line 108
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMAPMsgIdFolder(J)Ljava/lang/String;
    .locals 4
    .parameter "sMAPMsgId"

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, sProviderMsgId:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    const-string v1, "root/telecom/msg/deleted"

    goto :goto_0

    .line 128
    :cond_1
    const-string v1, "SmsMapProviderContext"

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

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProviderMsgId(J)Ljava/lang/String;
    .locals 4
    .parameter "sMAPMsgId"

    .prologue
    .line 134
    const-string v1, "SmsMapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getProviderMsgId()] MAP MsgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, sProviderMsgId:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    const-string v1, "SmsMapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getProviderMsgId] Found message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    const-string v1, "SmsMapProviderContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getProviderMsgId] Found in Deleted Folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    const-string v1, "SmsMapProviderContext"

    const-string v2, "[getProviderMsgId] No found message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeMAPMsgId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 43
    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "SmsMapProviderContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeMAPMsgId] remove message(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in deleted folder..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeEntry(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "SmsMapProviderContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeMAPMsgId] remove message(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in other folder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 57
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "deleted"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "SmsMapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMAPMsgFolder] Move existing message (id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to deleted folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeEntry(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-wide v0

    .line 68
    :cond_0
    const-string v2, "SmsMapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMAPMsgFolder] Move existing message (id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to folder ("

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

    .line 69
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v2, "deleted"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const-string v2, "SmsMapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMAPMsgFolder] Add new message(id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to deleted folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;->mDeletedFolderMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v2, "SmsMapProviderContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMAPMsgFolder] Add new message(id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to folder ("

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

    .line 84
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
