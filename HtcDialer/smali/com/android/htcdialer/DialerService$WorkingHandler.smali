.class Lcom/android/htcdialer/DialerService$WorkingHandler;
.super Landroid/os/Handler;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerService;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/DialerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    .line 383
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 384
    return-void
.end method

.method private combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 13
    .parameter "callLogs1"
    .parameter "callLogs2"
    .parameter "contacts"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            "[",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            "[",
            "Lcom/android/htcdialer/search/SearchableContact;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p4, contactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p5, phonesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v7, 0x0

    .line 1018
    .local v7, time:J
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1019
    .local v3, filterId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/htcdialer/DialerService;->access$1202(I)I

    .line 1020
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/htcdialer/DialerService;->access$1502(I)I

    .line 1021
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    array-length v9, p1

    array-length v10, p2

    if-ne v9, v10, :cond_5

    .line 1022
    array-length v6, p1

    .line 1023
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_5

    .line 1024
    aget-object v9, p1, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v9, v0, v1}, Lcom/android/htcdialer/DialerService$WorkingHandler;->isBlackCallLog(Lcom/android/htcdialer/search/SearchableCallLog;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1025
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 1026
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1027
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p1, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1029
    :cond_0
    aget-object v9, p1, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 1031
    sget-boolean v9, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v9, :cond_3

    .line 1032
    aget-object v9, p1, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_1
    :goto_1
    aget-object v9, p2, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v9, v0, v1}, Lcom/android/htcdialer/DialerService$WorkingHandler;->isBlackCallLog(Lcom/android/htcdialer/search/SearchableCallLog;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1049
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1050
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p2, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1023
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1034
    :cond_3
    aget-object v9, p1, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableContact;

    .line 1035
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_1

    iget v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_1

    iget-object v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v9, :cond_1

    .line 1037
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    iget v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v9, :cond_1

    .line 1038
    iget-object v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    aget-object v10, p1, v4

    iget-object v10, v10, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1040
    iget-object v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1037
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1055
    .end local v2           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #length:I
    :cond_5
    if-eqz p3, :cond_13

    .line 1056
    sget-boolean v9, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v9, :cond_b

    .line 1058
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_8

    .line 1059
    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-eqz v9, :cond_7

    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_7

    .line 1060
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 1061
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1062
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1064
    :cond_6
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_7

    aget-object v9, p3, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1066
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1067
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1058
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1072
    :cond_8
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_13

    .line 1073
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_a

    .line 1074
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_9

    .line 1075
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1076
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1078
    :cond_9
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_a

    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-nez v9, :cond_a

    aget-object v9, p3, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1081
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1082
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1072
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1088
    .end local v4           #i:I
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_f

    .line 1089
    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-eqz v9, :cond_e

    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_e

    .line 1090
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_6
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v9, :cond_e

    .line 1091
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 1092
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1093
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1094
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1096
    :cond_c
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_d

    aget-object v9, p3, v4

    iget-object v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1098
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1099
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1100
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1090
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1088
    .end local v5           #j:I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 1106
    :cond_f
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_13

    .line 1107
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_12

    .line 1108
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_8
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v9, :cond_12

    .line 1109
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_10

    .line 1110
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1111
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1112
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1114
    :cond_10
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_11

    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-nez v9, :cond_11

    aget-object v9, p3, v4

    iget-object v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1117
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1118
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1119
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1108
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 1106
    .end local v5           #j:I
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 1130
    .end local v4           #i:I
    :cond_13
    return-void
.end method

.method private getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;
    .locals 6
    .parameter
    .parameter "byCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;Z)[",
            "Lcom/android/htcdialer/search/SearchableCallLog;"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, callLogs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableCallLog;>;"
    const-wide/16 v2, 0x0

    .line 958
    .local v2, time:J
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 959
    .local v1, size:I
    if-nez v1, :cond_0

    .line 960
    const/4 v0, 0x0

    .line 970
    :goto_0
    return-object v0

    .line 962
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v1, [Lcom/android/htcdialer/search/SearchableCallLog;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableCallLog;

    .line 963
    .local v0, array:[Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2900()Ljava/util/Comparator;

    move-result-object v4

    :goto_1
    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3000()Ljava/util/Comparator;

    move-result-object v4

    goto :goto_1
.end method

.method private getSortedContacts(Ljava/util/HashMap;)[Lcom/android/htcdialer/search/SearchableContact;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;)[",
            "Lcom/android/htcdialer/search/SearchableContact;"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    const-wide/16 v2, 0x0

    .line 976
    .local v2, time:J
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 977
    .local v1, size:I
    if-nez v1, :cond_0

    .line 978
    const/4 v0, 0x0

    .line 988
    :goto_0
    return-object v0

    .line 981
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v1, [Lcom/android/htcdialer/search/SearchableContact;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableContact;

    .line 982
    .local v0, array:[Lcom/android/htcdialer/search/SearchableContact;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3100()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private getUpdateIdString([[J)Ljava/lang/String;
    .locals 9
    .parameter "updateInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 575
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v3

    .line 579
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 580
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 581
    const-wide/16 v4, 0x1

    aget-object v6, p1, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    aget-object v4, p1, v0

    aget-wide v4, v4, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 582
    aget-object v4, p1, v0

    aget-wide v4, v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 583
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 587
    .local v1, length:I
    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getUpdateInfo()[[J
    .locals 10

    .prologue
    .line 558
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v5

    monitor-enter v5

    .line 559
    const/16 v4, 0x64

    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 560
    .local v2, numUpdate:I
    if-nez v2, :cond_0

    .line 561
    const/4 v4, 0x0

    check-cast v4, [[J

    monitor-exit v5

    .line 570
    :goto_0
    return-object v4

    .line 564
    :cond_0
    const/4 v4, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    .line 565
    .local v3, updateInfo:[[J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Long;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 566
    .local v1, keys:[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    if-ge v0, v2, :cond_1

    .line 567
    aget-object v4, v3, v0

    const/4 v6, 0x0

    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 568
    aget-object v6, v3, v0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v4

    aget-object v8, v1, v0

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    aput-wide v8, v6, v7

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    :cond_1
    monitor-exit v5

    move-object v4, v3

    goto :goto_0

    .line 571
    .end local v0           #i:I
    .end local v1           #keys:[Ljava/lang/Long;
    .end local v2           #numUpdate:I
    .end local v3           #updateInfo:[[J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private initDialerCache()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 910
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x1388

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadContacts(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 914
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #calls: Lcom/android/htcdialer/DialerService;->loadBlackNumber(Ljava/util/HashMap;)Ljava/util/HashMap;
    invoke-static {v0, v3}, Lcom/android/htcdialer/DialerService;->access$2000(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 915
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadPhones(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1802(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 919
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadEmails(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x1f4

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 924
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 925
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    new-instance v3, Lcom/android/htcdialer/search/SearchableObject;

    invoke-direct {v3}, Lcom/android/htcdialer/search/SearchableObject;-><init>()V

    aput-object v3, v0, v6

    .line 926
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    new-instance v3, Lcom/android/htcdialer/search/SearchableObject;

    invoke-direct {v3}, Lcom/android/htcdialer/search/SearchableObject;-><init>()V

    aput-object v3, v0, v6

    .line 924
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 930
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v1

    .line 931
    .local v1, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 932
    .local v2, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedContacts(Ljava/util/HashMap;)[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$902([Lcom/android/htcdialer/search/SearchableContact;)[Lcom/android/htcdialer/search/SearchableContact;

    .line 933
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 936
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 937
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 938
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$2102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 939
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 940
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    .line 941
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 942
    const/4 v6, 0x0

    :goto_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 943
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 945
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 946
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v0

    sput v0, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 947
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    sput-boolean v7, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 951
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    .line 952
    return-void

    .line 947
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertCallLog(Lcom/android/htcdialer/search/SearchableCallLog;)V
    .locals 16
    .parameter "searchableCallLog"

    .prologue
    .line 455
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    .line 457
    sget-object v1, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 458
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 462
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 463
    .local v10, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableCallLog;>;"
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-gtz v1, :cond_8

    .line 464
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 466
    .local v13, scl:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz p1, :cond_0

    if-eqz v13, :cond_0

    .line 467
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-lez v1, :cond_3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    iget-wide v14, v13, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    cmp-long v1, v4, v14

    if-nez v1, :cond_3

    .line 469
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    add-int/2addr v1, v4

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    .line 470
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 486
    .end local v13           #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_1
    :goto_1
    const-wide/16 v7, 0x0

    .line 487
    .local v7, fakeId:J
    :goto_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-wide v4, 0x7fffffffffffd8efL

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    const-wide/16 v4, 0x2710

    cmp-long v1, v7, v4

    if-nez v1, :cond_4

    .line 489
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 460
    .end local v7           #fakeId:J
    .end local v10           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableCallLog;>;"
    :cond_2
    sget-object v1, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 472
    .restart local v10       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableCallLog;>;"
    .restart local v13       #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-gtz v1, :cond_0

    iget-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-gtz v1, :cond_0

    .line 473
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 474
    .local v11, key1:Ljava/lang/String;
    iget-object v1, v13, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 475
    .local v12, key2:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    add-int/2addr v1, v4

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    .line 478
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 491
    .end local v11           #key1:Ljava/lang/String;
    .end local v12           #key2:Ljava/lang/String;
    .end local v13           #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    .restart local v7       #fakeId:J
    :cond_4
    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    goto :goto_2

    .line 494
    :cond_5
    const-wide v4, 0x7fffffffffffd8efL

    add-long/2addr v4, v7

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 495
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-wide v4, 0x7fffffffffffd8efL

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 499
    .local v2, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v3

    .line 500
    .local v3, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v4

    sget-object v5, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 504
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 505
    sget-object v1, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 506
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v1

    if-ge v9, v1, :cond_6

    .line 507
    sget-object v1, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 509
    :cond_6
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v1

    sput-object v1, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 510
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v1

    sput v1, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 511
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    .line 531
    .end local v2           #callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v3           #callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v9           #i:I
    :cond_7
    :goto_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    .line 532
    return-void

    .line 511
    .restart local v2       #callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    .restart local v3       #callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 515
    .end local v2           #callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v3           #callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v7           #fakeId:J
    :cond_8
    const-wide/16 v7, 0x0

    .line 516
    .restart local v7       #fakeId:J
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 517
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 518
    .restart local v13       #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    iget-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    const-wide v14, 0x7fffffffffffd8efL

    cmp-long v1, v4, v14

    if-ltz v1, :cond_9

    iget-object v1, v13, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 519
    iget-wide v7, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 524
    .end local v13           #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v1, v7, v4

    if-lez v1, :cond_7

    .line 525
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 526
    .restart local v13       #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    iput-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 527
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private isBlackCallLog(Lcom/android/htcdialer/search/SearchableCallLog;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 9
    .parameter "callLog"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)Z"
        }
    .end annotation

    .prologue
    .local p2, contactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p3, phonesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 993
    iget-wide v5, p1, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 994
    if-nez p2, :cond_0

    move-object v1, v0

    .line 996
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_0
    if-eqz v1, :cond_5

    iget v3, v1, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    if-lez v3, :cond_5

    move v3, v4

    .line 1010
    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_1
    return v3

    .line 994
    :cond_0
    iget-wide v5, p1, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableContact;

    move-object v1, v3

    goto :goto_0

    .line 1000
    :cond_1
    if-nez p3, :cond_4

    .line 1002
    .local v0, blackIds:[J
    :goto_2
    if-eqz v0, :cond_5

    .line 1003
    const/4 v2, -0x1

    .line 1004
    .local v2, pivot:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-wide v5, v0, v2

    cmp-long v3, v5, v7

    if-gtz v3, :cond_2

    .line 1005
    :cond_3
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-wide v5, v0, v2

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    move v3, v4

    .line 1006
    goto :goto_1

    .line 1000
    .end local v0           #blackIds:[J
    .end local v2           #pivot:I
    :cond_4
    iget-object v3, p1, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    move-object v0, v3

    goto :goto_2

    .line 1010
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, callLogs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableCallLog;>;"
    const/4 v3, 0x0

    .line 880
    const-wide/16 v11, 0x0

    .line 882
    .local v11, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2700()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2800()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 884
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 885
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 888
    .local v1, callLogId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v0, Lcom/android/htcdialer/search/SearchableCallLog;

    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;)V

    invoke-virtual {p1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    .end local v1           #callLogId:J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_2
    return-object p1
.end method

.method private loadContacts(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 19
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    const-wide/16 v15, 0x0

    .line 663
    .local v15, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2200()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2300()[Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 671
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 672
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 674
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 675
    .local v3, contactId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 676
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v7, 0x0

    .line 677
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    new-instance v2, Lcom/android/htcdialer/search/SearchableContact;

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v8, 0x6

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x6

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x2

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_3
    const/4 v11, 0x4

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2300()[Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2400()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_8

    const/4 v13, 0x7

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :goto_4
    invoke-direct/range {v2 .. v13}, Lcom/android/htcdialer/search/SearchableContact;-><init>(JJLjava/lang/String;ZZZLjava/lang/String;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v5, 0x1388

    if-lt v2, v5, :cond_0

    .line 692
    .end local v3           #contactId:J
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadNamePattern(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 700
    return-object p1

    .line 663
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 677
    .restart local v3       #contactId:J
    .restart local v7       #name:Ljava/lang/String;
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_4
.end method

.method private loadEmails(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p2, emailsBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v12, 0x0

    .line 767
    .local v12, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2600()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/htcdialer/DialerService;->EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 770
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 771
    const/4 v7, 0x0

    .line 772
    .local v7, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 774
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 775
    .local v8, contactId:J
    if-eqz v7, :cond_1

    iget-wide v1, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_2

    .line 776
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 778
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_2
    if-nez v7, :cond_7

    .line 786
    :cond_3
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    .end local v8           #contactId:J
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 794
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_5
    return-void

    .line 767
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 781
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v8       #contactId:J
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 782
    .local v11, email:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 783
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v11}, Lcom/android/htcdialer/search/SearchableContact;->addEmail(ZLjava/lang/String;)V

    .line 784
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private loadNamePattern(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    const-wide/16 v16, 0x0

    .line 799
    .local v16, time:J
    sget-object v2, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 800
    .local v2, uri:Landroid/net/Uri;
    sget-object v6, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    .line 802
    .local v6, param:Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 803
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 804
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    .line 805
    .local v15, size:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v15, [Lcom/android/htcdialer/search/SearchableContact;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/htcdialer/search/SearchableContact;

    .line 807
    .local v8, contactArray:[Lcom/android/htcdialer/search/SearchableContact;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v15, :cond_1

    .line 809
    aget-object v1, v8, v10

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    aget-object v1, v8, v10

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 814
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 816
    .local v5, nameArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v1}, Lcom/android/htcdialer/DialerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 819
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 820
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 821
    const/4 v14, -0x1

    .line 824
    .local v14, pivot:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    if-ge v14, v15, :cond_3

    aget-object v1, v8, v14

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 825
    :cond_3
    if-ge v14, v15, :cond_4

    .line 826
    aget-object v1, v8, v14

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/htcdialer/search/SearchableContact;->setNamePattern(Ljava/lang/String;)V

    .line 828
    :cond_4
    if-ge v14, v15, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 830
    .end local v14           #pivot:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 876
    .end local v5           #nameArray:[Ljava/lang/String;
    .end local v8           #contactArray:[Lcom/android/htcdialer/search/SearchableContact;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #size:I
    :cond_6
    :goto_1
    return-void

    .line 834
    :cond_7
    const-string v1, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 835
    .local v11, idArray:[Ljava/lang/String;
    array-length v15, v11

    .line 836
    .restart local v15       #size:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .restart local v13       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v15, :cond_9

    .line 838
    aget-object v1, v11, v10

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 839
    .local v7, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v7, :cond_8

    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 840
    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 843
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 844
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 846
    .restart local v5       #nameArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v1}, Lcom/android/htcdialer/DialerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 849
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 850
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 851
    const/4 v14, -0x1

    .line 852
    .restart local v14       #pivot:I
    const/4 v7, 0x0

    .line 855
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    if-ge v14, v15, :cond_b

    aget-object v1, v11, v14

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v7, :cond_a

    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 856
    :cond_b
    if-ge v14, v15, :cond_c

    .line 857
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/htcdialer/search/SearchableContact;->setNamePattern(Ljava/lang/String;)V

    .line 859
    :cond_c
    if-ge v14, v15, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 861
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v14           #pivot:I
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 866
    .end local v5           #nameArray:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #idArray:[Ljava/lang/String;
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #size:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 867
    .local v12, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableContact;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 868
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 869
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/htcdialer/search/SearchableContact;->setNamePattern(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private loadPhones(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p2, phonesBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v15, 0x0

    .line 707
    .local v15, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2500()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/htcdialer/DialerService;->PHONE_PROJECTION:[Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 710
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 711
    const/4 v7, 0x0

    .line 712
    .local v7, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 714
    :cond_0
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 716
    .local v8, contactId:J
    if-eqz v7, :cond_1

    iget-wide v1, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_2

    .line 717
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 719
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_2
    if-nez v7, :cond_7

    .line 753
    :cond_3
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    .end local v8           #contactId:J
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 761
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_5
    return-void

    .line 707
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 722
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v8       #contactId:J
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_7
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, number:Ljava/lang/String;
    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 724
    .local v12, numberKey:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 725
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    move/from16 v17, v1

    :goto_2
    new-instance v1, Lcom/android/htcdialer/search/SearchablePhone;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/htcdialer/search/SearchablePhone;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Lcom/android/htcdialer/search/SearchableContact;->addPhone(ZLcom/android/htcdialer/search/SearchablePhone;)V

    .line 732
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 733
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    .line 734
    .local v13, oldInfo:[J
    const/4 v14, 0x0

    .line 736
    .local v14, pivot:I
    :goto_3
    array-length v1, v13

    if-ge v14, v1, :cond_9

    aget-wide v1, v13, v14

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    aget-wide v1, v13, v14

    iget-wide v3, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 737
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 725
    .end local v13           #oldInfo:[J
    .end local v14           #pivot:I
    :cond_8
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_2

    .line 739
    .restart local v13       #oldInfo:[J
    .restart local v14       #pivot:I
    :cond_9
    array-length v1, v13

    if-lt v14, v1, :cond_a

    .line 740
    array-length v1, v13

    mul-int/lit8 v1, v1, 0x2

    new-array v11, v1, [J

    .line 741
    .local v11, newInfo:[J
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v13

    invoke-static {v13, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    array-length v1, v13

    iget-wide v2, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    aput-wide v2, v11, v1

    .line 743
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 744
    .end local v11           #newInfo:[J
    :cond_a
    aget-wide v1, v13, v14

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 745
    iget-wide v1, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    aput-wide v1, v13, v14

    goto/16 :goto_1

    .line 748
    .end local v13           #oldInfo:[J
    .end local v14           #pivot:I
    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    aput-wide v3, v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private notifyCacheUpdate()V
    .locals 12

    .prologue
    .line 1148
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3200()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1149
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3200()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3300()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1155
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1157
    .local v0, am:Landroid/app/IActivityManager;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.android.htcdialer.CONTACT_CACHE_CHANGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1159
    .local v2, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1161
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1175
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1163
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 1164
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DialerService"

    const-string v3, "Contacts.db Corrupt Exception but can not find activity manager to broadcast intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1170
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateCallLog()V
    .locals 7

    .prologue
    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 539
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v1

    .line 540
    .local v1, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 541
    .local v2, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v3

    sget-object v4, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 544
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 545
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 546
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 547
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 548
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 551
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v0

    sput v0, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 552
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    .line 555
    return-void

    .line 552
    .end local v6           #i:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateContacts()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 592
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getUpdateInfo()[[J

    move-result-object v8

    .line 594
    .local v8, updateInfo:[[J
    if-nez v8, :cond_0

    .line 657
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getUpdateIdString([[J)Ljava/lang/String;

    move-result-object v7

    .line 601
    .local v7, idString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 602
    :try_start_0
    sget-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 603
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 604
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 605
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v8

    if-ge v6, v0, :cond_2

    .line 609
    aget-object v0, v8, v6

    aget-wide v3, v0, v11

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-lez v0, :cond_1

    .line 610
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    aget-object v3, v8, v6

    aget-wide v3, v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    aget-object v4, v8, v6

    aget-wide v4, v4, v11

    #calls: Lcom/android/htcdialer/DialerService;->deletePhonesBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;
    invoke-static {v0, v3, v4, v5}, Lcom/android/htcdialer/DialerService;->access$1700(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 612
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v3

    aget-object v4, v8, v6

    aget-wide v4, v4, v11

    #calls: Lcom/android/htcdialer/DialerService;->deleteEmailsBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;
    invoke-static {v0, v3, v4, v5}, Lcom/android/htcdialer/DialerService;->access$1900(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 608
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 605
    .end local v6           #i:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 616
    .restart local v6       #i:I
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadContacts(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    #calls: Lcom/android/htcdialer/DialerService;->loadBlackNumber(Ljava/util/HashMap;)Ljava/util/HashMap;
    invoke-static {v0, v3}, Lcom/android/htcdialer/DialerService;->access$2000(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 622
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 623
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadPhones(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 627
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 628
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadEmails(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 632
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 635
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v1

    .line 636
    .local v1, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 637
    .local v2, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedContacts(Ljava/util/HashMap;)[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$902([Lcom/android/htcdialer/search/SearchableContact;)[Lcom/android/htcdialer/search/SearchableContact;

    .line 638
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 641
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 642
    :try_start_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 643
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$2102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 644
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 645
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    .line 646
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    const/4 v6, 0x0

    :goto_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 648
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 650
    :cond_6
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 651
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v0

    sput v0, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 652
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 654
    sput-boolean v12, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 656
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    goto/16 :goto_0

    .line 652
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private updateNamePattern()V
    .locals 2

    .prologue
    .line 1134
    sget-boolean v0, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    if-nez v0, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1139
    :try_start_0
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadNamePattern(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 388
    iget v1, p1, Landroid/os/Message;->what:I

    .line 393
    .local v1, msgType:I
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    sput-boolean v5, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 403
    iget-object v3, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v3}, Lcom/android/htcdialer/DialerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htcdialer/DialerService;->access$102(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 404
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_2

    .line 405
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$300()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 407
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$400()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 413
    :pswitch_1
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->initDialerCache()V

    goto :goto_0

    .line 418
    :pswitch_2
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->initDialerCache()V

    .line 422
    iget-object v3, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 424
    .local v2, sharedPreference:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 425
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "corrupt_count"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 433
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreference:Landroid/content/SharedPreferences;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->updateCallLog()V

    goto :goto_0

    .line 436
    :pswitch_4
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->updateContacts()V

    goto/16 :goto_0

    .line 442
    :pswitch_5
    iget-object v3, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #calls: Lcom/android/htcdialer/DialerService;->preparePhotoUtility()V
    invoke-static {v3}, Lcom/android/htcdialer/DialerService;->access$600(Lcom/android/htcdialer/DialerService;)V

    goto/16 :goto_0

    .line 445
    :pswitch_6
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->updateNamePattern()V

    goto/16 :goto_0

    .line 448
    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/htcdialer/search/SearchableCallLog;

    invoke-direct {p0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->insertCallLog(Lcom/android/htcdialer/search/SearchableCallLog;)V

    goto/16 :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
