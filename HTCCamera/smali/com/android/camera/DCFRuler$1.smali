.class final Lcom/android/camera/DCFRuler$1;
.super Ljava/lang/Object;
.source "DCFRuler.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DCFRuler;->getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dirNameLength:I

.field final synthetic val$dirNameSuffixLength:I

.field final synthetic val$dirSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    iput p1, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    iput p2, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameSuffixLength:I

    iput-object p3, p0, Lcom/android/camera/DCFRuler$1;->val$dirSuffix:Ljava/lang/String;

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

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    if-eq v3, v6, :cond_0

    move v3, v4

    .line 461
    .end local p2
    :goto_0
    return v3

    .line 430
    .restart local p2
    :cond_0
    iget v3, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    iget v6, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameSuffixLength:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/DCFRuler$1;->val$dirSuffix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 431
    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 436
    .local v0, n:I
    if-ltz v0, :cond_2

    if-gt v0, v7, :cond_2

    .line 437
    mul-int/lit8 v1, v0, 0x64

    .line 440
    .local v1, num:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 441
    if-ltz v0, :cond_3

    if-gt v0, v7, :cond_3

    .line 442
    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v1, v3

    .line 445
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    .line 446
    if-ltz v0, :cond_4

    if-gt v0, v7, :cond_4

    .line 447
    add-int/2addr v1, v0

    .line 452
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    .line 453
    .local v2, params:[Ljava/lang/Object;
    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_5

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 456
    const/16 v3, 0x3e7

    if-ne v1, v3, :cond_5

    move v3, v5

    .line 457
    goto :goto_0

    .end local v1           #num:I
    .end local v2           #params:[Ljava/lang/Object;
    .restart local p2
    :cond_2
    move v3, v4

    .line 439
    goto :goto_0

    .restart local v1       #num:I
    :cond_3
    move v3, v4

    .line 444
    goto :goto_0

    :cond_4
    move v3, v4

    .line 449
    goto :goto_0

    .end local p2
    .restart local v2       #params:[Ljava/lang/Object;
    :cond_5
    move v3, v4

    .line 461
    goto :goto_0
.end method
