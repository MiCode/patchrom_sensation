.class Lcom/android/htcdialer/Dialer$2;
.super Landroid/os/Handler;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 633
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 693
    :pswitch_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->handleCdmaMessage(Landroid/os/Message;)Z
    invoke-static {v1, p1}, Lcom/android/htcdialer/Dialer;->access$700(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)Z

    .line 699
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 636
    :pswitch_2
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$000(Lcom/android/htcdialer/Dialer;)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 638
    .local v0, moveTo:I
    :goto_1
    if-le v0, v3, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 641
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->forceLayout()V

    goto :goto_0

    .line 636
    .end local v0           #moveTo:I
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$000(Lcom/android/htcdialer/Dialer;)I

    move-result v0

    goto :goto_1

    .line 646
    :pswitch_3
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->addVoiceMailNumberPanel()V
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$100(Lcom/android/htcdialer/Dialer;)V

    goto :goto_0

    .line 650
    :pswitch_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->dontAddVoiceMailNumber()V
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$200(Lcom/android/htcdialer/Dialer;)V

    goto :goto_0

    .line 668
    :pswitch_5
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/htcdialer/Dialer;->handleHomeDigit(Ljava/lang/Object;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/htcdialer/Dialer;->access$300(Lcom/android/htcdialer/Dialer;Ljava/lang/Object;II)V

    goto :goto_0

    .line 673
    :pswitch_6
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V
    invoke-static {v2, v1}, Lcom/android/htcdialer/Dialer;->access$400(Lcom/android/htcdialer/Dialer;I)V

    goto :goto_0

    .line 678
    :pswitch_7
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 680
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #setter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v4}, Lcom/android/htcdialer/Dialer;->access$502(Lcom/android/htcdialer/Dialer;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 681
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->finish()V

    goto :goto_0

    .line 687
    :pswitch_8
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v2, 0x1

    #setter for: Lcom/android/htcdialer/Dialer;->mBgRemoved:Z
    invoke-static {v1, v2}, Lcom/android/htcdialer/Dialer;->access$602(Lcom/android/htcdialer/Dialer;Z)Z

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
