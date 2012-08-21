.class public Lcom/broadcom/bt/le/api/CharacteristicContext;
.super Ljava/lang/Object;
.source "CharacteristicContext.java"


# instance fields
.field public mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field public mCharProperty:I

.field public mDirtyDescNum:I

.field public mDirtyMask:Z

.field public mPermissions:I

.field public mSvcHandle:I


# direct methods
.method public constructor <init>(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V
    .locals 0
    .parameter "svc_handle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "char_property"
    .parameter "dirtyMask"
    .parameter "dirtyDescNum"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mSvcHandle:I

    .line 36
    iput-object p2, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 37
    iput p3, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mPermissions:I

    .line 38
    iput p4, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharProperty:I

    .line 39
    iput-boolean p5, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyMask:Z

    .line 40
    iput p6, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "svcHandle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mSvcHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", CharacteristicId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", Permissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mPermissions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", Property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", DirtyMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-boolean v1, p0, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyMask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
