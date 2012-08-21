.class Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;
.super Lcom/broadcom/bt/service/map/IMapCallback$Stub;
.source "BluetoothMAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/BluetoothMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapCallback"


# instance fields
.field mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V
    .locals 1
    .parameter "mapAPI"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 170
    iput-object p1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 171
    return-void
.end method


# virtual methods
.method public onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "deviceName"

    .prologue
    .line 185
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCEConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider_id"
    .parameter "data_source_id"

    .prologue
    .line 191
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCEDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "folder_path"
    .parameter "max_entries"
    .parameter "offset"

    .prologue
    .line 212
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCEGetFolderListing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 215
    return-void
.end method

.method public onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 9
    .parameter "requestId"
    .parameter "provider_id"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 242
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCEGetMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    .line 245
    return-void
.end method

.method public onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 17
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 224
    const-string v1, "MapCallback"

    const-string v2, "MapCallback::onMCEGetMsgListing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v1, v1, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    invoke-interface/range {v1 .. v16}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    .line 228
    return-void
.end method

.method public onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "msg_folder"
    .parameter "msg_virtual_folder"
    .parameter "msg_content_uri"

    .prologue
    .line 234
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCEPushMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "notification_mode"

    .prologue
    .line 198
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCERegisterForNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 8
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "folder_path"
    .parameter "message_id"
    .parameter "status_type"
    .parameter "status_value"

    .prologue
    .line 251
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCESetMessageStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    .line 254
    return-void
.end method

.method public onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider_id"
    .parameter "data_source_id"

    .prologue
    .line 205
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMCEUpdateInbox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "state"

    .prologue
    .line 179
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMSEStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    .line 181
    return-void
.end method

.method public onMsgGetInProgress()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMsgGetInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMsgGetInProgress()V

    .line 260
    return-void
.end method

.method public onMsgPushInProgress()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "MapCallback"

    const-string v1, "MapCallback::onMsgPushInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    invoke-interface {v0}, Lcom/broadcom/bt/service/map/IMapEventHandler;->onMsgPushInProgress()V

    .line 266
    return-void
.end method
