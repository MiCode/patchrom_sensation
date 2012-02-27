.class Lcom/android/phone/HtcWorldPhoneOptions$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcWorldPhoneOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcWorldPhoneOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "onCallStateChanged -> CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_2:Z

    if-ne v0, v3, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->checkForNetworkSelector()V
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$000(Lcom/android/phone/HtcWorldPhoneOptions;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "onCallStateChanged -> CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "onCallStateChanged -> CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$1;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
