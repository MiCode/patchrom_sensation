.class public Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RoundedCornerRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->setRoundedCornerEnabled(Z)V

    .line 30
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_BackgroundColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/RoundedCornerRelativeLayout;->setBackgroundColor(I)V

    .line 31
    return-void
.end method
