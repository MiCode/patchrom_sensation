.class public Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;
.super Ljava/lang/Object;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GbaBootStrapParam"
.end annotation


# instance fields
.field public mData:[B

.field public mEfid:I

.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephony;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcTelephony;I[B)V
    .locals 0
    .parameter
    .parameter "mEfid"
    .parameter "mData"

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    iput p2, p0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mEfid:I

    .line 1227
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mData:[B

    .line 1228
    return-void
.end method
