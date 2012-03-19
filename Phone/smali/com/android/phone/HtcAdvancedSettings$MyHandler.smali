.class Lcom/android/phone/HtcAdvancedSettings$MyHandler;
.super Landroid/os/Handler;
.source "HtcAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private lengthOfCmdHeader:I

.field private lengthOfManufacturerCode:I

.field final synthetic this$0:Lcom/android/phone/HtcAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/HtcAdvancedSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->lengthOfCmdHeader:I

    .line 78
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->lengthOfManufacturerCode:I

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 83
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "EVENT_UPDATE_ENABLE_BUTTON !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 89
    iget-object v9, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v9, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "EVENT_GET_SPC_CODE !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 102
    .local v2, command:Ljava/lang/String;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_1

    .line 103
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1
    const-string v8, ""

    .line 110
    .local v8, result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 113
    const/16 v9, 0xa

    const/16 v10, 0xc

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, length:Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 115
    .local v5, len:I
    const/16 v9, 0xc

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .end local v5           #len:I
    .end local v6           #length:Ljava/lang/String;
    :goto_2
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, key:Ljava/lang/String;
    monitor-enter v4

    .line 129
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_3
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 105
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_1
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 122
    .restart local v8       #result:Ljava/lang/String;
    :cond_2
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO error to get active index"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 130
    .restart local v4       #key:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 131
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 138
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :pswitch_2
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "EVENT_SET_MANUAL_NAI ID!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 141
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 142
    .restart local v2       #command:Ljava/lang/String;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_3

    .line 143
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_4
    const-string v8, ""

    .line 150
    .restart local v8       #result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    .line 153
    const/16 v9, 0xa

    const/16 v10, 0xc

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 154
    .restart local v6       #length:Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 155
    .restart local v5       #len:I
    const/16 v9, 0xc

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 164
    .end local v5           #len:I
    .end local v6           #length:Ljava/lang/String;
    :goto_5
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 165
    .restart local v4       #key:Ljava/lang/String;
    monitor-enter v4

    .line 167
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 171
    :goto_6
    :try_start_4
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 145
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_3
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 161
    .restart local v8       #result:Ljava/lang/String;
    :cond_4
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO error to get active index"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 168
    .restart local v4       #key:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 169
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 176
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :pswitch_3
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "EVENT_SET_MANUAL_NAI PWD!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 179
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 180
    .restart local v2       #command:Ljava/lang/String;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_5

    .line 181
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_7
    const-string v8, ""

    .line 188
    .restart local v8       #result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    .line 191
    const/16 v9, 0xa

    const/16 v10, 0xc

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 192
    .restart local v6       #length:Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 193
    .restart local v5       #len:I
    const/16 v9, 0xc

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    .end local v5           #len:I
    .end local v6           #length:Ljava/lang/String;
    :goto_8
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 203
    .restart local v4       #key:Ljava/lang/String;
    monitor-enter v4

    .line 205
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 209
    :goto_9
    :try_start_7
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v9

    .line 183
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_5
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 199
    .restart local v8       #result:Ljava/lang/String;
    :cond_6
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO error to get active index"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 206
    .restart local v4       #key:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 207
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    .line 216
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :pswitch_4
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "EVENT_SET_ACTIVE_NAI_INDEX !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 219
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 220
    .restart local v2       #command:Ljava/lang/String;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_8

    .line 221
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_a
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    .line 228
    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 230
    .restart local v8       #result:Ljava/lang/String;
    const-string v9, "HtcAdvancedSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO active("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Lcom/android/phone/HtcAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 244
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 246
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO user re-activate the manual nai -> re-establish data connection !"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 249
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 257
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v8           #result:Ljava/lang/String;
    :cond_7
    :goto_b
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 258
    .restart local v4       #key:Ljava/lang/String;
    monitor-enter v4

    .line 260
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 264
    :goto_c
    :try_start_a
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v9

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v9

    .line 223
    .end local v4           #key:Ljava/lang/String;
    :cond_8
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 254
    :cond_9
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO error to get active index"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 261
    .restart local v4       #key:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 262
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_c

    .line 271
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/String;
    :pswitch_5
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "EVENT_GET_ACTIVE_NAI_INDEX !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 274
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 275
    .restart local v2       #command:Ljava/lang/String;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_a

    .line 276
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_d
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_c

    .line 283
    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 285
    .restart local v8       #result:Ljava/lang/String;
    const-string v9, "HtcAdvancedSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO active("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 288
    .local v7, m:Landroid/os/Message;
    const/16 v9, 0x3ee

    iput v9, v7, Landroid/os/Message;->what:I

    .line 289
    const-string v9, "01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 290
    const/4 v9, 0x1

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 291
    iget-object v9, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 297
    :goto_e
    invoke-virtual {p0, v7}, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    .end local v7           #m:Landroid/os/Message;
    .end local v8           #result:Ljava/lang/String;
    :goto_f
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 305
    .restart local v4       #key:Ljava/lang/String;
    monitor-enter v4

    .line 307
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 311
    :goto_10
    :try_start_d
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v9

    .line 278
    .end local v4           #key:Ljava/lang/String;
    :cond_a
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 293
    .restart local v7       #m:Landroid/os/Message;
    .restart local v8       #result:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 294
    iget-object v9, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_e

    .line 300
    .end local v7           #m:Landroid/os/Message;
    .end local v8           #result:Ljava/lang/String;
    :cond_c
    const-string v9, "HtcAdvancedSettings"

    const-string v10, "OoO error to get active index"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v9, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v9}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_f

    .line 308
    .restart local v4       #key:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 309
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_10

    .line 83
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
