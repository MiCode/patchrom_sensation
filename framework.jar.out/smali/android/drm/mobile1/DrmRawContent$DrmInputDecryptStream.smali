.class Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;
.super Ljava/io/InputStream;
.source "DrmRawContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile1/DrmRawContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmInputDecryptStream"
.end annotation


# instance fields
.field private b:[B

.field private isClosed:Z

.field private offset:I

.field final synthetic this$0:Landroid/drm/mobile1/DrmRawContent;


# direct methods
.method public constructor <init>(Landroid/drm/mobile1/DrmRawContent;Landroid/drm/mobile1/DrmRights;)V
    .locals 1
    .parameter
    .parameter "rights"

    .prologue
    const/4 v0, 0x0

    .line 551
    iput-object p1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 559
    iput-boolean v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->isClosed:Z

    .line 560
    iput v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    .line 561
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->b:[B

    .line 562
    return-void
.end method


# virtual methods
.method public available()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x10

    .line 569
    iget-object v6, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I
    invoke-static {v6}, Landroid/drm/mobile1/DrmRawContent;->access$000(Landroid/drm/mobile1/DrmRawContent;)I

    move-result v4

    .line 570
    .local v4, len:I
    const-string v6, "DrmRawContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v6, -0x1

    if-ne v6, v4, :cond_0

    .line 573
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 576
    :cond_0
    const/4 v6, -0x3

    if-ne v6, v4, :cond_2

    .line 595
    :cond_1
    return v0

    .line 581
    :cond_2
    new-array v3, v9, [B

    .line 582
    .local v3, lastBlock:[B
    new-array v1, v9, [B

    .line 583
    .local v1, decLastBlock:[B
    iget-object v6, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    add-int/lit8 v7, v4, -0x10

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeReadContent([BIII)I
    invoke-static {v6, v3, v0, v9, v7}, Landroid/drm/mobile1/DrmRawContent;->access$100(Landroid/drm/mobile1/DrmRawContent;[BIII)I

    move-result v5

    .line 584
    .local v5, result:I
    const-string v6, "DrmRawContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v6, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    const/4 v7, 0x1

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeDrmDecrypt([B[BII)I
    invoke-static {v6, v3, v1, v5, v7}, Landroid/drm/mobile1/DrmRawContent;->access$200(Landroid/drm/mobile1/DrmRawContent;[B[BII)I

    move-result v2

    .line 586
    .local v2, decResult:I
    const-string v6, "DrmRawContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available decResult = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sub-int v6, v5, v2

    sub-int v0, v4, v6

    .line 590
    .local v0, availableLen:I
    const-string v6, "DrmRawContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available availableLen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    if-gez v0, :cond_1

    .line 593
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public close()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->isClosed:Z

    .line 782
    return-void
.end method

.method public mark(I)V
    .locals 0
    .parameter "readlimit"

    .prologue
    .line 761
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 604
    iget-object v2, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->b:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->read([BII)I

    move-result v0

    .line 606
    .local v0, res:I
    if-ne v1, v0, :cond_0

    .line 609
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 16
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 683
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 684
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v13, p2, p3

    move-object/from16 v0, p1

    array-length v14, v0

    if-le v13, v14, :cond_2

    .line 685
    :cond_1
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    .line 686
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->isClosed:Z

    if-ne v13, v14, :cond_3

    .line 687
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13

    .line 689
    :cond_3
    if-nez p3, :cond_4

    .line 690
    const/4 v8, 0x0

    .line 747
    :goto_0
    return v8

    .line 692
    :cond_4
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "len ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",offset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    div-int/lit8 v13, v13, 0x10

    mul-int/lit8 v9, v13, 0x10

    .line 699
    .local v9, startAddress:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    sub-int v5, v13, v9

    .line 700
    .local v5, headLength:I
    const/4 v4, 0x0

    .line 701
    .local v4, endAddress:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    add-int v13, v13, p3

    rem-int/lit8 v13, v13, 0x10

    if-nez v13, :cond_5

    .line 702
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    add-int v4, v13, p3

    .line 706
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    add-int v13, v13, p3

    sub-int v10, v4, v13

    .line 707
    .local v10, tailLength:I
    sub-int v2, v4, v9

    .line 708
    .local v2, dataLength:I
    new-array v11, v2, [B

    .line 709
    .local v11, temp:[B
    new-array v12, v2, [B

    .line 710
    .local v12, temp_decrypt:[B
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startAddress ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",headLength = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "endAddress ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",dataLength = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "off ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    const/4 v14, 0x0

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeReadContent([BIII)I
    invoke-static {v13, v11, v14, v2, v9}, Landroid/drm/mobile1/DrmRawContent;->access$100(Landroid/drm/mobile1/DrmRawContent;[BIII)I

    move-result v7

    .line 716
    .local v7, result:I
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "nativeReadContent result ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v13, -0x1

    if-ne v13, v7, :cond_6

    .line 719
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13

    .line 704
    .end local v2           #dataLength:I
    .end local v7           #result:I
    .end local v10           #tailLength:I
    .end local v11           #temp:[B
    .end local v12           #temp_decrypt:[B
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    add-int v13, v13, p3

    div-int/lit8 v13, v13, 0x10

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v4, v13, 0x10

    goto/16 :goto_1

    .line 720
    .restart local v2       #dataLength:I
    .restart local v7       #result:I
    .restart local v10       #tailLength:I
    .restart local v11       #temp:[B
    .restart local v12       #temp_decrypt:[B
    :cond_6
    const/4 v13, -0x2

    if-ne v13, v7, :cond_7

    .line 721
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 723
    :cond_7
    const/4 v3, 0x0

    .line 724
    .local v3, decryptRes:I
    const/4 v8, 0x0

    .line 725
    .local v8, shift_offset:I
    const/4 v6, 0x0

    .line 726
    .local v6, read_offset:I
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Data Lengh = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I
    invoke-static {v15}, Landroid/drm/mobile1/DrmRawContent;->access$000(Landroid/drm/mobile1/DrmRawContent;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-ne v7, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I
    invoke-static {v13}, Landroid/drm/mobile1/DrmRawContent;->access$000(Landroid/drm/mobile1/DrmRawContent;)I

    move-result v13

    if-lez v13, :cond_9

    add-int v13, v2, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I
    invoke-static {v14}, Landroid/drm/mobile1/DrmRawContent;->access$000(Landroid/drm/mobile1/DrmRawContent;)I

    move-result v14

    if-lt v13, v14, :cond_9

    .line 728
    :cond_8
    const-string v13, "DrmRawContent"

    const-string v14, "Contain last block"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    const/4 v14, 0x1

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeDrmDecrypt([B[BII)I
    invoke-static {v13, v11, v12, v7, v14}, Landroid/drm/mobile1/DrmRawContent;->access$200(Landroid/drm/mobile1/DrmRawContent;[B[BII)I

    move-result v3

    .line 730
    sub-int v6, v7, v5

    .line 731
    sub-int v8, v3, v5

    .line 739
    :goto_2
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decryptRes ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v5, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    move-object/from16 v0, p0

    iget v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iput v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    .line 742
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "final offset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->offset:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "final read_offset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "final result = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "final decryptRes = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v13, "DrmRawContent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "final shift_offset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 733
    :cond_9
    const-string v13, "DrmRawContent"

    const-string v14, "Not contain last block"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    const/4 v14, 0x0

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeDrmDecrypt([B[BII)I
    invoke-static {v13, v11, v12, v7, v14}, Landroid/drm/mobile1/DrmRawContent;->access$200(Landroid/drm/mobile1/DrmRawContent;[B[BII)I

    move-result v3

    .line 735
    sub-int v13, v2, v5

    sub-int v6, v13, v10

    .line 736
    sub-int v13, v2, v5

    sub-int v8, v13, v10

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    const-wide/16 v0, 0x0

    return-wide v0
.end method
