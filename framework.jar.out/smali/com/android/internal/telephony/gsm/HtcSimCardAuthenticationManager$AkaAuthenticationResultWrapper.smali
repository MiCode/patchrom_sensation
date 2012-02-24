.class Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;
.super Ljava/lang/Object;
.source "HtcSimCardAuthenticationManager.java"

# interfaces
.implements Lcom/orange/authentication/simcard/AkaAuthenticationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AkaAuthenticationResultWrapper"
.end annotation


# instance fields
.field mResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    .line 223
    return-void
.end method


# virtual methods
.method public getCk()[B
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->getCk()[B

    move-result-object v0

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->getIk()[B

    move-result-object v0

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->getRes()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;->mResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
