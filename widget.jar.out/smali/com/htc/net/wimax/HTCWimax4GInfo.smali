.class public Lcom/htc/net/wimax/HTCWimax4GInfo;
.super Lcom/htc/net/wimax/Wimax4GInfo;
.source "HTCWimax4GInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;,
        Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;,
        Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ktWiBroStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;",
            "Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;",
            ">;"
        }
    .end annotation
.end field

.field public static final linkStateDetailMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;",
            "Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;",
            ">;"
        }
    .end annotation
.end field

.field public static final supplicantStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;",
            "Lcom/htc/net/FourG/FourGSupplicantState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

.field private hoCount:I

.field private hoFailCount:I

.field private hoLatency:I

.field private hoResyncCount:I

.field private ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field private powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

.field private txPower:F

.field private txPowerMaximum:F

.field private wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    .line 68
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->SYNC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->UL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->HHO:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_SBC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_PKM:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_REG:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_DSx:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->MODEMDOWN:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NULL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    .line 107
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    .line 126
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DL_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UL_ACQUISITION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_OPERATIONAL:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_SLEEP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_IDLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_ABORTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GInfo;-><init>()V

    .line 166
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    .line 167
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NULL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    .line 168
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    .line 169
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 172
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoCount:I

    .line 173
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoFailCount:I

    .line 174
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoResyncCount:I

    .line 175
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoLatency:I

    .line 177
    iput v2, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPower:F

    .line 178
    iput v2, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPowerMaximum:F

    .line 180
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->UNKNOW_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    .line 182
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GInfo;-><init>()V

    .line 358
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    .line 359
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 361
    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 362
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-super {p0}, Lcom/htc/net/wimax/Wimax4GInfo;->clear()V

    .line 297
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    .line 298
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NULL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    .line 299
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->clear()V

    .line 300
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->clear()V

    .line 303
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GInfo;->bsInfoServing:Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    .line 304
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 306
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoCount:I

    .line 307
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoFailCount:I

    .line 308
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoResyncCount:I

    .line 309
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoLatency:I

    .line 311
    iput v2, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPower:F

    .line 312
    iput v2, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPowerMaximum:F

    .line 314
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->UNKNOW_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    .line 316
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public get4GBaseStationInfoPrevious()Lcom/htc/net/FourG/FourGBaseStationInfo;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    return-object v0
.end method

.method public getHoCount()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoCount:I

    return v0
.end method

.method public getHoFailCount()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoFailCount:I

    return v0
.end method

.method public getHoLatency()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoLatency:I

    return v0
.end method

.method public getHoResyncCount()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoResyncCount:I

    return v0
.end method

.method public getKtWiBroState()Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    return-object v0
.end method

.method public getPowerControlMode()Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    return-object v0
.end method

.method public getTxPowerFloat()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPower:F

    return v0
.end method

.method public getTxPowerMaximum()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPowerMaximum:F

    return v0
.end method

.method public getWimaxState()Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/htc/net/wimax/Wimax4GInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    .line 369
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoCount:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoFailCount:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoResyncCount:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoLatency:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPower:F

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPowerMaximum:F

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    .line 379
    return-void
.end method

.method public set4GBaseStationInfoPrevious(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)V
    .locals 0
    .parameter "bsInfo"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 212
    return-void
.end method

.method public setHoCount(I)V
    .locals 0
    .parameter "hoCount"

    .prologue
    .line 248
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoCount:I

    .line 249
    return-void
.end method

.method public setHoFailCount(I)V
    .locals 0
    .parameter "hoFailCount"

    .prologue
    .line 252
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoFailCount:I

    .line 253
    return-void
.end method

.method public setHoLatency(I)V
    .locals 0
    .parameter "hoLatency"

    .prologue
    .line 260
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoLatency:I

    .line 261
    return-void
.end method

.method public setHoResyncCount(I)V
    .locals 0
    .parameter "hoResyncCount"

    .prologue
    .line 256
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoResyncCount:I

    .line 257
    return-void
.end method

.method public setKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V
    .locals 0
    .parameter "ktWiBroState"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    .line 202
    return-void
.end method

.method public setPowerControlMode(Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;)V
    .locals 0
    .parameter "powerControlMode"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    .line 265
    return-void
.end method

.method public setTxPower(F)V
    .locals 0
    .parameter "txPower"

    .prologue
    .line 268
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPower:F

    .line 269
    return-void
.end method

.method public setTxPowerMaximum(F)V
    .locals 0
    .parameter "txPowerMaximum"

    .prologue
    .line 272
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPowerMaximum:F

    .line 273
    return-void
.end method

.method public setWimaxState(Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;)V
    .locals 0
    .parameter "wimaxState"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    .line 192
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->wimaxState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroState:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->bsInfoPrevious:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoFailCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoResyncCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->hoLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->txPowerMaximum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 339
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GInfo;->powerControlMode:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    return-void
.end method
