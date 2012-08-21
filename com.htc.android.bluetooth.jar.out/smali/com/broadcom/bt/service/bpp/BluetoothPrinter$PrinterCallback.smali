.class Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrinterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizePrinter(IIIZ)V
    .locals 2
    .parameter "realmIndex"
    .parameter "realmLength"
    .parameter "realmCharSet"
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$200(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    move-result-object v0

    .line 968
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    if-eqz v0, :cond_0

    .line 969
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;->onAuthorizePrinter(IIIZ)V

    .line 972
    :cond_0
    return-void
.end method

.method public onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .locals 7
    .parameter "services"
    .parameter "bppFeatures"
    .parameter "oppFeatures"
    .parameter "bipFeatures"
    .parameter "bc"
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$200(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    move-result-object v0

    .line 978
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 979
    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;->onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V

    .line 982
    :cond_0
    return-void
.end method

.method public onPrinterSessionOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 985
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$200(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    move-result-object v0

    .line 986
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    if-eqz v0, :cond_0

    .line 987
    invoke-interface {v0}, Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;->onPrinterSessionOpen()V

    .line 989
    :cond_0
    return-void
.end method
