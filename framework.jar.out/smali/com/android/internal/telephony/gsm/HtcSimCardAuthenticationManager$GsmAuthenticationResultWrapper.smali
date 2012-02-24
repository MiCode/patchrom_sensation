.class Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;
.super Ljava/lang/Object;
.source "HtcSimCardAuthenticationManager.java"

# interfaces
.implements Lcom/orange/authentication/simcard/GsmAuthenticationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsmAuthenticationResultWrapper"
.end annotation


# instance fields
.field mResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    .line 202
    return-void
.end method


# virtual methods
.method public getKc()J
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->getKc()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSres()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->getSres()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
