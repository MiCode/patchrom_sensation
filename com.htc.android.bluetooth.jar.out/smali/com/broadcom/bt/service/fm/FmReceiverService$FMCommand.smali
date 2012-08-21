.class final enum Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
.super Ljava/lang/Enum;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FMCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_LIVE_AUDIO_POLLING:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field public static final enum FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_ON"

    invoke-direct {v0, v1, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 81
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_OFF"

    invoke-direct {v0, v1, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 82
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_TUNE_RADIO"

    invoke-direct {v0, v1, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 83
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_GET_STATUS"

    invoke-direct {v0, v1, v6}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 84
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_MUTE_AUDIO"

    invoke-direct {v0, v1, v7}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 85
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SEEK_STATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 86
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SEEK_RDS_STATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 87
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SEEK_STATION_ABORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 88
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_RDS_MODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 89
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_AUDIO_MODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 90
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_AUDIO_PATH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 91
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_STEP_SIZE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 92
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_WORLD_REGION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 93
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_ESTIMATE_NOISE_FLOOR_LEVEL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 94
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_LIVE_AUDIO_POLLING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_LIVE_AUDIO_POLLING:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 95
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-string v1, "FM_SET_VOLUME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_LIVE_AUDIO_POLLING:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->$VALUES:[Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    return-object v0
.end method

.method public static values()[Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->$VALUES:[Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v0}, [Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    return-object v0
.end method
