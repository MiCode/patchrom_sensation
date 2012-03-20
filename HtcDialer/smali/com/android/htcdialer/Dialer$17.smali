.class Lcom/android/htcdialer/Dialer$17;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$assistNumber:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3717
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$17;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$17;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/htcdialer/Dialer$17;->val$assistNumber:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$17;->val$intent:Landroid/content/Intent;

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$17;->val$assistNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3722
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$17;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$17;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/htcdialer/Dialer;->fireCallDirectly(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$2300(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;)V

    .line 3723
    return-void
.end method
