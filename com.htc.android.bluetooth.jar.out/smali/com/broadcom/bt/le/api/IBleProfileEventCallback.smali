.class public interface abstract Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
.super Ljava/lang/Object;
.source "IBleProfileEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/le/api/IBleProfileEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppRegisterCompleted(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onClientConnected(ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
