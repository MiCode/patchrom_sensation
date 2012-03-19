.class public final Landroid/provider/Contacts$ContactMethods;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$ContactMethodsColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$ContactMethods$ProviderNames;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_EMAIL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_EMAIL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_EMAIL_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_EMAIL_URI_GROUP:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_IM_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/jabber-im"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_POSTAL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_POSTAL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact-methods"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_CITY:Ljava/lang/String; = "city"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_COUNTRY:Ljava/lang/String; = "country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_STATE:Ljava/lang/String; = "state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_STREET:Ljava/lang/String; = "street"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_POSTAL_ADDRESS_ZIP:Ljava/lang/String; = "zip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_CITY:I = 0x1010001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_COUNTRY:I = 0x1010000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_STATE:I = 0x1010002
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_STREET:I = 0x1010003
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_ADDRESS_ZIP:I = 0x1010004
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_DETALS_HASHMAC:Ljava/lang/String; = "mac"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_DETALS_LOCALE:Ljava/lang/String; = "locale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_LOCATION_LATITUDE:Ljava/lang/String; = "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_LOCATION_LONGITUDE:Ljava/lang/String; = "aux_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_AIM:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_ICQ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_JABBER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_MSN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_QQ:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_SKYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_YAHOO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3220
    const-string v0, "content://contacts/contact_methods"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    .line 3228
    const-string v0, "content://contacts/contact_methods/email"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    .line 3238
    const-string v0, "content://contacts/contact_methods/emailgroup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI_GROUP:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2765
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPostalDetails(Landroid/content/Context;JLjava/util/HashMap;JLjava/lang/String;Ljava/util/Locale;)V
    .locals 8
    .parameter "context"
    .parameter "personId"
    .parameter
    .parameter "totalPostalId"
    .parameter "hashsource"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, details:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 3021
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3024
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p3, p6, p7}, Landroid/provider/Contacts$ContactMethods;->getEncodeUriByDetailMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Locale;)Landroid/net/Uri;

    move-result-object v0

    .line 3026
    .local v0, encodeUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3027
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "aux_data"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    const-string v4, "Contacts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUX_DATA:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    sget-object v4, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3031
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3041
    return-void
.end method

.method public static conmbineAmericaAddress(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2865
    .local p0, details:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/high16 v12, 0x101

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2866
    .local v3, country:Ljava/lang/String;
    const v12, 0x1010001

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2867
    .local v2, city:Ljava/lang/String;
    const v12, 0x1010002

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2868
    .local v9, state:Ljava/lang/String;
    const v12, 0x1010003

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2869
    .local v10, street:Ljava/lang/String;
    const v12, 0x1010004

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2873
    .local v11, zip:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2874
    .local v7, locale:Ljava/util/Locale;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2876
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v12, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2877
    :cond_0
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2879
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2881
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2891
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2893
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/4 v12, 0x5

    if-ge v4, v12, :cond_4

    .line 2894
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2895
    .local v0, addressItem:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 2896
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 2897
    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2899
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2900
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2893
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2884
    .end local v0           #addressItem:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    :cond_3
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2885
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2887
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2934
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 2935
    .local v5, len:I
    if-lez v5, :cond_5

    .line 2936
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v1, v12, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2938
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2939
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2941
    return-object v8
.end method

.method public static decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "encodedString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2694
    if-nez p0, :cond_0

    .line 2695
    const/4 v0, 0x0

    .line 2703
    :goto_0
    return-object v0

    .line 2698
    :cond_0
    const-string/jumbo v0, "pre:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2699
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2702
    :cond_1
    const-string v0, "custom:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2703
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2706
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the value is not a valid encoded protocol, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeCustomImProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "protocolString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePredefinedImProtocol(I)Ljava/lang/String;
    .locals 2
    .parameter "protocol"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pre:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDetailMapByEncodeUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .parameter "uri"
    .parameter "macsource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3049
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 3050
    .local v0, authority:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v11, "postal"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3051
    :cond_0
    const/4 v6, 0x0

    .line 3117
    :cond_1
    :goto_0
    return-object v6

    .line 3054
    :cond_2
    const-string/jumbo v11, "mac"

    invoke-virtual {p0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3055
    .local v5, mac:Ljava/lang/String;
    const/4 v9, 0x1

    .line 3056
    .local v9, valid:Z
    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    .line 3057
    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 3058
    const/4 v9, 0x0

    .line 3070
    :cond_3
    const/4 v3, 0x0

    .line 3071
    .local v3, encoding:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3072
    .local v8, street:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3073
    .local v1, city:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3074
    .local v7, state:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3075
    .local v10, zip:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3077
    .local v2, country:Ljava/lang/String;
    const/4 v11, 0x5

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 3085
    .local v4, keyset:[I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3087
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string/jumbo v11, "street"

    invoke-virtual {p0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3088
    if-eqz v3, :cond_4

    .line 3089
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3090
    const v11, 0x1010003

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    :cond_4
    const-string v11, "city"

    invoke-virtual {p0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3093
    if-eqz v3, :cond_5

    .line 3094
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3095
    const v11, 0x1010001

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    :cond_5
    const-string/jumbo v11, "state"

    invoke-virtual {p0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3098
    if-eqz v3, :cond_6

    .line 3099
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3100
    const v11, 0x1010002

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    :cond_6
    const-string/jumbo v11, "zip"

    invoke-virtual {p0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3103
    if-eqz v3, :cond_7

    .line 3104
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3105
    const v11, 0x1010004

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    :cond_7
    const-string v11, "country"

    invoke-virtual {p0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3108
    if-eqz v3, :cond_8

    .line 3109
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3110
    const/high16 v11, 0x101

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3113
    :cond_8
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 3114
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3077
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0x1t 0x0t 0x1t 0x1t
        0x2t 0x0t 0x1t 0x1t
        0x4t 0x0t 0x1t 0x1t
        0x0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static final getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "kind"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2773
    const-string v0, ""

    .line 2774
    .local v0, display:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 2825
    const v3, 0x104000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2827
    :cond_0
    :goto_0
    return-object v0

    .line 2780
    :pswitch_0
    rem-int/lit16 p2, p2, 0x3e8

    .line 2783
    if-eqz p2, :cond_1

    .line 2784
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2787
    .local v2, labels:[Ljava/lang/CharSequence;
    add-int/lit8 v3, p2, -0x1

    :try_start_0
    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2788
    :catch_0
    move-exception v1

    .line 2789
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    goto :goto_0

    .line 2792
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2794
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_AUTO_CELL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2795
    const v3, 0x104028e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2799
    :cond_2
    move-object v0, p3

    goto :goto_0

    .line 2808
    :pswitch_1
    if-eqz p2, :cond_3

    .line 2809
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2812
    .restart local v2       #labels:[Ljava/lang/CharSequence;
    add-int/lit8 v3, p2, -0x1

    :try_start_1
    aget-object v0, v2, v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2813
    :catch_1
    move-exception v1

    .line 2814
    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    goto :goto_0

    .line 2817
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2818
    move-object v0, p3

    goto :goto_0

    .line 2774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncodeUriByDetailMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Locale;)Landroid/net/Uri;
    .locals 11
    .parameter
    .parameter "hashsource"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2952
    .local p0, details:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string/jumbo v9, "text://postal/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2953
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2955
    .local v0, builder:Landroid/net/Uri$Builder;
    const/high16 v9, 0x101

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2956
    .local v2, country:Ljava/lang/String;
    const v9, 0x1010001

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2957
    .local v1, city:Ljava/lang/String;
    const v9, 0x1010002

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2958
    .local v5, state:Ljava/lang/String;
    const v9, 0x1010003

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2959
    .local v6, street:Ljava/lang/String;
    const v9, 0x1010004

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2962
    .local v8, zip:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2963
    move-object v3, v6

    .line 2964
    .local v3, encoding:Ljava/lang/String;
    const-string/jumbo v9, "street"

    invoke-virtual {v0, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2966
    .end local v3           #encoding:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 2967
    move-object v3, v1

    .line 2968
    .restart local v3       #encoding:Ljava/lang/String;
    const-string v9, "city"

    invoke-virtual {v0, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2970
    .end local v3           #encoding:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 2971
    move-object v3, v5

    .line 2972
    .restart local v3       #encoding:Ljava/lang/String;
    const-string/jumbo v9, "state"

    invoke-virtual {v0, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2974
    .end local v3           #encoding:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 2975
    move-object v3, v8

    .line 2976
    .restart local v3       #encoding:Ljava/lang/String;
    const-string/jumbo v9, "zip"

    invoke-virtual {v0, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2978
    .end local v3           #encoding:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 2979
    move-object v3, v2

    .line 2980
    .restart local v3       #encoding:Ljava/lang/String;
    const-string v9, "country"

    invoke-virtual {v0, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2990
    .end local v3           #encoding:Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_5

    .line 2991
    invoke-static {p0}, Landroid/provider/Contacts$ContactMethods;->conmbineAmericaAddress(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 2994
    :cond_5
    if-nez p2, :cond_6

    .line 2995
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2997
    :cond_6
    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2999
    .local v4, hashmac:Ljava/lang/String;
    const-string/jumbo v9, "mac"

    invoke-virtual {v0, v9, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3001
    const-string/jumbo v9, "locale"

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3003
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    return-object v9
.end method

.method public static getPostalDetails(Landroid/content/Context;JLjava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "context"
    .parameter "postalId"
    .parameter "macsource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3128
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3129
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, detailuri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 3130
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3132
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 3133
    .local v6, aux_data:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3134
    .local v10, postal_data:Ljava/lang/String;
    const/4 v11, -0x1

    .line 3135
    .local v11, postal_personid:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3136
    const-string/jumbo v3, "person"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 3137
    const-string v3, "data"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3138
    const-string v3, "aux_data"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3140
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3142
    move-object v8, v6

    .line 3160
    .local v8, detaill_data:Ljava/lang/String;
    if-eqz v8, :cond_1

    if-nez v10, :cond_2

    .line 3169
    :cond_1
    :goto_0
    return-object v2

    .line 3164
    :cond_2
    if-nez p3, :cond_3

    .line 3165
    move-object p3, v10

    .line 3168
    :cond_3
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3169
    invoke-static {v9, p3}, Landroid/provider/Contacts$ContactMethods;->getDetailMapByEncodeUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "protocol"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2741
    packed-switch p0, :pswitch_data_0

    .line 2759
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2743
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 2745
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 2747
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 2749
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 2751
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 2753
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 2755
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 2757
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 2741
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addPostalLocation(Landroid/content/Context;JDD)V
    .locals 8
    .parameter "context"
    .parameter "postalId"
    .parameter "latitude"
    .parameter "longitude"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2842
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2844
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 2845
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "data"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2846
    const-string v5, "aux_data"

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2847
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2848
    .local v0, loc:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2851
    .local v1, locId:J
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2852
    const-string v5, "aux_data"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2853
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2854
    return-void
.end method
