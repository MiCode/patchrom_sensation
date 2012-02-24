.class public final Lcom/android/server/Encryption3LMService;
.super Landroid/os/IEncryption3LM$Stub;
.source "Encryption3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Encryption3LMService$1;,
        Lcom/android/server/Encryption3LMService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Encryption3LMService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/IEncryption3LM$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    .line 46
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0}, Lcom/android/server/pm/Installer;-><init>()V

    iput-object v0, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 47
    invoke-direct {p0}, Lcom/android/server/Encryption3LMService;->encryptedAppsDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/Encryption3LMService;Lcom/android/server/Encryption3LMService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    :cond_0
    return-void
.end method

.method private encryptedAppsDetected()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v5, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_encryption"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v4

    .line 64
    :cond_1
    iget-object v5, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 65
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 67
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertToPlaintext(Ljava/lang/String;I)Z
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Installer;->decrypt(Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p2}, Lcom/android/server/pm/Installer;->unEncryptData(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
