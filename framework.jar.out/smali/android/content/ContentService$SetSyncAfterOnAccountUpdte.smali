.class public Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;
.super Landroid/content/SyncManager$PostOnAccountUpdateAction;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetSyncAfterOnAccountUpdte"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentService;


# direct methods
.method public constructor <init>(Landroid/content/ContentService;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 318
    iput-object p1, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->this$0:Landroid/content/ContentService;

    .line 319
    #calls: Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;
    invoke-static {p1}, Landroid/content/ContentService;->access$100(Landroid/content/ContentService;)Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Landroid/content/SyncManager$PostOnAccountUpdateAction;-><init>(Landroid/content/SyncManager;)V

    .line 320
    iput-object p2, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAccount:Landroid/accounts/Account;

    .line 321
    iput-object p3, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAuthority:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 325
    invoke-super {p0}, Landroid/content/SyncManager$PostOnAccountUpdateAction;->execute()V

    .line 326
    iget-object v0, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAccount:Landroid/accounts/Account;

    iget-object v1, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAuthority:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 328
    iget-object v0, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAccount:Landroid/accounts/Account;

    iget-object v1, p0, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;->aAuthority:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 330
    :cond_0
    return-void
.end method
