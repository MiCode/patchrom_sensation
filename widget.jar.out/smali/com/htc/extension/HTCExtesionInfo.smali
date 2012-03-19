.class public Lcom/htc/extension/HTCExtesionInfo;
.super Ljava/lang/Object;
.source "HTCExtesionInfo.java"


# instance fields
.field public final CLNum:Ljava/lang/String;

.field public final TITLE:Ljava/lang/String;

.field public final VENDOR:Ljava/lang/String;

.field public final VERSION:Ljava/lang/String;

.field private jarPath:Ljava/lang/String;

.field private sdkManifest:Ljava/util/jar/Manifest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "Implementation-Title"

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->TITLE:Ljava/lang/String;

    .line 38
    const-string v0, "Implementation-Vendor"

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->VENDOR:Ljava/lang/String;

    .line 39
    const-string v0, "Implementation-Version"

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->VERSION:Ljava/lang/String;

    .line 40
    const-string v0, "Implementation-CLNum"

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->CLNum:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->sdkManifest:Ljava/util/jar/Manifest;

    .line 43
    const-string v0, "/system/framework/HTCExtension.jar"

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->jarPath:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/htc/extension/HTCExtesionInfo;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/HTCExtesionInfo;->sdkManifest:Ljava/util/jar/Manifest;

    .line 49
    return-void
.end method

.method private getManifest()Ljava/util/jar/Manifest;
    .locals 4

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    iget-object v3, p0, Lcom/htc/extension/HTCExtesionInfo;->jarPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, jarfile:Ljava/util/jar/JarFile;
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 83
    .end local v1           #jarfile:Ljava/util/jar/JarFile;
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSDKInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pkgName"
    .parameter "header"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/htc/extension/HTCExtesionInfo;->sdkManifest:Ljava/util/jar/Manifest;

    if-nez v2, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 70
    :goto_0
    return-object v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/htc/extension/HTCExtesionInfo;->sdkManifest:Ljava/util/jar/Manifest;

    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    .line 69
    .local v1, map:Ljava/util/Map;
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 70
    .local v0, attrs:Ljava/util/jar/Attributes;
    invoke-virtual {v0, p2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getSDKModules()Ljava/util/Set;
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/htc/extension/HTCExtesionInfo;->sdkManifest:Ljava/util/jar/Manifest;

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, map:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
