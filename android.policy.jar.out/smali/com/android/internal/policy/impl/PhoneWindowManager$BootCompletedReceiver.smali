.class final Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5126
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5126
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 5129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5146
    :cond_0
    :goto_0
    return-void

    .line 5132
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5133
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5137
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleted:Z

    .line 5138
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    goto :goto_0

    .line 5140
    :cond_2
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5144
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    goto :goto_0
.end method
