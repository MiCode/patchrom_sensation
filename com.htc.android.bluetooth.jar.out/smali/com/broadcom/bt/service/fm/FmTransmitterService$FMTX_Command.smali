.class final enum Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;
.super Ljava/lang/Enum;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FMTX_Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_ABORT_SEARCH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field public static final enum FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_ON"

    invoke-direct {v0, v1, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 157
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_OFF"

    invoke-direct {v0, v1, v4}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 158
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_TXPOWER"

    invoke-direct {v0, v1, v5}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 159
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_TXFREQ"

    invoke-direct {v0, v1, v6}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 160
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_TXPWR_LEVEL"

    invoke-direct {v0, v1, v7}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 161
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_AUDIO_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 162
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_VOLUME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 163
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_REGION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 164
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_BANDWIDTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 165
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_PREEMPHASIS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 166
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_AUDIO_PATH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 167
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SET_MUTE_AUDIO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 168
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_INTF_NOTIF"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 169
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_SEARCH_BEST_CHANS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 170
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_ABORT_SEARCH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ABORT_SEARCH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 171
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_START_AUDIO_CHIRP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 172
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-string v1, "FMTX_STOP_AUDIO_CHIRP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    .line 155
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v1, v0, v6

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ABORT_SEARCH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->$VALUES:[Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;
    .locals 1
    .parameter "name"

    .prologue
    .line 155
    const-class v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    return-object v0
.end method

.method public static values()[Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->$VALUES:[Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v0}, [Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    return-object v0
.end method
