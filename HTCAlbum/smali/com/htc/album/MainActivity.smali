.class public Lcom/htc/album/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final ALBUM_ID_RECENT_UPLOAD:Ljava/lang/String; = "com.htc.album.recent_photos"

.field private static final LOG_TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 28
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: Begin"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "live_album"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    .local v0, bIsLiveAlbum:Z
    if-ne v13, v0, :cond_3

    .line 39
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: Live Album List: "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v9, "service_name"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, szService:Ljava/lang/String;
    const-string v9, "user_id"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, szUserId:Ljava/lang/String;
    const-string v9, "user_name"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, szUserName:Ljava/lang/String;
    const-string v9, "user_buddyicon"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, szUserIcon:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v8, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v9, "MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v9, "MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: user Id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-nez v4, :cond_0

    .line 52
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: no service... "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v4           #szService:Ljava/lang/String;
    .end local v5           #szUserIcon:Ljava/lang/String;
    .end local v6           #szUserId:Ljava/lang/String;
    .end local v7           #szUserName:Ljava/lang/String;
    .end local v8           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 55
    .restart local v4       #szService:Ljava/lang/String;
    .restart local v5       #szUserIcon:Ljava/lang/String;
    .restart local v6       #szUserId:Ljava/lang/String;
    .restart local v7       #szUserName:Ljava/lang/String;
    .restart local v8       #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 57
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    :goto_1
    const-string v9, "service_name"

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v9, "user_name"

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v9, "user_buddyicon"

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v9, "from_outside"

    invoke-virtual {v1, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v9, "flag_genuine"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v9, "from_tabhost"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v9, "recent_list"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v9, "online_scene"

    const-string v10, "SceneOnlineFolder"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v9, "listviewPos"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v9, "fromMainActivity"

    invoke-virtual {v1, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    .end local v4           #szService:Ljava/lang/String;
    .end local v5           #szUserIcon:Ljava/lang/String;
    .end local v6           #szUserId:Ljava/lang/String;
    .end local v7           #szUserName:Ljava/lang/String;
    .end local v8           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    const/high16 v9, 0x400

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Lcom/htc/album/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->finish()V

    .line 133
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: End"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .restart local v4       #szService:Ljava/lang/String;
    .restart local v5       #szUserIcon:Ljava/lang/String;
    .restart local v6       #szUserId:Ljava/lang/String;
    .restart local v7       #szUserName:Ljava/lang/String;
    .restart local v8       #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v9, v9, v13

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 61
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v9, v9, v13

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 65
    :cond_2
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: not supported... "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v4           #szService:Ljava/lang/String;
    .end local v5           #szUserIcon:Ljava/lang/String;
    .end local v6           #szUserId:Ljava/lang/String;
    .end local v7           #szUserName:Ljava/lang/String;
    .end local v8           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v9, "itemId"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 87
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: Live Photo List: "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v9, "servicetype"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .restart local v4       #szService:Ljava/lang/String;
    const-string v9, "itemId"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .restart local v6       #szUserId:Ljava/lang/String;
    const-string v9, "albumId"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, szAlbumId:Ljava/lang/String;
    const-string v9, "mediumId"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, szMediumId:Ljava/lang/String;
    const-string v9, "MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v9, "MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Album Id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v9, "MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Medium Id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v9, "service_name"

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v9, "user_id"

    invoke-virtual {v1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v9, "com.htc.album.recent_photos"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 102
    const-string v9, "album_name"

    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x20c01d9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 103
    const-string v9, "album_id"

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :goto_3
    const-string v9, "photo_id"

    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v9, "from_outside"

    invoke-virtual {v1, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v9, "flag_genuine"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 119
    :cond_4
    const-string v9, "online_scene"

    const-string v10, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :goto_4
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 107
    :cond_5
    const-string v9, "album_name"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v9, "album_id"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 121
    :cond_6
    const-string v9, "online_scene"

    const-string v10, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 126
    .end local v2           #szAlbumId:Ljava/lang/String;
    .end local v3           #szMediumId:Ljava/lang/String;
    .end local v4           #szService:Ljava/lang/String;
    .end local v6           #szUserId:Ljava/lang/String;
    :cond_7
    const-string v9, "MainActivity"

    const-string v10, "[HTCAlbum][MainActivity][onCreate]: Local: "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "MainActivity"

    const-string v1, "[HTCAlbum][MainActivity][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    const-string v0, "MainActivity"

    const-string v1, "[HTCAlbum][MainActivity][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
