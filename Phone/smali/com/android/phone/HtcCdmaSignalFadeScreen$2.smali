.class Lcom/android/phone/HtcCdmaSignalFadeScreen$2;
.super Landroid/os/Handler;
.source "HtcCdmaSignalFadeScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaSignalFadeScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaSignalFadeScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaSignalFadeScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen$2;->this$0:Lcom/android/phone/HtcCdmaSignalFadeScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 105
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 109
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen$2;->this$0:Lcom/android/phone/HtcCdmaSignalFadeScreen;

    #calls: Lcom/android/phone/HtcCdmaSignalFadeScreen;->updateDialog(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/phone/HtcCdmaSignalFadeScreen;->access$000(Lcom/android/phone/HtcCdmaSignalFadeScreen;Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
