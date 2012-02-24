.class public Lcom/android/internal/telephony/RoamingGuideListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RoamingGuideListAdapter.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DeliveryReportAdapter"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingGuideListAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/RoamingGuideListAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/internal/telephony/RoamingGuideListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x109000f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, listItem:Landroid/widget/TextView;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .end local v0           #factory:Landroid/view/LayoutInflater;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_1
    return-object v1

    .end local v1           #listItem:Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    .line 51
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #listItem:Landroid/widget/TextView;
    goto :goto_0

    .line 59
    :pswitch_0
    const v2, 0x1040533

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 62
    :pswitch_1
    const v2, 0x1040534

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
