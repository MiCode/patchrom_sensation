.class public Lcom/android/phone/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EcidClient$CityIdTimerManager;
    }
.end annotation


# static fields
.field public static final CALLERID_LOOKUP_DATA_ACCESS_NOT_PERMITTED:I = 0x10

.field public static final CALLERID_LOOKUP_INCLUDING_CNAM:I = 0x8

.field public static final CALLERID_LOOKUP_INCOMING_CALL:I = 0x20

.field public static final CALLERID_LOOKUP_NETWORK_IS_OUTSIDE_NANP:I = 0x4

.field public static final CALLERID_LOOKUP_SYSTEM_PROVIDED_CID:I = 0x2

.field public static final CALLERID_LOOKUP_USER_PROVIDED_CID:I = 0x1

.field static final CNAM_TEST_STRING:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x0

.field private static final ECID_AOSP_VERSION:Ljava/lang/String; = "4.0.1"

.field private static final SECS_DISPLAY_CITYID:I = 0x3

.field private static final SECS_DISPLAY_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Phone-ECID"

.field private static final VDBG:Z

.field static cnapDelivered:Z

.field static m_idPendingIntent:I

.field static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field static m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;


# instance fields
.field public m_bFriends:Z

.field private m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field m_callInfo:Lcom/android/internal/telephony/CallerInfo;

.field public m_callerId:Ljava/lang/String;

.field m_ccOwner:Lcom/android/phone/CallCard;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lConnectionTime:J

.field public m_lastName:Ljava/lang/String;

.field m_pending:Landroid/app/PendingIntent;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/android/phone/EcidClient;->DBG:Z

    .line 68
    sput-boolean v0, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 70
    sput v0, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 94
    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 95
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 741
    return-void
.end method

.method static callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .parameter "oInfo"

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v1, p0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 846
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 849
    .end local p0
    :cond_0
    :goto_0
    return-object v0

    .line 847
    .restart local p0
    :cond_1
    instance-of v1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    .line 848
    check-cast p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method static cancelLookupQueriesInSet(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, key:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EcidClient;

    .line 376
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 378
    iget-object v4, v3, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #thisObj:Lcom/android/phone/EcidClient;
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Phone-ECID"

    const-string v5, "cancelLookupQueriesInSet"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static cancelTimer()V
    .locals 1

    .prologue
    .line 801
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    if-eqz v0, :cond_0

    .line 802
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    invoke-virtual {v0}, Lcom/android/phone/EcidClient$CityIdTimerManager;->cancelTimer()V

    .line 803
    :cond_0
    return-void
.end method

.method static dbgDumpPending()V
    .locals 5

    .prologue
    .line 873
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 874
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 876
    .local v1, key:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EcidClient;

    .line 880
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->dbgLogData()V

    goto :goto_0

    .line 882
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #thisObj:Lcom/android/phone/EcidClient;
    :cond_0
    return-void
.end method

.method public static endAllLookupQueries()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "Phone-ECID"

    const-string v2, "Cancelling All Lookup Queries"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v1, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 364
    .local v0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V

    .line 365
    return-void
.end method

.method public static endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "ci"

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidClient;

    .line 351
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, v1, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 358
    :cond_0
    return-void
.end method

.method public static getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "conn"

    .prologue
    .line 835
    if-eqz p0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;
    .locals 3
    .parameter "ci"

    .prologue
    .line 130
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 133
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_1

    .line 135
    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v1, p0, :cond_0

    .line 142
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :goto_0
    return-object v0

    .line 138
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_0
    const-string v1, "Phone-ECID"

    const-string v2, "Old EcidClient object found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p0}, Lcom/android/phone/EcidClient;->endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V

    .line 142
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;
    .locals 1
    .parameter "ci"
    .parameter "lConnectionTime"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;JLjava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v0

    return-object v0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;JLjava/lang/String;)Lcom/android/phone/EcidClient;
    .locals 4
    .parameter "ci"
    .parameter "lConnectionTime"
    .parameter "cnam"

    .prologue
    .line 110
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 113
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_2

    .line 115
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 118
    .local v1, cnameChanged:Z
    :goto_0
    iget-object v2, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v2, p0, :cond_1

    iget-wide v2, v0, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 125
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    .end local v1           #cnameChanged:Z
    :goto_1
    return-object v0

    .line 115
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    .restart local v1       #cnameChanged:Z
    :cond_1
    const-string v2, "Phone-ECID"

    const-string v3, "Old EcidClient object found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Lcom/android/phone/EcidClient;->endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V

    .line 125
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    .end local v1           #cnameChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getClient(Ljava/lang/String;)Lcom/android/phone/EcidClient;
    .locals 2
    .parameter "strCallerId"

    .prologue
    .line 101
    const-string v0, "Phone-ECID"

    const-string v1, "ECID AOSP VERSION: 4.0.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    return-object v0
.end method

.method public static handleAlternatingDisplay(Lcom/android/internal/telephony/Phone;J)Z
    .locals 2
    .parameter "phone"
    .parameter "timeElapsed"

    .prologue
    .line 809
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/EcidClient;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v0

    .line 810
    .local v0, bAnyActive:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/EcidClient;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 811
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/EcidClient;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 812
    return v0
.end method

.method static handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z
    .locals 3
    .parameter "call"
    .parameter "timeElapsed"

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EcidClient;->getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 819
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v1

    .line 820
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    if-eqz v2, :cond_0

    .line 822
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/phone/EcidClient;->implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V

    .line 823
    const/4 v2, 0x1

    .line 825
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static handleResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 433
    const-string v2, "id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, strCallerId:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidClient;

    .line 438
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-nez v1, :cond_0

    .line 440
    const-string v2, "Phone-ECID"

    const-string v3, "  Could not find NameIdClient object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {v1, p0, p2, p3}, Lcom/android/phone/EcidClient;->handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method static removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V
    .locals 3
    .parameter
    .parameter "call"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telephony/Call;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 411
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 417
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 422
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_1
    return-void

    .line 413
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z
    .locals 12
    .parameter "o"
    .parameter "ownerActivity"
    .parameter "ccOwner"
    .parameter "nResultMessage"
    .parameter "bIncoming"
    .parameter "bSystemProvided"
    .parameter "bIsNANP"
    .parameter "bIsRoaming"
    .parameter "lConnectionTime"
    .parameter "conn"

    .prologue
    .line 199
    const-string v9, "Phone-ECID"

    const-string v10, "ECID AOSP VERSION: 4.0.1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "Phone-ECID"

    const-string v10, "sendLookupQueryToService()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 207
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p10, :cond_2

    .line 208
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_1

    .line 209
    const-string v9, "Phone-ECID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendLookupQueryToService() : conn is not null, conn.getCnapName() -//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 215
    :cond_2
    if-eqz v2, :cond_3

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v9, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 216
    :cond_3
    const/4 v9, 0x0

    .line 343
    :goto_0
    return v9

    .line 217
    :cond_4
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 220
    const/4 v9, 0x0

    goto :goto_0

    .line 222
    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v6, resultTemplate:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ecid.query:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    const-string v9, "id"

    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 v9, 0x0

    invoke-virtual {p1, p3, v6, v9}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 228
    .local v5, result:Landroid/app/PendingIntent;
    if-nez v5, :cond_7

    .line 229
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_6

    .line 230
    const-string v9, "Phone-ECID"

    const-string v10, "null PendingInent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 234
    :cond_7
    const/4 v8, 0x0

    .line 235
    .local v8, thisObj:Lcom/android/phone/EcidClient;
    const/4 v3, 0x0

    .line 244
    .local v3, nFlags:I
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1, v9}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;JLjava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v8

    .line 245
    if-eqz v8, :cond_8

    .line 251
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 252
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto :goto_0

    .line 255
    :cond_8
    if-nez v8, :cond_f

    .line 260
    new-instance v8, Lcom/android/phone/EcidClient;

    .end local v8           #thisObj:Lcom/android/phone/EcidClient;
    invoke-direct {v8}, Lcom/android/phone/EcidClient;-><init>()V

    .line 261
    .restart local v8       #thisObj:Lcom/android/phone/EcidClient;
    iput-object p2, v8, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    .line 262
    iput-object v2, v8, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 263
    iput-object v5, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    .line 264
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 265
    move-wide/from16 v0, p8

    iput-wide v0, v8, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    .line 266
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 270
    sget-object v10, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v10

    .line 271
    :try_start_0
    sget-object v9, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz p5, :cond_e

    const/4 v9, 0x2

    :goto_1
    or-int/2addr v3, v9

    .line 278
    if-nez p6, :cond_9

    .line 279
    or-int/lit8 v3, v3, 0x4

    .line 281
    :cond_9
    if-eqz p4, :cond_a

    .line 282
    or-int/lit8 v3, v3, 0x20

    .line 314
    :cond_a
    :goto_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v7, serviceIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.cequint.ecid"

    const-string v11, "com.cequint.ecid.CallerIdLookupAsync"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    const-string v9, "pCallerID"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 318
    const-string v9, "pCNAM"

    iget-object v10, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 320
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_b

    .line 321
    const-string v9, "Phone-ECID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendLookupQueryToService - pCNAM: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_b
    :goto_3
    if-eqz p7, :cond_c

    .line 330
    const-string v9, "Phone-ECID"

    const-string v10, "bIsRoaming is set"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    or-int/lit8 v3, v3, 0x10

    .line 334
    :cond_c
    const-string v9, "nFlags"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v9, "pending"

    iget-object v10, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p1, v7}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_d

    .line 338
    const-string v9, "Phone-ECID"

    const-string v10, "Error starting service, calling endLookupQuery"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {v2}, Lcom/android/phone/EcidClient;->endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V

    .line 343
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 272
    .end local v7           #serviceIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 277
    :cond_e
    const/4 v9, 0x1

    goto :goto_1

    .line 289
    :cond_f
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 291
    sget-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    if-nez v9, :cond_11

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 292
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_10

    .line 293
    const-string v9, "Phone-ECID"

    const-string v10, "Finally got a cnapName. Pass the value to ECID client again."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_10
    or-int/lit8 v3, v3, 0x20

    goto/16 :goto_2

    .line 295
    :cond_11
    sget-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 296
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_12

    .line 297
    const-string v9, "Phone-ECID"

    const-string v10, "cnapDelivered has a wrong flag, reset it "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_12
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 299
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0

    .line 304
    :cond_13
    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_14

    .line 305
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 306
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_14

    .line 307
    const-string v9, "Phone-ECID"

    const-string v10, "call disconnected, reset cnapDelivered "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_14
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0

    .line 324
    .restart local v7       #serviceIntent:Landroid/content/Intent;
    :cond_15
    const-string v9, "Phone-ECID"

    const-string v10, "No CNAM passed by radio layer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static setCityIdDisplayOneLine(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;Z)V
    .locals 3
    .parameter "tv"
    .parameter "info"
    .parameter "isIncoming"

    .prologue
    .line 683
    invoke-static {p1}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 684
    .local v0, thisObj:Lcom/android/phone/EcidClient;
    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 688
    :cond_0
    iput-object p0, v0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 689
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/phone/EcidClient;->implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V

    .line 690
    invoke-static {}, Lcom/android/phone/EcidClient;->startTimer()V

    goto :goto_0
.end method

.method public static setEcidDisplay(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 7
    .parameter "info"
    .parameter "tvCityId"
    .parameter "ivConnectionIcon"
    .parameter "bIncoming"

    .prologue
    const/4 v5, 0x0

    .line 598
    const/16 v1, 0x8

    .line 601
    .local v1, nDisplayCityId:I
    invoke-static {p0}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v3

    .line 606
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v3, :cond_0

    .line 608
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->dbgLogData()V

    .line 610
    iput-boolean v5, v3, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 611
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 612
    iput-boolean v5, v3, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 614
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, strDisplay:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    const-string v6, ", "

    invoke-static {v4, v2, v5, v6}, Lcom/android/phone/CityIdInfo;->ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, ellipsizedDisplay:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const/4 v1, 0x0

    .line 647
    .end local v0           #ellipsizedDisplay:Ljava/lang/String;
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 648
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    :cond_1
    return-void
.end method

.method static startTimer()V
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Lcom/android/phone/EcidClient$CityIdTimerManager;

    invoke-direct {v0}, Lcom/android/phone/EcidClient$CityIdTimerManager;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    .line 796
    :cond_0
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    invoke-virtual {v0}, Lcom/android/phone/EcidClient$CityIdTimerManager;->startTimer()V

    .line 797
    return-void
.end method

.method static updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "oOld"
    .parameter "oNew"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 148
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p1}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 150
    .local v0, ciNew:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 153
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, phoneNumberOld:Ljava/lang/String;
    sget-object v5, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/EcidClient;

    .line 155
    .local v4, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v4, :cond_1

    .line 162
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, phoneNumberNew:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    iget-object v5, v4, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v5, v1, :cond_0

    .line 167
    const-string v5, "Phone-ECID"

    const-string v6, "uCIM: replacing with new callInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iput-object v0, v4, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 184
    .end local v2           #phoneNumberNew:Ljava/lang/String;
    .end local v3           #phoneNumberOld:Ljava/lang/String;
    .end local v4           #thisObj:Lcom/android/phone/EcidClient;
    :cond_1
    return-void
.end method

.method public static updateLookupQueries(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 391
    const-string v2, "Phone-ECID"

    const-string v3, "updateLookupQueries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 394
    .local v1, phoneType:I
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 395
    .local v0, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 396
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 397
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 400
    invoke-static {v0}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V

    .line 401
    return-void
.end method


# virtual methods
.method public canUpdateContactPhoto()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 510
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 511
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: no picture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_0
    return v0

    .line 514
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_1

    .line 515
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: use contact photo && photo exist && isCachedPhotoCurrent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    .line 519
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: contact photo exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dbgLogData()V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method public getCityStateDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_0

    .line 593
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "ctx"
    .parameter "strImageUrl"

    .prologue
    .line 491
    const/4 v3, 0x0

    .line 493
    .local v3, pic:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 497
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 505
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 499
    :catch_0
    move-exception v1

    .line 503
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 451
    const-string v1, "cid_pNumber"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_callerId:Ljava/lang/String;

    .line 452
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 454
    const-string v1, "Phone-ECID"

    const-string v2, "extracting NameId info... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v1, "cid_pName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    .line 456
    const-string v1, "cid_pCompany"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 457
    const-string v1, "cid_pFirstName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 458
    const-string v1, "cid_pLastName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 459
    const-string v1, "cid_pCityName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    .line 460
    const-string v1, "cid_pStateName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    .line 461
    const-string v1, "cid_pStateAbbr"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    .line 462
    const-string v1, "cid_pCountryName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    .line 463
    const-string v1, "cid_pImage"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    .line 464
    const-string v1, "cid_bSameNetwork"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    .line 465
    const-string v1, "cid_bFriends"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bFriends:Z

    .line 466
    const-string v1, "cid_bPreferCidImage"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    .line 467
    const-string v1, "cid_pDisplayName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    .line 469
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    .line 476
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, strDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-static {}, Lcom/android/phone/util/Auxiliary;->notify3DLockscreen()V

    .line 487
    .end local v0           #strDisplay:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v1, "Phone-ECID"

    const-string v2, "bad result code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hasCityId()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V
    .locals 9
    .parameter "info"
    .parameter "timeElapsed"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 695
    iput-boolean v4, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 698
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-wide/16 v6, 0x6

    rem-long v6, p2, v6

    long-to-int v2, v6

    .line 710
    .local v2, nPhase:I
    const/4 v6, 0x3

    if-lt v2, v6, :cond_3

    move v1, v4

    .line 711
    .local v1, isPhaseDisplayCityId:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    if-nez v6, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, strDisplay:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 719
    iget-object v6, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    const-string v8, ", "

    invoke-static {v6, v3, v7, v8}, Lcom/android/phone/CityIdInfo;->ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, ellipsizedDisplay:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iput-boolean v4, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 731
    .end local v0           #ellipsizedDisplay:Ljava/lang/String;
    .end local v3           #strDisplay:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    if-eqz v4, :cond_0

    .line 735
    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 736
    .restart local v3       #strDisplay:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iput-boolean v5, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    goto :goto_0

    .end local v1           #isPhaseDisplayCityId:Z
    .end local v3           #strDisplay:Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 710
    goto :goto_1
.end method

.method public updateCallerInfo(Landroid/content/Context;)Z
    .locals 6
    .parameter "ctx"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, bModified:Z
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v2, :cond_1

    .line 533
    const-string v2, "Phone-ECID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_callInfo.name updated with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 535
    const/4 v0, 0x1

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->canUpdateContactPhoto()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v2, :cond_2

    .line 547
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 548
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 549
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 550
    const-string v2, "Phone-ECID"

    const-string v3, "Set ECID pictures done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x1

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v2, :cond_3

    .line 556
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v3, "cname"

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v0, 0x1

    .line 562
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, city:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 564
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v3, "CITY_ID"

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const/4 v0, 0x1

    .line 569
    :cond_4
    return v0
.end method
