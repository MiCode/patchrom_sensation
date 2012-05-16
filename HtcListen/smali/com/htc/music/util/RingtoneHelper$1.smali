.class Lcom/htc/music/util/RingtoneHelper$1;
.super Ljava/lang/Object;
.source "RingtoneHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/RingtoneHelper;

.field final synthetic val$contactResultCode:I


# direct methods
.method constructor <init>(Lcom/htc/music/util/RingtoneHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/music/util/RingtoneHelper$1;->this$0:Lcom/htc/music/util/RingtoneHelper;

    iput p2, p0, Lcom/htc/music/util/RingtoneHelper$1;->val$contactResultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    packed-switch p2, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper$1;->this$0:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v0}, Lcom/htc/music/util/RingtoneHelper;->setAsPhoneRingtone()V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper$1;->this$0:Lcom/htc/music/util/RingtoneHelper;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper$1;->val$contactResultCode:I

    invoke-virtual {v0, v1}, Lcom/htc/music/util/RingtoneHelper;->setAsContactRingtone(I)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper$1;->this$0:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v0}, Lcom/htc/music/util/RingtoneHelper;->setAsNotificationRingtone()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
