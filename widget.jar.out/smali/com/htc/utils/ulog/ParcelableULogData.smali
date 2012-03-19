.class public final Lcom/htc/utils/ulog/ParcelableULogData;
.super Lcom/htc/utils/ulog/ULogDataDecorator;
.source "ParcelableULogData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CHAR_SIZE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/utils/ulog/ParcelableULogData;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_SIZE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/htc/utils/ulog/ParcelableULogData$1;

    invoke-direct {v0}, Lcom/htc/utils/ulog/ParcelableULogData$1;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ParcelableULogData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "source"

    .prologue
    const/4 v7, 0x1

    .line 89
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/utils/ulog/ULogDataDecorator;-><init>(Lcom/htc/utils/ulog/ULogData;)V

    .line 90
    iget-object v4, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    check-cast v4, Lcom/htc/utils/ulog/ReusableULogData;

    .line 92
    .local v4, reusableULogData:Lcom/htc/utils/ulog/ReusableULogData;
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->releaseRef()V

    .line 93
    const/4 v1, 0x0

    .line 96
    .local v1, flag:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    if-ne v1, v7, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    if-ne v1, v7, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/htc/utils/ulog/ReusableULogData;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, count:I
    if-lez v0, :cond_3

    .line 112
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    invoke-virtual {v4, v3, v5}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 112
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method constructor <init>(Lcom/htc/utils/ulog/ULogData;)V
    .locals 0
    .parameter "ulogdata"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/ULogDataDecorator;-><init>(Lcom/htc/utils/ulog/ULogData;)V

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic addRef()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->addRef()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/htc/utils/ulog/ULogData$ULogItem;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 22
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v3, :cond_3

    .line 23
    const/4 v0, 0x0

    .local v0, appidSize:I
    const/4 v1, 0x0

    .local v1, categorySize:I
    const/4 v2, 0x0

    .line 24
    .local v2, dataSize:I
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 26
    :cond_0
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 27
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 28
    :cond_1
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 29
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData$ULogItem;->length()I

    move-result v2

    .line 31
    :cond_2
    add-int v3, v0, v1

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    .line 34
    .end local v0           #appidSize:I
    .end local v1           #categorySize:I
    .end local v2           #dataSize:I
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getTimestamp()J
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->recycle()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 42
    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-nez v9, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 48
    .local v1, flag:I
    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v9}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v7

    .line 49
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    if-ne v1, v8, :cond_2

    .line 51
    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v9}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    :cond_2
    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v9}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v1, v7

    .line 55
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    if-ne v1, v8, :cond_3

    .line 57
    iget-object v8, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    :cond_3
    iget-object v8, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v8, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v3

    .line 64
    .local v3, item:Lcom/htc/utils/ulog/ULogData$ULogItem;
    if-eqz v3, :cond_7

    .line 65
    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData$ULogItem;->getEntrySet()Ljava/util/Set;

    move-result-object v6

    .line 67
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const-string v4, ""

    .line 69
    .local v4, key:Ljava/lang/String;
    const-string v5, ""

    .line 70
    .local v5, obj:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v5           #obj:Ljava/lang/String;
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #key:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 72
    .restart local v4       #key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 73
    .local v5, obj:Ljava/lang/Object;
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 74
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    check-cast v5, Ljava/lang/String;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/utils/ulog/ULogData$ULogItem;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    move v1, v8

    .line 48
    goto :goto_1

    :cond_5
    move v1, v8

    .line 54
    goto :goto_2

    .line 78
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/htc/utils/ulog/ULogData$ULogItem;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #obj:Ljava/lang/Object;
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    const-string v7, ""

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    const-string v7, ""

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 84
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_7
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0
.end method
