.class Lcom/android/phone/InCallScreen$DialogClickListener;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 9772
    iput-object p1, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9774
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9778
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 9811
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$6000(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9813
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$6000(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 9816
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$6002(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 9817
    return-void

    .line 9782
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_VoIP_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9784
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VoIP_RESUME_CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9785
    .local v2, voipIntent:Landroid/content/Intent;
    const-string v3, "ResumeType"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9786
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9789
    .end local v2           #voipIntent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MERLIN_RESUME_CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9790
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "ResumeType"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9791
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9793
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$5902(Lcom/android/phone/InCallScreen;Z)Z

    goto :goto_0

    .line 9798
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    .line 9799
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 9800
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 9801
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v1, :cond_2

    .line 9802
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->setupPSCallIdleState()V

    .line 9803
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$5902(Lcom/android/phone/InCallScreen;Z)Z

    goto :goto_0

    .line 9778
    :pswitch_data_0
    .packed-switch 0x7f08007c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
