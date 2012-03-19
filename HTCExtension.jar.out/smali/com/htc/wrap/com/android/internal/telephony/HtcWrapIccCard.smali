.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;
.super Ljava/lang/Object;
.source "HtcWrapIccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    }
.end annotation


# static fields
.field private static mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getState()Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    .locals 2

    .prologue
    .line 31
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_b

    .line 32
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 33
    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 34
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    .line 59
    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    return-object v1

    .line 35
    .restart local v0       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 36
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 37
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    .line 38
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PIN_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 40
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 41
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_4

    .line 42
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NETWORK_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 43
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5

    .line 44
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 45
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_6

    .line 46
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NOT_READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 47
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_7

    .line 48
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 49
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8

    .line 50
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->IMEI_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 51
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 52
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_EXPIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 53
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    .line 54
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_PERM_BLOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 56
    :cond_a
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 59
    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0
.end method

.method public static setupPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 26
    sput-object p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 27
    return-void
.end method
