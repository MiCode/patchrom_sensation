.class public Lcom/android/phone/sip/SipSettings;
.super Landroid/preference/PreferenceActivity;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipSettings$SipPreference;
    }
.end annotation


# static fields
.field private static final BUTTON_SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls_key"

.field static final KEY_SIP_PROFILE:Ljava/lang/String; = "sip_profile"

.field private static final PREF_SIP_LIST:Ljava/lang/String; = "sip_account_list"

.field private static final REQUEST_ADD_OR_EDIT_SIP_PROFILE:I = 0x1

.field public static final SIP_SHARED_PREFERENCES:Ljava/lang/String; = "SIP_PREFERENCES"

.field private static final TAG:Ljava/lang/String; = "SipSettings"


# instance fields
.field private mButtonAddSipAccount:Landroid/widget/Button;

.field private mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipListContainer:Landroid/preference/PreferenceCategory;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/sip/SipSettings$SipPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 96
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/sip/SipSettings;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/sip/SipSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipSettings;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V

    return-void
.end method

.method private addPreferenceFor(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 382
    const-string v1, "SipSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreferenceFor profile uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/sip/SipSettings$SipPreference;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 384
    .local v0, pref:Lcom/android/phone/sip/SipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    new-instance v1, Lcom/android/phone/sip/SipSettings$6;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$6;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings$SipPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 394
    return-void
.end method

.method private addProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    .line 444
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipSettings"

    const-string v2, "cannot set registration listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lcom/android/phone/sip/SipSettings$10;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSettings$10;-><init>(Lcom/android/phone/sip/SipSettings;)V

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, pkgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 147
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pkgs:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v2

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .locals 4
    .parameter "activeProfile"

    .prologue
    .line 372
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 373
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    .end local v1           #p:Landroid/net/sip/SipProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, profileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_0
    return-object v0
.end method

.method private handleProfileClick(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    .line 398
    .local v0, uid:I
    iget v1, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 399
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    .line 414
    :goto_0
    return-void

    .line 402
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e042c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e042e

    new-instance v3, Lcom/android/phone/sip/SipSettings$7;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/sip/SipSettings$7;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 8
    .parameter "enabled"

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v5, p1}, Lcom/android/phone/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 271
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    .line 272
    .local v3, sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 273
    .local v2, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, sipUri:Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/phone/sip/SipSettings;->updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 276
    if-eqz p1, :cond_1

    .line 277
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SipSettings"

    const-string v6, "register failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/net/sip/SipProfile;
    .end local v3           #sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .end local v4           #sipUri:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 280
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #p:Landroid/net/sip/SipProfile;
    .restart local v3       #sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .restart local v4       #sipUri:Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5, v4}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    .line 281
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v5, v4}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5, v2}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 290
    .end local v2           #p:Landroid/net/sip/SipProfile;
    .end local v4           #sipUri:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    monitor-exit p0

    return-void
.end method

.method private processActiveProfilesFromSipService()V
    .locals 7

    .prologue
    .line 360
    iget-object v6, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v6}, Landroid/net/sip/SipManager;->getListOfProfiles()[Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 361
    .local v0, activeList:[Landroid/net/sip/SipProfile;
    move-object v2, v0

    .local v2, arr$:[Landroid/net/sip/SipProfile;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 362
    .local v1, activeProfile:Landroid/net/sip/SipProfile;
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipSettings;->getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v5

    .line 363
    .local v5, profile:Landroid/net/sip/SipProfile;
    if-nez v5, :cond_0

    .line 364
    iget-object v6, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    goto :goto_1

    .line 369
    .end local v1           #activeProfile:Landroid/net/sip/SipProfile;
    .end local v5           #profile:Landroid/net/sip/SipProfile;
    :cond_1
    return-void
.end method

.method private registerForAddSipListener()V
    .locals 2

    .prologue
    .line 239
    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/sip/SipSettings$2;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$2;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method private registerForReceiveCallsCheckBox()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "sip_receive_calls_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    .line 252
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/phone/sip/SipSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$3;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 267
    return-void
.end method

.method private retrieveSipLists()V
    .locals 6

    .prologue
    .line 328
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    .line 329
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    .line 330
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->processActiveProfilesFromSipService()V

    .line 331
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    new-instance v4, Lcom/android/phone/sip/SipSettings$5;

    invoke-direct {v4, p0}, Lcom/android/phone/sip/SipSettings$5;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 341
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 342
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 343
    .local v2, p:Landroid/net/sip/SipProfile;
    invoke-direct {p0, v2}, Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 346
    .end local v2           #p:Landroid/net/sip/SipProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 357
    :cond_1
    return-void

    .line 347
    :cond_2
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 348
    .restart local v2       #p:Landroid/net/sip/SipProfile;
    iget v3, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/net/sip/SipException;
    const-string v3, "SipSettings"

    const-string v4, "cannot set registration listener"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "profileUri"
    .parameter "message"

    .prologue
    .line 455
    new-instance v0, Lcom/android/phone/sip/SipSettings$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/sip/SipSettings$9;-><init>(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method private startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sip_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/sip/SipSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 451
    return-void
.end method

.method private unregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 418
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/sip/SipSettings$8;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const-string v2, "unregisterProfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 427
    return-void
.end method

.method private updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    .locals 4
    .parameter "p"
    .parameter "enabled"

    .prologue
    .line 295
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    invoke-virtual {v2, p2}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 299
    .local v1, newProfile:Landroid/net/sip/SipProfile;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 300
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, v1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SipSettings"

    const-string v3, "updateAutoRegistrationFlag error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateProfilesStatus()V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipSettings$4;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$4;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    return-void
.end method


# virtual methods
.method deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    .line 432
    .local v0, pref:Lcom/android/phone/sip/SipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 217
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipSettings$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/phone/sip/SipSettings$1;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSettings$1;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    .line 161
    new-instance v3, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v3, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 162
    new-instance v3, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v3, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    const v3, 0x7f030054

    invoke-virtual {p0, v3}, Lcom/android/phone/sip/SipSettings;->setContentView(I)V

    .line 166
    const v3, 0x7f050026

    invoke-virtual {p0, v3}, Lcom/android/phone/sip/SipSettings;->addPreferencesFromResource(I)V

    .line 167
    const-string v3, "sip_account_list"

    invoke-virtual {p0, v3}, Lcom/android/phone/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    .line 168
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->registerForAddSipListener()V

    .line 169
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->registerForReceiveCallsCheckBox()V

    .line 170
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 172
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 180
    new-instance v1, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 182
    .local v2, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 185
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 189
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/phone/sip/SipSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    .local v0, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 193
    .end local v0           #preferLayout:Landroid/view/ViewGroup;
    .end local v1           #titlebar:Lcom/htc/widget/HeaderBarMiddle;
    .end local v2           #titlebartext:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 517
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 518
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 519
    const/4 v1, 0x1

    .line 521
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
