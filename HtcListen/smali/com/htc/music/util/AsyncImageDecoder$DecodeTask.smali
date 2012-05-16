.class Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field private mAlbumId:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mKey:I

.field private mPath:Ljava/lang/String;

.field private mPosition:I

.field private mTimeStamp:J

.field private mVarargs:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 782
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 766
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 768
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 769
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 770
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 772
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 783
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 784
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 786
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 787
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 788
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 790
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 766
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 768
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 769
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 770
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 772
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 791
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 792
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 794
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 795
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 796
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 798
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 766
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 768
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 769
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 770
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 772
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 799
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 800
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 801
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 803
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 804
    iput-object p6, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 805
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 774
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 766
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 768
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 769
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 770
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 772
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 775
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 776
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 778
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 779
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 780
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 4
    .parameter
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 807
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 766
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 768
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 769
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 770
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 772
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 808
    if-nez p2, :cond_0

    .line 818
    :goto_0
    return-void

    .line 811
    :cond_0
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 812
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 813
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 814
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 816
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 817
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 764
    iget-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 822
    instance-of v2, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    if-nez v2, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 825
    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 826
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    iget v3, v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget v1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, ", mRequestTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-wide v1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
