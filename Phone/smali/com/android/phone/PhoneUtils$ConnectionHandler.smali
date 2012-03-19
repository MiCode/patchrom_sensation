.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 312
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 313
    .local v3, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v7, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/CallManager;

    .line 324
    .local v7, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v11, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Call;

    .line 326
    .local v10, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-nez v16, :cond_1

    .line 327
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 330
    .end local v10           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 331
    .local v8, cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_3

    .line 332
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 339
    .end local v8           #cn:Lcom/android/internal/telephony/Connection;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v5, bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 341
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-nez v16, :cond_5

    .line 342
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 345
    .end local v4           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 346
    .restart local v8       #cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_7

    .line 347
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 355
    .end local v8           #cn:Lcom/android/internal/telephony/Connection;
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 356
    .local v9, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 357
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 358
    .restart local v8       #cn:Lcom/android/internal/telephony/Connection;
    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 360
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 370
    .end local v8           #cn:Lcom/android/internal/telephony/Connection;
    :cond_a
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 371
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 373
    :cond_b
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    if-eqz v16, :cond_c

    .line 374
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    const/16 v17, 0x0

    #calls: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/phone/PhoneUtils;->access$100(Lcom/android/internal/telephony/Phone;Z)V

    .line 377
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$200()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 380
    const/16 v16, -0x3

    new-instance v17, Landroid/os/AsyncResult;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 388
    .end local v5           #bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #cm:Lcom/android/internal/telephony/CallManager;
    .end local v9           #cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v11           #fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    :pswitch_1
    iget-object v6, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Phone;

    .line 389
    .local v6, callPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$200()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 392
    const/16 v16, -0x3

    new-instance v17, Landroid/os/AsyncResult;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v6, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 396
    .end local v6           #callPhone:Lcom/android/internal/telephony/Phone;
    :pswitch_2
    iget-object v15, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/Phone;

    .line 397
    .local v15, otaPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$200()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 400
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 401
    .local v14, otaContext:Landroid/content/Context;
    new-instance v13, Landroid/content/Intent;

    const-string v16, "android.intent.action.CALL_EMERGENCY"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v13, intent:Landroid/content/Intent;
    const-string v16, "android.intent.extra.PHONE_NUMBER"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$200()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 404
    const-class v16, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 405
    const/high16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->access$302(Landroid/net/Uri;)Landroid/net/Uri;

    .line 408
    invoke-virtual {v14, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
