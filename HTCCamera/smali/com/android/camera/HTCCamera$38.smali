.class Lcom/android/camera/HTCCamera$38;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 10324
    iput-object p1, p0, Lcom/android/camera/HTCCamera$38;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 10327
    sparse-switch p2, :sswitch_data_0

    .line 10340
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 10327
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
