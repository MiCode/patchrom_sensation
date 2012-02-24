.class Lcom/android/internal/telephony/cat/EventSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventList:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .locals 0
    .parameter "cmdDet"
    .parameter "eventList"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/cat/EventSetupParams;->eventList:[I

    .line 45
    return-void
.end method
