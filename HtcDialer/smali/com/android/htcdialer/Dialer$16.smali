.class Lcom/android/htcdialer/Dialer$16;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3725
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$16;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$16;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$16;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$16;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/htcdialer/Dialer;->fireCallDirectly(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$2300(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;)V

    .line 3728
    return-void
.end method
