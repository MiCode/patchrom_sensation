.class public Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerInfo"
.end annotation


# instance fields
.field private mContainerID:Ljava/lang/String;

.field private mContainerName:Ljava/lang/String;

.field private mExpand:Z

.field private mFileType:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImg:Landroid/graphics/Bitmap;

.field private mImgPath:Ljava/lang/String;

.field private mLevel:I

.field private mName:Ljava/lang/String;

.field private mParentID:Ljava/lang/String;

.field private mPos:J

.field private mStartIdx:J

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .parameter
    .parameter "Id"
    .parameter "Name"
    .parameter "Path"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v0, 0x0

    .line 1384
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1385
    invoke-direct {p0, p5, p6, p7}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 1379
    iput v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    .line 1380
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    .line 1381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1387
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    .line 1388
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mName:Ljava/lang/String;

    .line 1389
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 1390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    .line 1391
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    .line 1392
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 2
    .parameter
    .parameter "serverID"
    .parameter "ContainerID"
    .parameter "ContainerName"
    .parameter "path"
    .parameter "type"
    .parameter "startIdx"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v0, 0x0

    .line 1408
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1409
    invoke-direct {p0, p9, p10, p11}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 1379
    iput v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    .line 1380
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    .line 1381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1411
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    .line 1412
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    .line 1413
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    .line 1414
    iput-object p5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 1415
    iput-object p6, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    .line 1416
    iput-wide p7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1417
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .parameter
    .parameter "serverID"
    .parameter "parentID"
    .parameter "ContainerID"
    .parameter "ContainerName"
    .parameter "path"
    .parameter "type"
    .parameter "Pos"
    .parameter "isGroup"

    .prologue
    const/4 v0, 0x0

    .line 1395
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1396
    invoke-direct {p0, p8, p9, p10}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 1379
    iput v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    .line 1380
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    .line 1381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    .line 1397
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    .line 1398
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    .line 1399
    iput-object p5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    .line 1401
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    .line 1403
    iput-object p6, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 1404
    iput-object p7, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    .line 1405
    return-void
.end method


# virtual methods
.method public GetContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public GetContainerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    return-object v0
.end method

.method public GetExpand()Z
    .locals 1

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    return v0
.end method

.method public GetFileType()I
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1435
    const/4 v0, -0x1

    .line 1436
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetLevel()I
    .locals 1

    .prologue
    .line 1450
    iget v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public GetParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    return-object v0
.end method

.method public GetPos()J
    .locals 2

    .prologue
    .line 1419
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mPos:J

    return-wide v0
.end method

.method public GetStartIdx()J
    .locals 2

    .prologue
    .line 1453
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mStartIdx:J

    return-wide v0
.end method

.method public IsContainer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1440
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return v0

    .line 1443
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1444
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetContainerID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerID:Ljava/lang/String;

    return-void
.end method

.method public SetContainerName(Ljava/lang/String;)V
    .locals 0
    .parameter "Name"

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mContainerName:Ljava/lang/String;

    return-void
.end method

.method public SetExpand(Z)V
    .locals 0
    .parameter "expand"

    .prologue
    .line 1451
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mExpand:Z

    return-void
.end method

.method public SetFileType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    return-void
.end method

.method public SetFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mFileType:Ljava/lang/String;

    return-void
.end method

.method public SetImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mImgPath:Ljava/lang/String;

    return-void
.end method

.method public SetLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 1449
    iput p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mLevel:I

    return-void
.end method

.method public SetParentID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->mParentID:Ljava/lang/String;

    return-void
.end method
