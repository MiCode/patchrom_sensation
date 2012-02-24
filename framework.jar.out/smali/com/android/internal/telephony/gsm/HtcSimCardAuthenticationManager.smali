.class public Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;
.super Ljava/lang/Object;
.source "HtcSimCardAuthenticationManager.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;,
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;
    }
.end annotation


# static fields
.field public static final INTERNAL_SERVICE_NAME:Ljava/lang/String; = "htc.sim_authentication"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcSimCardAuthenticationManager"

.field private static sInstance:Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->sInstance:Lcom/orange/authentication/simcard/SimCardAuthenticationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    return-void
.end method

.method private getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, "htc.sim_authentication"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/orange/authentication/simcard/SimCardAuthenticationManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->sInstance:Lcom/orange/authentication/simcard/SimCardAuthenticationManager;

    return-object v0
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 7
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "RAND is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_0
    array-length v3, p1

    if-nez v3, :cond_1

    .line 149
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid RAND!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_1
    if-nez p2, :cond_2

    .line 153
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "AUTN is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_2
    array-length v3, p2

    if-nez v3, :cond_3

    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid AUTN!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    .line 161
    new-instance v3, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v3

    .line 165
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;->requestAkaAuthentication([B[B)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-result-object v2

    .line 167
    .local v2, result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-nez v3, :cond_5

    .line 168
    new-instance v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;-><init>(Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)V

    .line 188
    .end local v2           #result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :goto_0
    return-object v3

    .line 171
    .restart local v2       #result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :cond_5
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    .line 172
    .local v0, error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 173
    new-instance v3, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v0           #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .end local v2           #result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :catch_0
    move-exception v1

    .line 183
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcSimCardAuthenticationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 184
    goto :goto_0

    .line 174
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .restart local v2       #result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :cond_6
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    new-instance v3, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;-><init>()V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .end local v0           #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .end local v2           #result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :catch_1
    move-exception v1

    .line 187
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcSimCardAuthenticationManager"

    const-string v5, "Unable to get AuthenticationService!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 188
    goto :goto_0

    .line 176
    .end local v1           #ex:Ljava/lang/NullPointerException;
    .restart local v0       #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .restart local v2       #result:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :cond_7
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 177
    new-instance v3, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->getAuts()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v3

    .line 179
    :cond_8
    new-instance v3, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 5

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, simType:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;->getSimCardType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 86
    packed-switch v1, :pswitch_data_0

    .line 96
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcSimCardAuthenticationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 80
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcSimCardAuthenticationManager"

    const-string v3, "Unable to get AuthenticationService!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 88
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :pswitch_0
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 90
    :pswitch_1
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 92
    :pswitch_2
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 94
    :pswitch_3
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 7
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "RAND is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_0
    array-length v3, p1

    const/16 v5, 0x10

    if-eq v3, v5, :cond_1

    .line 109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RAND length is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    .line 113
    new-instance v3, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v3

    .line 117
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;->requestGsmAuthentication([B)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    move-result-object v2

    .line 118
    .local v2, result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-nez v3, :cond_3

    .line 119
    new-instance v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;-><init>(Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;)V

    .line 135
    .end local v2           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :goto_0
    return-object v3

    .line 122
    .restart local v2       #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_3
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    .line 123
    .local v0, error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    new-instance v3, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v0           #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .end local v2           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :catch_0
    move-exception v1

    .line 130
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcSimCardAuthenticationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 131
    goto :goto_0

    .line 126
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .restart local v2       #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_4
    :try_start_1
    new-instance v3, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v0           #error:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .end local v2           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :catch_1
    move-exception v1

    .line 134
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcSimCardAuthenticationManager"

    const-string v5, "Unable to get AuthenticationService!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 135
    goto :goto_0
.end method
