.class Lcom/android/internal/policy/impl/PhoneWindowManager$PassCamKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassCamKey"
.end annotation


# instance fields
.field mKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter
    .parameter "keyEvent"

    .prologue
    .line 3198
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassCamKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3199
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassCamKey;->mKeyEvent:Landroid/view/KeyEvent;

    .line 3200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3203
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassCamKey;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3206
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassCamKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3208
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
