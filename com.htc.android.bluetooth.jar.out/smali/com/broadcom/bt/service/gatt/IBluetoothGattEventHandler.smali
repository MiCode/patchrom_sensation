.class public interface abstract Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
.super Ljava/lang/Object;
.source "IBluetoothGattEventHandler.java"


# virtual methods
.method public abstract onClosed(I)V
.end method

.method public abstract onDeregisterForNotifications(I)V
.end method

.method public abstract onExec(I)V
.end method

.method public abstract onGetFirstChar(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onGetFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onGetNextChar(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onGetNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onNotify(Ljava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z[B)V
.end method

.method public abstract onOpened()V
.end method

.method public abstract onPrepWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onReadCharAggregateFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V
.end method

.method public abstract onReadCharClientConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
.end method

.method public abstract onReadCharDescription(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V
.end method

.method public abstract onReadCharExtendedProperty(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
.end method

.method public abstract onReadCharPresentationFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V
.end method

.method public abstract onReadCharServerConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
.end method

.method public abstract onReadDescrAggregateFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V
.end method

.method public abstract onReadDescrClientConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
.end method

.method public abstract onReadDescrDescription(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V
.end method

.method public abstract onReadDescrExtendedProperty(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
.end method

.method public abstract onReadDescrPresentationFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V
.end method

.method public abstract onReadDescrServerConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
.end method

.method public abstract onRegisterForNotifications(I)V
.end method

.method public abstract onSearchCompleted(I)V
.end method

.method public abstract onSearchResult(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onWriteChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method

.method public abstract onWriteDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
.end method
