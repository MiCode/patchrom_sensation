.class public Lcom/android/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalData"
.end annotation


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mExtendedAddress:Ljava/lang/String;

.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mLocalty:Ljava/lang/String;

.field private final mPobox:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mRegion:Ljava/lang/String;

.field private final mStreet:Ljava/lang/String;

.field private final mType:I

.field private mVCardType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0
    .parameter "pobox"
    .parameter "extendedAddress"
    .parameter "street"
    .parameter "localty"
    .parameter "region"
    .parameter "postalCode"
    .parameter "country"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"
    .parameter "vcardType"

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput p8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 508
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 511
    iput-object p4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 512
    iput-object p5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 513
    iput-object p6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 514
    iput-object p7, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 515
    iput-object p9, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 516
    iput-boolean p10, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    .line 517
    iput p11, p0, Lcom/android/vcard/VCardEntry$PostalData;->mVCardType:I

    .line 518
    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;
    .locals 19
    .parameter
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"
    .parameter "vcardType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/android/vcard/VCardEntry$PostalData;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x7

    new-array v14, v1, [Ljava/lang/String;

    .line 527
    .local v14, dataArray:[Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v18

    .line 528
    .local v18, size:I
    const/4 v1, 0x7

    move/from16 v0, v18

    if-le v0, v1, :cond_0

    .line 529
    const/16 v18, 0x7

    .line 537
    :cond_0
    const/4 v15, 0x0

    .line 538
    .local v15, i:I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 539
    .local v13, addressElement:Ljava/lang/String;
    aput-object v13, v14, v15

    .line 540
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    if-lt v15, v0, :cond_1

    move/from16 v16, v15

    .line 544
    .end local v13           #addressElement:Ljava/lang/String;
    .end local v15           #i:I
    .local v16, i:I
    :goto_0
    const/4 v1, 0x7

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    .line 545
    add-int/lit8 v15, v16, 0x1

    .end local v16           #i:I
    .restart local v15       #i:I
    const/4 v1, 0x0

    aput-object v1, v14, v16

    move/from16 v16, v15

    .end local v15           #i:I
    .restart local v16       #i:I
    goto :goto_0

    .line 548
    :cond_2
    new-instance v1, Lcom/android/vcard/VCardEntry$PostalData;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    const/4 v4, 0x2

    aget-object v4, v14, v4

    const/4 v5, 0x3

    aget-object v5, v14, v5

    const/4 v6, 0x4

    aget-object v6, v14, v6

    const/4 v7, 0x5

    aget-object v7, v14, v7

    const/4 v8, 0x6

    aget-object v8, v14, v8

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/vcard/VCardEntry$PostalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v1

    .end local v16           #i:I
    .restart local v15       #i:I
    :cond_3
    move/from16 v16, v15

    .end local v15           #i:I
    .restart local v16       #i:I
    goto :goto_0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 557
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 558
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    const-string v2, "data2"

    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez v2, :cond_0

    .line 562
    const-string v2, "data3"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 567
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 568
    const/4 v1, 0x0

    .line 579
    .local v1, streetString:Ljava/lang/String;
    :goto_0
    const-string v2, "data5"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 580
    const-string v2, "data4"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 581
    const-string v2, "data7"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 582
    const-string v2, "data8"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 583
    const-string v2, "data9"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 584
    const-string v2, "data10"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 586
    const-string v2, "data1"

    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mVCardType:I

    invoke-virtual {p0, v3}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 587
    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v2, :cond_1

    .line 588
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-void

    .line 570
    .end local v1           #streetString:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .restart local v1       #streetString:Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v1           #streetString:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .restart local v1       #streetString:Ljava/lang/String;
    goto :goto_0

    .line 576
    .end local v1           #streetString:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #streetString:Ljava/lang/String;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    if-ne p0, p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v1

    .line 645
    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$PostalData;

    if-nez v3, :cond_2

    move v1, v2

    .line 646
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 648
    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    .line 649
    .local v0, postalData:Lcom/android/vcard/VCardEntry$PostalData;
    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    iget v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 686
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 9
    .parameter "vcardType"

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x7

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 596
    .local v3, empty:Z
    new-array v2, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 599
    .local v2, dataArray:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 601
    const/4 v4, 0x6

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_5

    .line 602
    aget-object v0, v2, v4

    .line 603
    .local v0, addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 604
    if-nez v3, :cond_1

    .line 605
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 607
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 613
    .end local v0           #addressPart:Ljava/lang/String;
    .end local v4           #i:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v7, :cond_5

    .line 614
    aget-object v0, v2, v4

    .line 615
    .restart local v0       #addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 616
    if-nez v3, :cond_4

    .line 617
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 619
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 626
    .end local v0           #addressPart:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 664
    iget v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 665
    .local v1, hash:I
    mul-int/lit8 v8, v1, 0x1f

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_0
    add-int v1, v8, v6

    .line 666
    mul-int/lit8 v8, v1, 0x1f

    iget-boolean v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x4cf

    :goto_1
    add-int v1, v8, v6

    .line 668
    const/4 v6, 0x7

    new-array v3, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v6, v3, v7

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x4

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x5

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x6

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v8, v3, v6

    .line 670
    .local v3, hashTargets:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 671
    .local v2, hashTarget:Ljava/lang/String;
    mul-int/lit8 v8, v1, 0x1f

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_3
    add-int v1, v8, v6

    .line 670
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #hashTarget:Ljava/lang/String;
    .end local v3           #hashTargets:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    move v6, v7

    .line 665
    goto :goto_0

    .line 666
    :cond_1
    const/16 v6, 0x4d5

    goto :goto_1

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #hashTarget:Ljava/lang/String;
    .restart local v3       #hashTargets:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    move v6, v7

    .line 671
    goto :goto_3

    .line 673
    .end local v2           #hashTarget:Ljava/lang/String;
    :cond_3
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 678
    const-string v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
