.class public Landroid/webkit/WebViewThemeable;
.super Ljava/lang/Object;
.source "WebViewThemeable.java"


# static fields
.field private static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewThemeable;->ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "res"

    .prologue
    const v2, 0x2080686

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    sget-boolean v1, Landroid/webkit/WebViewThemeable;->ENABLED:Z

    if-eqz v1, :cond_1

    .line 42
    const-string/jumbo v1, "text_anchor_bar"

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    :goto_0
    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0

    .line 45
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "res"

    .prologue
    const v2, 0x2080687

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    sget-boolean v1, Landroid/webkit/WebViewThemeable;->ENABLED:Z

    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v1, "text_anchor_bar_top"

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    :goto_0
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0

    .line 63
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAnchorPointDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "res"

    .prologue
    const v2, 0x208066c

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    sget-boolean v1, Landroid/webkit/WebViewThemeable;->ENABLED:Z

    if-eqz v1, :cond_1

    .line 25
    const-string/jumbo v1, "text_anchor_point"

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31
    :goto_0
    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    :cond_0
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHighlightColor(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 73
    const/16 v4, 0x80

    const/16 v5, 0x7f

    const/16 v6, 0xb1

    const/16 v7, 0x18

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 75
    .local v3, ret:I
    const v4, 0x103003e

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 80
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 84
    .local v2, defaultColor:I
    move v3, v2

    .line 86
    sget-boolean v4, Landroid/webkit/WebViewThemeable;->ENABLED:Z

    if-eqz v4, :cond_0

    .line 87
    const-string/jumbo v4, "text_selection_highlight"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, colorId:I
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 94
    .end local v1           #colorId:I
    .end local v2           #defaultColor:I
    :cond_0
    return v3
.end method
