.class public Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
.super Ljava/lang/Object;
.source "GattClientContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/le/api/GattClientContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GattServiceDataContext"
.end annotation


# instance fields
.field public callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

.field public svcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field final synthetic this$0:Lcom/broadcom/bt/le/api/GattClientContext;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/le/api/GattClientContext;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->this$0:Lcom/broadcom/bt/le/api/GattClientContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
