.class public Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;
.super Ljava/lang/Object;
.source "CdmaRoamingInfoHelper.java"


# instance fields
.field public mCdmaRoaming:Z

.field public mDefaultRoamingIndicator:I

.field public mIsSystemInPrl:Z

.field public mRoamingIndicator:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mCdmaRoaming:Z

    .line 31
    return-void
.end method
