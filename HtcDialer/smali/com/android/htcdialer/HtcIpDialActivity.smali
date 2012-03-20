.class public Lcom/android/htcdialer/HtcIpDialActivity;
.super Lcom/android/htcdialer/app/BaseListActivity;
.source "HtcIpDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htcdialer/customization/CustomizationUtility$ICustomizationChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/HtcIpDialActivity$IpDial;,
        Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;,
        Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ADD_NEW_ON_TITLE:Z = false

.field public static final IP_DIAL_STATE_DISABLED:I = 0x2

.field public static final IP_DIAL_STATE_ENABLED:I = 0x1

.field public static final IP_DIAL_STATE_UNKNOWN:I = 0x0

.field private static final OPTION_MENU_ITEM_DELETE:I = 0x1

.field private static final OPTION_MENU_ITEM_SET_DEFAULT:I = 0x2

.field private static final OPTION_MENU_ITEM_UNKNOWN:I = 0x0

.field private static final QUERY_TOKEN:I = 0x1

.field private static mIsEnabled:Z

.field public static sSupportSetting:Z


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

.field private mDefaultNumber:Ljava/lang/String;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNumberEdit:Landroid/widget/EditText;

.field private mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sput-boolean v1, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    .line 87
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isDoubleShotTMO()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/HtcIpDialActivity;->ADD_NEW_ON_TITLE:Z

    .line 99
    sput-boolean v1, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    return-void

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/htcdialer/app/BaseListActivity;-><init>()V

    .line 93
    const-string v0, "android.intent.action.VIEW"

    iput-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDefaultNumber:Ljava/lang/String;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/HtcIpDialActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/HtcIpDialActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDefaultNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htcdialer/HtcIpDialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDefaultNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/htcdialer/HtcIpDialActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htcdialer/HtcIpDialActivity;)Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htcdialer/HtcIpDialActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htcdialer/HtcIpDialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/htcdialer/HtcIpDialActivity;->insert(Ljava/lang/String;)V

    return-void
.end method

.method private applyBatchDelete(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 6
    .parameter "number"

    .prologue
    const/4 v1, 0x1

    .line 396
    new-array v5, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 398
    .local v5, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "number = ?"

    invoke-virtual/range {v0 .. v5}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private handleAddNumber()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 478
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 479
    return-void
.end method

.method private initDialog()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    .line 362
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 363
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 364
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 365
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    const v1, 0x2030030

    invoke-virtual {v0, p0, v1}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 368
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090039

    new-instance v2, Lcom/android/htcdialer/HtcIpDialActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htcdialer/HtcIpDialActivity$1;-><init>(Lcom/android/htcdialer/HtcIpDialActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 383
    return-void
.end method

.method private insert(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-boolean v1, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 417
    return-void
.end method

.method private insertAddNewButton()V
    .locals 6

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x2090055

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, addView:Landroid/view/View;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const-string v3, "list_selector_background"

    const-string v4, "drawable"

    const v5, 0x7f02002f

    invoke-static {v3, v4, v5}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 348
    .local v1, id:I
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    .end local v1           #id:I
    :cond_0
    new-instance v3, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v4, "add_new_ip_dial"

    invoke-direct {v3, v4}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 351
    const v3, 0x7f0b0014

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 352
    const v3, 0x2020010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 353
    .local v2, primaryText:Landroid/widget/TextView;
    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 354
    iget-object v3, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 355
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 482
    sget-boolean v0, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    return v0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->cancelOperation(I)V

    .line 390
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    sget-object v3, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v5, ""

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public static setupState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 486
    const-string v2, "com.android.htcdialer_preferences"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 488
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "ip_dial"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 489
    .local v0, enable:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 490
    sput-boolean v0, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v2

    sput-boolean v2, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    goto :goto_0
.end method

.method private startIpDialActivity(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const-string p1, "android.intent.action.VIEW"

    .line 516
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/HtcIpDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method private update(Ljava/lang/String;I)V
    .locals 8
    .parameter "number"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 421
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-boolean v0, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "number = ?"

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public static updateState(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "context"
    .parameter "bundle"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 497
    if-eqz p1, :cond_0

    .line 498
    const-string v5, "IP_DIAL_SHARED_PREFERENCES"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 499
    .local v2, pref:I
    if-eqz v2, :cond_0

    .line 500
    if-ne v2, v1, :cond_1

    .line 501
    .local v1, enable:Z
    :goto_0
    const-string v5, "com.android.htcdialer_preferences"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 503
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "ip_dial"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    sput-boolean v1, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    .line 509
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #enable:Z
    .end local v2           #pref:I
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_0
    sget-boolean v4, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    return v4

    .restart local v2       #pref:I
    :cond_1
    move v1, v4

    .line 500
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "title_1_button_right_2"

    const-string v10, "id"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, add:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 437
    .local v1, id:I
    if-ne v1, v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->handleAddNumber()V

    .line 441
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 443
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->handleAddNumber()V

    goto :goto_0

    .line 446
    :sswitch_1
    iget-object v8, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    const-string v9, "android.intent.action.DELETE"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 447
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 449
    .local v7, positions:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 450
    const/4 v6, -0x1

    .line 451
    .local v6, position:I
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 452
    .local v3, key:I
    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 453
    iget-object v8, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 454
    iget-object v8, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    .end local v3           #key:I
    .end local v6           #position:I
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/htcdialer/HtcIpDialActivity;->applyBatchDelete(Ljava/util/ArrayList;)V

    .line 467
    .end local v2           #index:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #positions:Landroid/util/SparseBooleanArray;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->finish()V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v8, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    const-string v9, "android.intent.action.EDIT"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 461
    iget-object v8, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getCheckedItemPosition()I

    move-result v6

    .line 462
    .restart local v6       #position:I
    iget-object v8, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, number:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDefaultNumber:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/htcdialer/HtcIpDialActivity;->update(Ljava/lang/String;I)V

    .line 465
    invoke-direct {p0, v5, v12}, Lcom/android/htcdialer/HtcIpDialActivity;->update(Ljava/lang/String;I)V

    goto :goto_2

    .line 470
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #position:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->finish()V

    goto :goto_0

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x2020001 -> :sswitch_1
        0x2020003 -> :sswitch_2
        0x7f0b0014 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 243
    invoke-super/range {p0 .. p1}, Lcom/android/htcdialer/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const v17, 0x7f030014

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->setContentView(I)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 253
    .local v10, res:Landroid/content/res/Resources;
    sget-boolean v17, Lcom/android/htcdialer/HtcIpDialActivity;->ADD_NEW_ON_TITLE:Z

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.intent.action.VIEW"

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v11, "title_1_1"

    .line 255
    .local v11, resName:Ljava/lang/String;
    :goto_0
    const v17, 0x7f0b0004

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    .line 256
    .local v13, stub:Landroid/view/ViewStub;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "layout"

    const-string v19, "com.htc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 257
    .local v7, layout:I
    invoke-virtual {v13, v7}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 258
    invoke-virtual {v13}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 262
    const v17, 0x20201ba

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/Title1;

    .line 263
    .local v15, titlebar:Lcom/htc/widget/Title1;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "title_1_txt_left"

    const-string v19, "id"

    const-string v20, "com.htc"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 264
    .local v6, id:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 265
    .local v16, txt:Landroid/widget/TextView;
    if-eqz v16, :cond_4

    .line 266
    const v17, 0x7f090088

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 271
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.intent.action.VIEW"

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 273
    sget-boolean v17, Lcom/android/htcdialer/HtcIpDialActivity;->ADD_NEW_ON_TITLE:Z

    if-eqz v17, :cond_5

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "title_1_img_1x1"

    const-string v19, "id"

    const-string v20, "com.htc"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "title_1_button_right_2"

    const-string v19, "id"

    const-string v20, "com.htc"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 278
    .local v14, title_1_Button_Right_2:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "common_icon_titlebar_add"

    const-string v19, "drawable"

    const-string v20, "com.htc"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    .end local v14           #title_1_Button_Right_2:Landroid/widget/ImageButton;
    :goto_2
    const v8, 0x2090089

    .line 299
    .local v8, layoutId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.intent.action.DELETE"

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 300
    const v8, 0x2090086

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 306
    :cond_1
    :goto_3
    new-instance v17, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;-><init>(Lcom/android/htcdialer/HtcIpDialActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htcdialer/HtcIpDialActivity;->mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    .line 308
    new-instance v17, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;-><init>(Lcom/android/htcdialer/HtcIpDialActivity;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->initDialog()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/HtcIpDialActivity;->mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    const-string v17, "common_glance_bkg"

    const-string v18, "drawable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 315
    .local v12, resid:I
    if-eqz v12, :cond_2

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 318
    :cond_2
    return-void

    .line 253
    .end local v6           #id:I
    .end local v7           #layout:I
    .end local v8           #layoutId:I
    .end local v11           #resName:Ljava/lang/String;
    .end local v12           #resid:I
    .end local v13           #stub:Landroid/view/ViewStub;
    .end local v15           #titlebar:Lcom/htc/widget/Title1;
    .end local v16           #txt:Landroid/widget/TextView;
    :cond_3
    const-string v11, "title_1"

    goto/16 :goto_0

    .line 267
    .restart local v6       #id:I
    .restart local v7       #layout:I
    .restart local v11       #resName:Ljava/lang/String;
    .restart local v13       #stub:Landroid/view/ViewStub;
    .restart local v15       #titlebar:Lcom/htc/widget/Title1;
    .restart local v16       #txt:Landroid/widget/TextView;
    :cond_4
    if-eqz v15, :cond_0

    .line 268
    const v17, 0x7f090088

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/widget/Title1;->setTitle1(I)V

    goto/16 :goto_1

    .line 282
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/HtcIpDialActivity;->insertAddNewButton()V

    goto :goto_2

    .line 286
    :cond_6
    const v17, 0x2020002

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 287
    .local v5, cmdBar:Landroid/view/View;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    const v17, 0x2020001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 289
    .local v9, ok:Landroid/widget/TextView;
    const v17, 0x20c013c

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v17, 0x2020003

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 293
    .local v4, cancel:Landroid/widget/TextView;
    const v17, 0x20c013d

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 294
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 302
    .end local v4           #cancel:Landroid/widget/TextView;
    .end local v5           #cmdBar:Landroid/view/View;
    .end local v9           #ok:Landroid/widget/TextView;
    .restart local v8       #layoutId:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.intent.action.EDIT"

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 303
    const v8, 0x2090086

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto/16 :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 524
    invoke-super {p0, p1, p2, p3}, Lcom/android/htcdialer/app/BaseListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 525
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x1

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 533
    sget-boolean v0, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x2

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 539
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCustomizationChanged(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .parameter "context"
    .parameter "customizeBundle"
    .parameter "extraBundle"

    .prologue
    .line 561
    if-nez p2, :cond_1

    .line 580
    :cond_0
    return-void

    .line 565
    :cond_1
    const-string v6, "ip_dial"

    const-string v7, "enabled"

    invoke-static {p2, v6, v7}, Lcom/android/htcdialer/customization/CustomizationUtility;->getSingleValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, enabled:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 567
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/htcdialer/HtcIpDialActivity;->mIsEnabled:Z

    .line 570
    :cond_2
    iget-object v6, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    if-nez v6, :cond_3

    .line 571
    new-instance v6, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    invoke-direct {v6, p0, p1}, Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;-><init>(Lcom/android/htcdialer/HtcIpDialActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mQueryHandler:Lcom/android/htcdialer/HtcIpDialActivity$QueryHandler;

    .line 574
    :cond_3
    const-string v6, "ip_dial"

    invoke-static {p2, v6}, Lcom/android/htcdialer/customization/CustomizationUtility;->getSingleValueInBundle(Landroid/os/Bundle;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, items:[[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 576
    .local v3, item:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 577
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/android/htcdialer/HtcIpDialActivity;->insert(Ljava/lang/String;)V

    .line 575
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onDestroy()V

    .line 330
    iget-object v0, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mAdapter:Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 331
    iput-object v1, p0, Lcom/android/htcdialer/HtcIpDialActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 332
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 545
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 546
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 555
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 548
    :pswitch_0
    const-string v2, "android.intent.action.DELETE"

    invoke-direct {p0, v2}, Lcom/android/htcdialer/HtcIpDialActivity;->startIpDialActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :pswitch_1
    const-string v2, "android.intent.action.EDIT"

    invoke-direct {p0, v2}, Lcom/android/htcdialer/HtcIpDialActivity;->startIpDialActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onResume()V

    .line 339
    invoke-direct {p0}, Lcom/android/htcdialer/HtcIpDialActivity;->query()V

    .line 340
    return-void
.end method
