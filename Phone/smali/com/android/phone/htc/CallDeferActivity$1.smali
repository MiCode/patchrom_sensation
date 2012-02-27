.class Lcom/android/phone/htc/CallDeferActivity$1;
.super Ljava/lang/Object;
.source "CallDeferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/htc/CallDeferActivity;->createDeferMsgDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/CallDeferActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/htc/CallDeferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity$1;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 219
    const-string v0, "CallDefer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on defer msg dialog click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity$1;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->getCustomMsgIndex()I
    invoke-static {v0}, Lcom/android/phone/htc/CallDeferActivity;->access$000(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity$1;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/android/phone/htc/CallDeferActivity;->showDialog(I)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity$1;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #setter for: Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I
    invoke-static {v0, p2}, Lcom/android/phone/htc/CallDeferActivity;->access$102(Lcom/android/phone/htc/CallDeferActivity;I)I

    .line 227
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity$1;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;
    invoke-static {v0}, Lcom/android/phone/htc/CallDeferActivity;->access$200(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
