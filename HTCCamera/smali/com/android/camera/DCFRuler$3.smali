.class final Lcom/android/camera/DCFRuler$3;
.super Ljava/lang/Object;
.source "DCFRuler.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DCFRuler;->getVideoNameAndNumber(Landroid/app/Activity;Ljava/lang/StringBuffer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$videoPrefixLength:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput p1, p0, Lcom/android/camera/DCFRuler$3;->val$videoPrefixLength:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 9
    .parameter "fileName"
    .parameter "userState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 743
    .local v2, fileNameLength:I
    iget v5, p0, Lcom/android/camera/DCFRuler$3;->val$videoPrefixLength:I

    add-int/lit8 v5, v5, 0x4

    if-ge v2, v5, :cond_1

    .line 772
    .end local p2
    :cond_0
    :goto_0
    return v7

    .line 745
    .restart local p2
    :cond_1
    iget v5, p0, Lcom/android/camera/DCFRuler$3;->val$videoPrefixLength:I

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VIDEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 755
    .local v0, dotPos:I
    if-gez v0, :cond_2

    .line 756
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 759
    :cond_2
    :try_start_0
    iget v5, p0, Lcom/android/camera/DCFRuler$3;->val$videoPrefixLength:I

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 767
    .local v3, number:I
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v4, p2

    check-cast v4, [Ljava/lang/Object;

    .line 768
    .local v4, params:[Ljava/lang/Object;
    aget-object v5, v4, v8

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 769
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_0

    .line 761
    .end local v3           #number:I
    .end local v4           #params:[Ljava/lang/Object;
    .restart local p2
    :catch_0
    move-exception v1

    .line 763
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
