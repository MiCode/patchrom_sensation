.class final Lcom/android/camera/DCFRuler$2;
.super Ljava/lang/Object;
.source "DCFRuler.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DCFRuler;->getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileExtension:Ljava/lang/String;

.field final synthetic val$fileTag:Ljava/lang/String;

.field final synthetic val$imageFileNameLength:I

.field final synthetic val$imageFileTagLength:I

.field final synthetic val$jpsExtension:Ljava/lang/String;

.field final synthetic val$mpoExtension:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    iput p1, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    iput p2, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    iput-object p3, p0, Lcom/android/camera/DCFRuler$2;->val$fileTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/DCFRuler$2;->val$fileExtension:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/DCFRuler$2;->val$jpsExtension:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/DCFRuler$2;->val$mpoExtension:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .parameter "name"
    .parameter "userState"

    .prologue
    const/16 v7, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    if-eq v3, v6, :cond_0

    move v3, v4

    .line 554
    .end local p2
    :goto_0
    return v3

    .line 504
    .restart local p2
    :cond_0
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/DCFRuler$2;->val$fileTag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 505
    goto :goto_0

    .line 506
    :cond_1
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    add-int/lit8 v3, v3, -0x4

    iget v6, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/DCFRuler$2;->val$fileExtension:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 509
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    add-int/lit8 v3, v3, -0x4

    iget v6, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/DCFRuler$2;->val$jpsExtension:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    add-int/lit8 v3, v3, -0x4

    iget v6, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/DCFRuler$2;->val$mpoExtension:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 514
    goto :goto_0

    :cond_2
    move v3, v4

    .line 518
    goto :goto_0

    .line 523
    :cond_3
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 524
    .local v0, n:I
    if-ltz v0, :cond_4

    if-gt v0, v7, :cond_4

    .line 525
    mul-int/lit16 v1, v0, 0x3e8

    .line 528
    .local v1, num:I
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 529
    if-ltz v0, :cond_5

    if-gt v0, v7, :cond_5

    .line 530
    mul-int/lit8 v3, v0, 0x64

    add-int/2addr v1, v3

    .line 533
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 534
    if-ltz v0, :cond_6

    if-gt v0, v7, :cond_6

    .line 535
    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v1, v3

    .line 538
    iget v3, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 539
    if-ltz v0, :cond_7

    if-gt v0, v7, :cond_7

    .line 540
    add-int/2addr v1, v0

    .line 545
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    .line 546
    .local v2, params:[Ljava/lang/Object;
    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_8

    .line 548
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 549
    const/16 v3, 0x270f

    if-ne v1, v3, :cond_8

    move v3, v5

    .line 550
    goto/16 :goto_0

    .end local v1           #num:I
    .end local v2           #params:[Ljava/lang/Object;
    .restart local p2
    :cond_4
    move v3, v4

    .line 527
    goto/16 :goto_0

    .restart local v1       #num:I
    :cond_5
    move v3, v4

    .line 532
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 537
    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 542
    goto/16 :goto_0

    .end local p2
    .restart local v2       #params:[Ljava/lang/Object;
    :cond_8
    move v3, v4

    .line 554
    goto/16 :goto_0
.end method
