.class Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;
.super Ljava/lang/Thread;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDataThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;


# direct methods
.method private constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;Lcom/broadcom/android/bluetooth/BluetoothSPP$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;-><init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 338
    :goto_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$100(Lcom/broadcom/android/bluetooth/BluetoothSPP;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #calls: Lcom/broadcom/android/bluetooth/BluetoothSPP;->waitForData()V
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$200(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V

    .line 340
    const-string v0, "BluetoothSPP"

    const-string v1, "Data Arrived in SPP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B
    invoke-static {v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->read_port(B)[B

    move-result-object v1

    #setter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B
    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$302(Lcom/broadcom/android/bluetooth/BluetoothSPP;[B)[B

    .line 342
    const-string v0, "BluetoothSPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B
    invoke-static {v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B
    invoke-static {v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B
    invoke-static {v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->write(I[B)I

    goto :goto_0

    .line 345
    :cond_0
    const-string v0, "BluetoothSPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read Thread For Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B
    invoke-static {v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$500(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method
