.class Lcom/android/phone/PhoneApp$WorkingHandler;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 5214
    iput-object p1, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    .line 5215
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5216
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x63

    .line 5221
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 5273
    :goto_0
    return-void

    .line 5223
    :sswitch_0
    const-string v8, "PhoneApp"

    const-string v9, "EVENT_QUERY_MO_PACKAGES"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5227
    .local v6, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$5600(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 5232
    .local v4, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 5234
    .local v0, N1:I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- N1 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$5600(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 5241
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 5243
    .local v1, N2:I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- N2 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$5600(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 5250
    .local v7, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 5252
    .local v2, N3:I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- N3 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5254
    add-int v8, v0, v1

    add-int/2addr v8, v2

    if-lez v8, :cond_0

    .line 5255
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/phone/PhoneApp;->mNeedToBroadcast:Z

    goto/16 :goto_0

    .line 5257
    :cond_0
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v12, v8, Lcom/android/phone/PhoneApp;->mNeedToBroadcast:Z

    goto/16 :goto_0

    .line 5263
    .end local v0           #N1:I
    .end local v1           #N2:I
    .end local v2           #N3:I
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :sswitch_1
    const-string v8, "PhoneApp"

    const-string v9, "EVENT_FORCE_SCREEN_ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$5700(Lcom/android/phone/PhoneApp;)Landroid/os/IPowerManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5266
    :catch_0
    move-exception v5

    .line 5267
    .local v5, e:Landroid/os/RemoteException;
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5221
    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_1
        0x323 -> :sswitch_0
    .end sparse-switch
.end method
