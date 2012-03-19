.class public Lcom/android/internal/telephony/PhoneController;
.super Ljava/lang/Object;
.source "PhoneController.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "GSM"

    sput-object v0, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPhoneInstance(ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/Phone;
    .locals 10
    .parameter "phoneType"
    .parameter "context"
    .parameter "sCommandsInterface"
    .parameter "sPhoneNotifier"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    .local v4, sProxyPhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 39
    .local v1, className:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneController;->isTmoWifiIms()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne p0, v7, :cond_0

    .line 40
    sget-object v6, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    const-string v7, "Creating IPPhone"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 42
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "com.movial.ipphone.IPPhoneProxy"

    .line 43
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/android/internal/telephony/Phone;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Lcom/android/internal/telephony/PhoneNotifier;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    const/4 v8, 0x3

    aput-object p3, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    .line 73
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v4

    .line 47
    :cond_0
    if-ne p0, v7, :cond_1

    .line 48
    sget-object v6, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    const-string v7, "Creating GSMPhone"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    .end local v4           #sProxyPhone:Lcom/android/internal/telephony/Phone;
    .local v5, sProxyPhone:Lcom/android/internal/telephony/Phone;
    move-object v4, v5

    .end local v5           #sProxyPhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #sProxyPhone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 51
    :cond_1
    if-ne p0, v8, :cond_2

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 60
    sget-object v6, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    const-string v7, "Creating CDMAPhone"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    .end local v4           #sProxyPhone:Lcom/android/internal/telephony/Phone;
    .restart local v5       #sProxyPhone:Lcom/android/internal/telephony/Phone;
    move-object v4, v5

    .line 63
    .end local v5           #sProxyPhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #sProxyPhone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 54
    :pswitch_0
    sget-object v6, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    const-string v7, "Creating CDMALTEPhone"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v6, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    .end local v4           #sProxyPhone:Lcom/android/internal/telephony/Phone;
    .restart local v5       #sProxyPhone:Lcom/android/internal/telephony/Phone;
    move-object v4, v5

    .line 57
    .end local v5           #sProxyPhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #sProxyPhone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 67
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown phoneType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XXX"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 3
    .parameter "basePhone"

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.movial.ipphone.IPPhoneProxy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p0

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 97
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isTmoWifiIms()Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    return v0
.end method

.method public static registerImsCall(Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "basePhone"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, mRingingCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    .local p2, mBackgroundCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    .local p3, mForegroundCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.movial.ipphone.IPPhoneProxy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerImsCall"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "com.movial.ipphone.IPPhoneProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getImsRingingCall"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "com.movial.ipphone.IPPhoneProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getImsBackgroundCall"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "com.movial.ipphone.IPPhoneProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getImsForegroundCall"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerImsCall] fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/telephony/PhoneController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
