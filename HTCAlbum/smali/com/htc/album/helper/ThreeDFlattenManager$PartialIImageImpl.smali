.class Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;
.super Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;
.source "ThreeDFlattenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartialIImageImpl"
.end annotation


# instance fields
.field public dataPath:Ljava/lang/String;

.field public degreesRetated:I

.field public displayName:Ljava/lang/String;

.field public imageUri:Landroid/net/Uri;

.field public isDrm:Z

.field public mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 626
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct {p0, p1}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    .line 618
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 619
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 621
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 622
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->isDrm:Z

    .line 623
    iput v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->degreesRetated:I

    .line 628
    return-void
.end method


# virtual methods
.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 645
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 668
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->degreesRetated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 636
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 687
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaSourceType()I
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 654
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->isDrm:Z

    return v0
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 693
    return-void
.end method
