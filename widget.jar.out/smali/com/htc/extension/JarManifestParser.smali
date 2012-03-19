.class public Lcom/htc/extension/JarManifestParser;
.super Ljava/lang/Object;
.source "JarManifestParser.java"


# instance fields
.field private mManifest:Ljava/util/jar/Manifest;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/htc/extension/JarManifestParser;->setPath(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->setManifest()V

    .line 35
    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "/system/framework/HTCExtension.jar"

    return-object v0
.end method

.method private getManifest()Ljava/util/jar/Manifest;
    .locals 3

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, jarfile:Ljava/util/jar/JarFile;
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    .end local v1           #jarfile:Ljava/util/jar/JarFile;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private setManifest()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    .line 77
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEntryValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "entryName"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    if-nez v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 62
    .local v0, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Attributes;

    .line 68
    .local v1, entry:Ljava/util/jar/Attributes;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, p2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
