.class public Landroid/provider/HtcUnionContact;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcUnionContact$SocialNetworkColumns;,
        Landroid/provider/HtcUnionContact$SpeedDial;,
        Landroid/provider/HtcUnionContact$SimpleContactInfo;,
        Landroid/provider/HtcUnionContact$HtcArrayAdapter;,
        Landroid/provider/HtcUnionContact$ContactUtils;,
        Landroid/provider/HtcUnionContact$Group;,
        Landroid/provider/HtcUnionContact$Thumbnails;,
        Landroid/provider/HtcUnionContact$ContactMethodInfo;,
        Landroid/provider/HtcUnionContact$PhoneInfo;,
        Landroid/provider/HtcUnionContact$PeopleInfo;,
        Landroid/provider/HtcUnionContact$MyContactCard;,
        Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;,
        Landroid/provider/HtcUnionContact$SimContacts;,
        Landroid/provider/HtcUnionContact$AllContacts;,
        Landroid/provider/HtcUnionContact$SmartDialing;,
        Landroid/provider/HtcUnionContact$Intents;,
        Landroid/provider/HtcUnionContact$Config;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final CALL_LOG_BASE:I = 0x1e

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SIM_TYPE_BASE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "HtcUnionContact"

.field public static final UnreadEmailCountProjection:[Ljava/lang/String;

.field public static final UnreadMessageCountProjection:[Ljava/lang/String;

.field public static final idProjection:[Ljava/lang/String;

.field private static openLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    const-string v0, "content://contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact;->CONTENT_URI:Landroid/net/Uri;

    .line 87
    sput-boolean v2, Landroid/provider/HtcUnionContact;->openLog:Z

    .line 88
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact;->idProjection:[Ljava/lang/String;

    .line 89
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact;->UnreadEmailCountProjection:[Ljava/lang/String;

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "pureNumber"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact;->UnreadMessageCountProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsSIMContactUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, uri_str:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 566
    :cond_0
    new-instance v3, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;

    invoke-direct {v3}, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;-><init>()V

    throw v3

    .line 569
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, result:Z
    const-string v3, "content://contacts/sim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/provider/HtcUnionContact$SimContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 573
    :cond_2
    const/4 v0, 0x1

    .line 582
    :cond_3
    :goto_0
    return v0

    .line 575
    :cond_4
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 576
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_5
    const-string v3, "content://contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    new-instance v3, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknow uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Landroid/provider/HtcUnionContact;->openLog:Z

    return v0
.end method

.method public static batchUpdateStarredContact(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 899
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 901
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "_id   =  %d  "

    .line 902
    .local v8, selectionFormat:Ljava/lang/String;
    const/4 v7, 0x0

    .line 903
    .local v7, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 904
    .local v5, operation:Landroid/content/ContentProviderOperation;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, batchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 907
    .local v4, id:I
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 908
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 909
    const-string/jumbo v9, "starred"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 910
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 911
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 912
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 916
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:I
    :cond_0
    if-eqz p2, :cond_1

    .line 917
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 918
    .restart local v4       #id:I
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 919
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 920
    const-string/jumbo v9, "starred"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 921
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 922
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 923
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 927
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:I
    :cond_1
    const/4 v6, 0x0

    .line 929
    .local v6, result:[Landroid/content/ContentProviderResult;
    :try_start_0
    const-string v9, "com.android.contacts"

    invoke-virtual {p0, v9, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 936
    :goto_2
    return-object v6

    .line 930
    :catch_0
    move-exception v2

    .line 931
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "HtcUnionContact"

    const-string v10, "batchUpdateStarredContact"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 932
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 933
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v9, "HtcUnionContact"

    const-string v10, "batchUpdateStarredContact"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "mailAddress"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 865
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "contact_id"

    aput-object v0, v2, v5

    .line 869
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimetype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  LIKE  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 876
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 877
    .local v6, contactId:J
    const/4 v10, 0x0

    .line 878
    .local v10, uri:Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 880
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 882
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 883
    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 889
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 893
    :cond_1
    return-object v10

    .line 885
    :catch_0
    move-exception v9

    .line 886
    .local v9, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_0

    .line 889
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final getDisplayExchangeMailLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 764
    if-nez p1, :cond_0

    .line 783
    .end local p2
    :goto_0
    return-object p2

    .line 766
    .restart local p2
    :cond_0
    move v7, p1

    .line 767
    .local v7, type_value:I
    const/4 v1, 0x0

    .line 768
    .local v1, labelArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 769
    .local v2, labelChars:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 771
    .local v6, result:Ljava/lang/String;
    :try_start_0
    const-string v5, "exchange_mailTypes"

    .line 773
    .local v5, resourceName:Ljava/lang/String;
    rem-int/lit16 v7, v7, 0x3e8

    .line 775
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.htc"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 776
    .local v3, r:Landroid/content/res/Resources;
    const-string v8, "array"

    const-string v9, "com.htc"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 777
    .local v4, resid:I
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 778
    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    .line 779
    .local v0, index:I
    :goto_1
    aget-object v6, v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #index:I
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :goto_2
    move-object p2, v6

    .line 783
    goto :goto_0

    .line 778
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #resid:I
    .restart local v5       #resourceName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 781
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static final getDisplayHtcPhoneLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 693
    move v7, p1

    .line 694
    .local v7, type_value:I
    const/4 v1, 0x0

    .line 695
    .local v1, labelArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 696
    .local v2, labelChars:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 700
    .local v6, result:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 715
    .end local p2
    :goto_0
    return-object p2

    .line 705
    .restart local p2
    :cond_0
    :try_start_0
    rem-int/lit16 v7, v7, 0x3e8

    .line 707
    const-string/jumbo v5, "htc_phoneTypes"

    .line 708
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.htc"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 709
    .local v3, r:Landroid/content/res/Resources;
    const-string v8, "array"

    const-string v9, "com.htc"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 710
    .local v4, resid:I
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 711
    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    .line 712
    .local v0, index:I
    :goto_1
    aget-object v6, v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #index:I
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :goto_2
    move-object p2, v6

    .line 715
    goto :goto_0

    .line 711
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #resid:I
    .restart local v5       #resourceName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 713
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static final getDisplayMailLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "mailId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 816
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 817
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 819
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 820
    .local v10, result:Ljava/lang/CharSequence;
    const-wide/16 v8, 0x0

    .line 821
    .local v8, person:J
    const/4 v11, 0x0

    .line 822
    .local v11, type:I
    const/4 v7, 0x0

    .line 823
    .local v7, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 826
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 827
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 829
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 830
    const/4 v6, 0x0

    .line 832
    :cond_1
    invoke-static {p0, p1, p2, v11, v7}, Landroid/provider/HtcUnionContact;->getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static final getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "mailId"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, extra_group:I
    if-gez p3, :cond_0

    .line 793
    const/4 p3, 0x1

    .line 797
    :cond_0
    const/16 v2, 0x3e8

    if-ge p3, v2, :cond_2

    .line 798
    const/4 v0, 0x0

    .line 803
    :goto_0
    const/4 v1, 0x0

    .line 804
    .local v1, result:Ljava/lang/CharSequence;
    if-eq v0, v3, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 805
    :cond_1
    invoke-static {p0, p3, p4}, Landroid/provider/HtcUnionContact;->getDisplayExchangeMailLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 810
    :goto_1
    return-object v1

    .line 801
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 808
    .restart local v1       #result:Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, v3, p3, p4}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public static final getDisplayPhoneLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 13
    .parameter "context"
    .parameter "phoneId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 721
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 722
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 724
    .local v6, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 725
    .local v11, result:Ljava/lang/CharSequence;
    const-wide/16 v9, 0x0

    .line 726
    .local v9, person:J
    const/4 v12, 0x0

    .line 727
    .local v12, type:I
    const/4 v8, 0x0

    .line 728
    .local v8, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 729
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    .line 731
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 732
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 734
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 735
    const/4 v6, 0x0

    .line 737
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_2

    .line 738
    const/4 v2, 0x0

    .line 756
    :goto_0
    return-object v2

    .line 740
    :cond_2
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 741
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "extra_group"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 742
    const/4 v7, 0x0

    .line 743
    .local v7, extra_group:I
    if-eqz v6, :cond_4

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 745
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 747
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_4
    const/4 v2, 0x1

    if-eq v7, v2, :cond_5

    const/4 v2, 0x2

    if-ne v7, v2, :cond_6

    .line 751
    :cond_5
    invoke-static {p0, v12, v8}, Landroid/provider/HtcUnionContact;->getDisplayHtcPhoneLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_1
    move-object v2, v11

    .line 756
    goto :goto_0

    .line 754
    :cond_6
    invoke-static {p0, v12, v8}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1
.end method

.method public static getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bmSrc"
    .parameter "nSize"
    .parameter "bmFacebookIcon"

    .prologue
    .line 104
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 107
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 111
    .local v8, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 112
    .local v7, nSrcH:I
    if-ne v8, v7, :cond_2

    .line 113
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 132
    .local v4, nFW:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 133
    .local v3, nFH:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    sub-int v12, p1, v3

    invoke-direct {v10, v11, v12, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 116
    .end local v3           #nFH:I
    .end local v4           #nFW:I
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v0, 0x1

    .line 117
    .local v0, bSrcLandscape:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 119
    sub-int v9, v8, v7

    div-int/lit8 v5, v9, 0x2

    .line 120
    .local v5, nOffset:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v5, v7

    invoke-direct {v9, v5, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 116
    .end local v0           #bSrcLandscape:Z
    .end local v5           #nOffset:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 124
    .restart local v0       #bSrcLandscape:Z
    :cond_4
    sub-int v9, v7, v8

    div-int/lit8 v5, v9, 0x2

    .line 125
    .restart local v5       #nOffset:I
    const-wide v9, 0x3feb333333333333L

    int-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 126
    .local v6, nOffsetFacebook:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v6, v8

    invoke-direct {v9, v10, v6, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getMonthNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "monthText"

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 281
    const-string v1, "JAN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    const-string v1, "FEB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_2
    const-string v1, "MAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    const/4 v0, 0x2

    goto :goto_0

    .line 287
    :cond_3
    const-string v1, "APR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    const/4 v0, 0x3

    goto :goto_0

    .line 289
    :cond_4
    const-string v1, "MAY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    const/4 v0, 0x4

    goto :goto_0

    .line 291
    :cond_5
    const-string v1, "JUN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    const/4 v0, 0x5

    goto :goto_0

    .line 293
    :cond_6
    const-string v1, "JUL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 294
    const/4 v0, 0x6

    goto :goto_0

    .line 295
    :cond_7
    const-string v1, "AUG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    const/4 v0, 0x7

    goto :goto_0

    .line 297
    :cond_8
    const-string v1, "SEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 298
    const/16 v0, 0x8

    goto :goto_0

    .line 299
    :cond_9
    const-string v1, "OCT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 300
    const/16 v0, 0x9

    goto :goto_0

    .line 301
    :cond_a
    const-string v1, "NOV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 302
    const/16 v0, 0xa

    goto :goto_0

    .line 303
    :cond_b
    const-string v1, "DEC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outAddressBuf"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 652
    const/4 v8, 0x0

    .line 653
    .local v8, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 654
    .local v6, address:Ljava/lang/String;
    const/4 v9, 0x0

    .line 655
    .local v9, person:I
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 656
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "person"

    aput-object v0, v2, v10

    const-string v0, "data"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 657
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 659
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 661
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 662
    if-gtz v9, :cond_1

    move v0, v10

    .line 679
    :goto_0
    return v0

    .line 665
    :cond_1
    const/4 v7, 0x0

    .line 666
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 667
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 668
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 671
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 672
    const/4 v7, 0x0

    .line 673
    if-eqz p3, :cond_3

    .line 674
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    :cond_3
    if-eqz p2, :cond_4

    .line 677
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    move v0, v11

    .line 679
    goto :goto_0
.end method

.method public static getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 590
    const/4 v7, 0x0

    .line 591
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 592
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 593
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 594
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 596
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 598
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 600
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 603
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 607
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 610
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_3
    return v10

    .line 603
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPersonNameAndNumberFromSIMPhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 1
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    .line 622
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcUnionContact;->getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v0

    return v0
.end method

.method public static getStarredInAnrdoidGroupContentValues(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 13
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 843
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string/jumbo v3, "name=?"

    .line 845
    .local v3, whereString:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "Starred in Android"

    aput-object v0, v4, v9

    .line 847
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string/jumbo v0, "name"

    aput-object v0, v2, v10

    const-string v0, "_sync_id"

    aput-object v0, v2, v11

    const-string v0, "_sync_account"

    aput-object v0, v2, v12

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 850
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 851
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .local v8, result:Landroid/content/ContentValues;
    const-string v0, "_id"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 854
    const-string/jumbo v0, "name"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "_sync_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v0, "_sync_account"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    .end local v8           #result:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_1
    return-object v7
.end method

.method public static insertFacebookEvent(Landroid/content/ContentResolver;JILjava/lang/String;)Landroid/net/Uri;
    .locals 16
    .parameter "mResolver"
    .parameter "personId"
    .parameter "type"
    .parameter "eventDate"

    .prologue
    .line 142
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 214
    :try_start_0
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v13, "/"

    move-object/from16 v0, p4

    invoke-direct {v8, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v8, st:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 218
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, day:Ljava/lang/String;
    move-object v7, v4

    .local v7, month:Ljava/lang/Object;
    move-object v12, v4

    .line 219
    .local v12, year:Ljava/lang/Object;
    const/4 v13, 0x3

    if-ne v2, v13, :cond_4

    .line 220
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, month:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 241
    .end local v7           #month:Ljava/lang/String;
    .end local v12           #year:Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 242
    .local v6, m:I
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 243
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .line 245
    :cond_1
    const/4 v3, 0x1

    .line 246
    .local v3, d:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 249
    :cond_2
    const/16 v11, 0x7b2

    .line 250
    .local v11, y:I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 251
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 253
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    .local v1, calendar:Ljava/util/Calendar;
    invoke-virtual {v1, v11, v6, v3}, Ljava/util/Calendar;->set(III)V

    .line 255
    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 257
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 258
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 260
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v10, values:Landroid/content/ContentValues;
    const-string/jumbo v13, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v13, "checked"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string/jumbo v13, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    const-string v13, "event_id"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string/jumbo v13, "start_time"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    const-string v13, "end_time"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string/jumbo v13, "source"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    sget-object v13, Landroid/provider/Contacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 269
    .local v9, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 275
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #count:I
    .end local v3           #d:I
    .end local v4           #day:Ljava/lang/String;
    .end local v6           #m:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #y:I
    :goto_1
    return-object v9

    .line 223
    .restart local v2       #count:I
    .restart local v4       #day:Ljava/lang/String;
    .local v7, month:Ljava/lang/Object;
    .restart local v8       #st:Ljava/util/StringTokenizer;
    .restart local v12       #year:Ljava/lang/Object;
    :cond_4
    const/4 v13, 0x2

    if-ne v2, v13, :cond_0

    .line 224
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, month:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 271
    .end local v2           #count:I
    .end local v4           #day:Ljava/lang/String;
    .end local v7           #month:Ljava/lang/String;
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v12           #year:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 272
    .local v5, e:Ljava/lang/Throwable;
    const-string v13, "HtcUnionContact"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed at parsing birthday date "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v5           #e:Ljava/lang/Throwable;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method
