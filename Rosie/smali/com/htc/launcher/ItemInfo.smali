.class public abstract Lcom/htc/launcher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field public static final NO_ID:I = -0x1

.field public static final max_screen:I


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field iconname:Ljava/lang/String;

.field public id:J

.field public itemType:I

.field public removable:Z

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public workspaceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    sput v0, Lcom/htc/launcher/ItemInfo;->max_screen:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 56
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 61
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 66
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 71
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 76
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 81
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 88
    iput-boolean v1, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/htc/launcher/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 56
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 61
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 66
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 71
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 76
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 81
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 88
    iput-boolean v1, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 101
    iget-wide v0, p1, Lcom/htc/launcher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 102
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 103
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 104
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 105
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 106
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 107
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 108
    iget-wide v0, p1, Lcom/htc/launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 111
    iget-boolean v0, p1, Lcom/htc/launcher/ItemInfo;->removable:Z

    iput-boolean v0, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 115
    iget-object v0, p1, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x4

    .line 195
    .local v1, nSize:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 197
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 198
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 199
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 203
    :goto_0
    return-object v3

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 144
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 146
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 148
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    const-string v3, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #size:I
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #size:I
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
.end method

.method public editItem()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public abstract getId()J
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, ""

    .line 173
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, ""

    .line 178
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public isItemEditable()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 125
    const-string v0, "itemType"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v0, "container"

    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v0, "screen"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v0, "cellX"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v0, "cellY"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v0, "spanX"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "spanY"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "workspace_id"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "removable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconname("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
