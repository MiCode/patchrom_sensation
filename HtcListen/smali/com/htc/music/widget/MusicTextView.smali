.class public Lcom/htc/music/widget/MusicTextView;
.super Landroid/widget/TextView;
.source "MusicTextView.java"


# instance fields
.field private mAnimeOffsetX:I

.field private mAnimeOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9
    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    .line 13
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetLeftAndRight(I)V

    .line 39
    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetTopAndBottom(I)V

    .line 41
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 43
    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetLeftAndRight(I)V

    .line 44
    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetTopAndBottom(I)V

    .line 45
    return-void
.end method

.method public scrollTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 31
    return-void
.end method

.method public setAnimationOffset(II)V
    .locals 0
    .parameter "nOffsetX"
    .parameter "nOffsetY"

    .prologue
    .line 24
    iput p1, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    .line 25
    iput p2, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    .line 26
    return-void
.end method
