.class public Lcom/android/camera/widget/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;,
        Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field public static final DOCK_BOTTOM:I = 0x4

.field public static final DOCK_LEFT:I = 0x1

.field public static final DOCK_RIGHT:I = 0x3

.field public static final DOCK_TOP:I = 0x2


# instance fields
.field private m_Dock:I

.field private m_FirstItemBackground:Landroid/graphics/drawable/Drawable;

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_IsOpen:Z

.field private m_ItemBackground:Landroid/graphics/drawable/Drawable;

.field private m_ItemChangedListener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

.field private m_ItemViewClickListener:Landroid/view/View$OnClickListener;

.field private m_ItemViews:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/widget/SlidingMenuItem;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_ItemsContainer:Landroid/widget/LinearLayout;

.field private m_OnItemClickListener:Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;

.field private m_OnMenuStateChangedListener:Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;

.field private m_Resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v2, -0x2

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput v3, p0, Lcom/android/camera/widget/SlidingMenu;->m_Dock:I

    .line 39
    new-instance v0, Lcom/android/camera/widget/SlidingMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SlidingMenu$1;-><init>(Lcom/android/camera/widget/SlidingMenu;)V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemChangedListener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

    .line 66
    new-instance v0, Lcom/android/camera/widget/SlidingMenu$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SlidingMenu$2;-><init>(Lcom/android/camera/widget/SlidingMenu;)V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemViewClickListener:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Resources:Landroid/content/res/Resources;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Inflater:Landroid/view/LayoutInflater;

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/SlidingMenu;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingMenu;->updateItemsContainerMargins()V

    .line 107
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingMenu;->loadItemBackgrounds()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SlidingMenu;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SlidingMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingMenu;->updateItemViewBackground(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SlidingMenu;)Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnItemClickListener:Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;

    return-object v0
.end method

.method private loadItemBackgrounds()V
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Dock:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Resources:Landroid/content/res/Resources;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_FirstItemBackground:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Resources:Landroid/content/res/Resources;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateItemViewBackground(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/SlidingMenuItem;

    .line 383
    .local v2, item:Lcom/android/camera/widget/SlidingMenuItem;
    const v3, 0x7f080197

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 385
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingMenuItem;->isHighlighted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemBackground:Landroid/graphics/drawable/Drawable;

    .line 394
    .local v0, background:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    return-void

    .line 390
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_FirstItemBackground:Landroid/graphics/drawable/Drawable;

    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 393
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private updateItemViewLayout(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f0b00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 432
    .local v1, margin:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 433
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_Dock:I

    packed-switch v2, :pswitch_data_0

    .line 446
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    return-void

    .line 437
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    :goto_1
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_FirstItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateItemsContainerMargins()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 406
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_Dock:I

    packed-switch v1, :pswitch_data_0

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    return-void

    .line 411
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_Resources:Landroid/content/res/Resources;

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addItem(Lcom/android/camera/widget/SlidingMenuItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_Inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemChangedListener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

    invoke-virtual {p1, v1}, Lcom/android/camera/widget/SlidingMenuItem;->addOnPropertyChangedListener(Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;)V

    .line 130
    const v1, 0x7f080197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->updateItemViewBackground(Landroid/view/View;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->updateItemViewLayout(Landroid/view/View;)V

    .line 136
    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/widget/SlidingMenuItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/widget/SlidingMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->close(I)V

    .line 150
    return-void
.end method

.method public close(I)V
    .locals 6
    .parameter "duration"

    .prologue
    .line 154
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_IsOpen:Z

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnMenuStateChangedListener:Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnMenuStateChangedListener:Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;->onClosing(Lcom/android/camera/widget/SlidingMenu;)V

    .line 162
    :cond_1
    if-lez p1, :cond_2

    .line 165
    iget v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Dock:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    const/4 v1, 0x0

    .line 182
    .local v1, to:I
    :goto_1
    const-wide/16 v2, 0x0

    int-to-long v4, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 191
    .end local v1           #to:I
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_IsOpen:Z

    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v1, 0x2

    .line 172
    .restart local v1       #to:I
    goto :goto_1

    .line 174
    .end local v1           #to:I
    :pswitch_2
    const/4 v1, 0x1

    .line 175
    .restart local v1       #to:I
    goto :goto_1

    .line 177
    .end local v1           #to:I
    :pswitch_3
    const/4 v1, 0x3

    .line 178
    .restart local v1       #to:I
    goto :goto_1

    .line 186
    .end local v1           #to:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingMenu;->clearAnimation()V

    .line 187
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->setVisibility(I)V

    goto :goto_2

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItem(I)Lcom/android/camera/widget/SlidingMenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingMenuItem;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_IsOpen:Z

    return v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->open(I)V

    .line 252
    return-void
.end method

.method public open(I)V
    .locals 6
    .parameter "duration"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_IsOpen:Z

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnMenuStateChangedListener:Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnMenuStateChangedListener:Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;->onOpening(Lcom/android/camera/widget/SlidingMenu;)V

    .line 265
    :cond_1
    iget v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_Dock:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    const/4 v1, 0x0

    .line 282
    .local v1, from:I
    :goto_1
    const-wide/16 v2, 0x0

    int-to-long v4, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_IsOpen:Z

    goto :goto_0

    .line 271
    .end local v1           #from:I
    :pswitch_1
    const/4 v1, 0x2

    .line 272
    .restart local v1       #from:I
    goto :goto_1

    .line 274
    .end local v1           #from:I
    :pswitch_2
    const/4 v1, 0x1

    .line 275
    .restart local v1       #from:I
    goto :goto_1

    .line 277
    .end local v1           #from:I
    :pswitch_3
    const/4 v1, 0x3

    .line 278
    .restart local v1       #from:I
    goto :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setItemOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenu;->m_ItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 300
    .local v0, container:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 297
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 325
    .end local v0           #container:Lcom/android/camera/rotate/RotateRelativeLayout;
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnItemClickListener:Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;

    .line 337
    return-void
.end method

.method public setOnMenuStateChangedListener(Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/camera/widget/SlidingMenu;->m_OnMenuStateChangedListener:Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;

    .line 349
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingMenu;->toggle(I)V

    .line 361
    return-void
.end method

.method public toggle(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingMenu;->m_IsOpen:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/SlidingMenu;->close(I)V

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/SlidingMenu;->open(I)V

    goto :goto_0
.end method
