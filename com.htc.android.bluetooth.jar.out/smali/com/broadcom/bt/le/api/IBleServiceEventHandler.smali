.class public interface abstract Lcom/broadcom/bt/le/api/IBleServiceEventHandler;
.super Ljava/lang/Object;
.source "IBleServiceEventHandler.java"


# virtual methods
.method public abstract onAttributeRequestRead(Ljava/lang/String;IIIIZ)V
.end method

.method public abstract onAttributeRequestWrite(Ljava/lang/String;IIIZIZI[B)V
.end method

.method public abstract onCharacteristicAdded(BLandroid/os/ParcelUuid;I)V
.end method

.method public abstract onCharacteristicDescrAdded(BLandroid/os/ParcelUuid;I)V
.end method

.method public abstract onHandleValueIndicationCompleted(BI)V
.end method

.method public abstract onHandleValueNotificationCompleted(BI)V
.end method

.method public abstract onIncludedServiceAdded(BI)V
.end method

.method public abstract onResponseSendCompleted(BI)V
.end method

.method public abstract onServiceCreated(BI)V
.end method

.method public abstract onServiceDeleted(B)V
.end method

.method public abstract onServiceRegistered(BI)V
.end method

.method public abstract onServiceStarted(BB)V
.end method

.method public abstract onServiceStopped(B)V
.end method
