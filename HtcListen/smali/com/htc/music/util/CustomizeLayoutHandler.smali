.class public Lcom/htc/music/util/CustomizeLayoutHandler;
.super Ljava/lang/Object;
.source "CustomizeLayoutHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defResId"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defResId"

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;II)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "textResId"

    .prologue
    .line 45
    return-void
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;III)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "alpha"
    .parameter "textResId"

    .prologue
    .line 64
    return-void
.end method

.method public static setGlanceTitlebarBackground(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "titlebar"

    .prologue
    .line 99
    const-string v0, "common_titlebar_sublevel_static"

    const v1, 0x20807b1

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    return-void
.end method

.method public static setRepeatListener(Landroid/view/View;Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "btn"
    .parameter "listener"
    .parameter "interval"

    .prologue
    .line 75
    return-void
.end method
