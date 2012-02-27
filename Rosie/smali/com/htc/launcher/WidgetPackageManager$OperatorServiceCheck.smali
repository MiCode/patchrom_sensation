.class public Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
.super Ljava/lang/Object;
.source "WidgetPackageManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/WidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OperatorServiceCheck"
.end annotation


# static fields
.field static mForceRun:Z

.field static mProfileResponse:Lcom/htc/clientprofileservice/IClientProfileCallback;

.field static mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

.field public static mServiceSubscribe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1208
    const/4 v0, -0x1

    sput v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    .line 1209
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mForceRun:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "forceRun"

    .prologue
    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    sput-boolean p1, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mForceRun:Z

    .line 1135
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "boundService"

    .prologue
    .line 1138
    const/4 v3, -0x1

    sget v4, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-eq v3, v4, :cond_1

    sget-boolean v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mForceRun:Z

    if-nez v3, :cond_1

    .line 1139
    const-string v3, "Widget"

    const-string v4, "service connect request return for state got before"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-static {p2}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v3

    sput-object v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    .line 1145
    :try_start_0
    sget-object v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v3, :cond_2

    .line 1146
    const-string v3, "Widget"

    const-string v4, "service connect succeed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_2
    sget-object v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    new-instance v4, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck$1;

    invoke-direct {v4, p0}, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck$1;-><init>(Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;)V

    invoke-interface {v3, v4}, Lcom/htc/clientprofileservice/IClientProfileService;->registerCallback(Lcom/htc/clientprofileservice/IClientProfileCallback;)V

    .line 1180
    sget-object v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v3, :cond_0

    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, count:I
    const/4 v2, 0x0

    .line 1183
    .local v2, isPass:Z
    :goto_1
    sget-object v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    invoke-interface {v3}, Lcom/htc/clientprofileservice/IClientProfileService;->isProfileDataCached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    const/4 v3, 0x6

    if-ge v0, v3, :cond_3

    .line 1185
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1189
    :goto_2
    :try_start_2
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProfileDataCached waiting answer with count :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    :cond_3
    if-eqz v2, :cond_0

    sget-object v3, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyPhonebook(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1194
    .end local v0           #count:I
    .end local v2           #isPass:Z
    :catch_0
    move-exception v1

    .line 1196
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ask TMI service state got exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #count:I
    .restart local v2       #isPass:Z
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1203
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mProfileService:Lcom/htc/clientprofileservice/IClientProfileService;

    .line 1204
    return-void
.end method
