.class public Lcom/htc/album/modules/ui/widget/BubbleButton;
.super Lcom/htc/album/modules/ui/widget/ControlButton;
.source "BubbleButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<",
        "Lcom/htc/widget/HtcListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImage:Lcom/htc/widget/HtcListItemImageButton;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResource:I

.field private mText:Lcom/htc/widget/HtcListItem2LineText;

.field private mTextResource:I

.field private mTextString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/BubbleButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/widget/HtcListItem;III)V
    .locals 2
    .parameter "btn"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "style"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;-><init>(Landroid/view/View;III)V

    .line 26
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 27
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 28
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    .line 30
    iput v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    .line 31
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method


# virtual methods
.method public getContentView()Lcom/htc/widget/HtcListItem;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method public loadDataToView(Lcom/htc/album/modules/ui/widget/BubbleButton;)V
    .locals 1
    .parameter "bubble"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 90
    :cond_1
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextResource(I)V

    goto :goto_1

    .line 95
    :cond_2
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public loadDataToView(Lcom/htc/widget/HtcListItem;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 65
    const v0, 0x7f0a000b

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 66
    const v0, 0x7f0a000c

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 67
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_1
    invoke-virtual {p1, p0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    iget v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public setContentView(Lcom/htc/widget/HtcListItem;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    .line 53
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 54
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->loadDataToView(Lcom/htc/album/modules/ui/widget/BubbleButton;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 135
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 141
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 119
    if-gtz p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_1

    .line 124
    iput p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 100
    if-gtz p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_1

    .line 104
    iput p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method
