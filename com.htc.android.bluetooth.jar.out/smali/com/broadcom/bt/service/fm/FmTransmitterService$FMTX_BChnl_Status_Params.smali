.class Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMTX_BChnl_Status_Params"
.end annotation


# instance fields
.field private m_freq:[I

.field private m_numCh:I

.field private m_rssi:[I

.field private m_status:I

.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V
    .locals 3
    .parameter
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    const/4 v2, 0x0

    .line 131
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_status:I

    .line 133
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    .line 134
    iget v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_freq:[I

    .line 135
    iget v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_rssi:[I

    .line 136
    iget v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    if-lez v1, :cond_0

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_freq:[I

    aget v2, p4, v0

    aput v2, v1, v0

    .line 141
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_rssi:[I

    aget v2, p5, v0

    aput v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    if-ge v0, v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_freq:[I

    aput v2, v1, v0

    .line 147
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_rssi:[I

    aput v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_1
    return-void
.end method

.method static synthetic access$1300(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_status:I

    return v0
.end method

.method static synthetic access$1400(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I

    return v0
.end method

.method static synthetic access$1500(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_freq:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_rssi:[I

    return-object v0
.end method
