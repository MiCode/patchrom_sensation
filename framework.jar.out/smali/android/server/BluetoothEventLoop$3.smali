.class Landroid/server/BluetoothEventLoop$3;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$3;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 183
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$3;->this$0:Landroid/server/BluetoothEventLoop;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothEventLoop;->access$702(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 186
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 188
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$3;->this$0:Landroid/server/BluetoothEventLoop;

    const/4 v1, 0x0

    #setter for: Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Landroid/server/BluetoothEventLoop;->access$702(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 191
    :cond_0
    return-void
.end method
