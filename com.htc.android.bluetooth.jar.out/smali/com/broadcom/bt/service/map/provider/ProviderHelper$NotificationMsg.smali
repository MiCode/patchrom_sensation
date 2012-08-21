.class Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationMsg"
.end annotation


# instance fields
.field public mMessageFolder:Ljava/lang/String;

.field public mMessageId:Ljava/lang/String;

.field mNotifType:I

.field public mOldFolder:Ljava/lang/String;

.field public mProviderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/ProviderHelper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "notif_type"
    .parameter "provider_id"
    .parameter "message_id"
    .parameter "message_folder"
    .parameter "old_folder"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mNotifType:I

    .line 63
    iput-object p3, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mOldFolder:Ljava/lang/String;

    .line 67
    return-void
.end method
