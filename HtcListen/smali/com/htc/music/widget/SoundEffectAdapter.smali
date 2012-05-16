.class public Lcom/htc/music/widget/SoundEffectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundEffectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;,
        Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[SoundEffectAdapter]"

.field private static mShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mColorDisableText:I

.field mColorEnableText:I

.field mColorStateDisableText:Landroid/content/res/ColorStateList;

.field mColorStateEnableText:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListVisibleCount:I

.field private mResource:Landroid/content/res/Resources;

.field private mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "_context"
    .parameter "_resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, _items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/SoundEffectItem;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    .line 38
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    .line 41
    iput v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorEnableText:I

    .line 42
    iput v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    .line 43
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateEnableText:Landroid/content/res/ColorStateList;

    .line 44
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateDisableText:Landroid/content/res/ColorStateList;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object p3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Lcom/htc/music/widget/SoundEffectAdapter;->refineList()V

    .line 71
    iput-object p1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorEnableText:I

    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    .line 77
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateEnableText:Landroid/content/res/ColorStateList;

    .line 78
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateDisableText:Landroid/content/res/ColorStateList;

    .line 79
    return-void
.end method

.method public static getRealListPos(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 276
    sget-object v2, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    sget-object v2, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 281
    .local v0, realPos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private setButtonState(Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;Lcom/htc/music/util/SoundEffectItem;Landroid/view/View;)V
    .locals 6
    .parameter "holder"
    .parameter "item"
    .parameter "convertView"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    iget-boolean v1, p2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    iget-object v2, p2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 188
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    iget-object v2, p2, Lcom/htc/music/util/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-boolean v1, p2, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mContext:Landroid/content/Context;

    const-string v2, "common_pulldown"

    const v3, 0x2080075

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, backgroundResId:I
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 193
    iget-boolean v1, p2, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    iget v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorEnableText:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 203
    :goto_1
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 211
    :goto_2
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0a0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0a0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    iget v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 205
    .end local v0           #backgroundResId:I
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mContext:Landroid/content/Context;

    const-string v2, "common_pulldown_disable"

    const v3, 0x2080791

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .restart local v0       #backgroundResId:I
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 207
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    iget v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 209
    iget-object v1, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 221
    iget v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mListVisibleCount:I

    if-ge v1, v0, :cond_0

    .line 222
    iget v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mListVisibleCount:I

    .line 224
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {p1}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v0

    .line 229
    .local v0, realListPos:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 236
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-static {p1}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v0

    .line 241
    .local v0, realListPos:I
    if-gez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v1}, Lcom/htc/music/util/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    const-string v5, "[SoundEffectAdapter]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- getView, position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " +++"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v4

    .line 86
    .local v4, realListPos:I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    :cond_0
    move-object v0, p2

    .line 172
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 90
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/SoundEffectItem;

    .line 93
    .local v3, item:Lcom/htc/music/util/SoundEffectItem;
    if-nez p2, :cond_4

    .line 94
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03005c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SoundEffectAdapter;)V

    .line 97
    .local v1, holder:Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    const v5, 0x7f0800e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    .line 98
    const v5, 0x7f0800cb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    .line 99
    const v5, 0x7f0800e5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    .line 101
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    const-string v5, "[SoundEffectAdapter]"

    const-string v6, "convertView = null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_1
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 109
    iget v5, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    if-lez v5, :cond_7

    .line 110
    iget-object v5, v3, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    const-string v6, "Beats audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    iget v6, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 112
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 113
    iget-boolean v5, v3, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v5, :cond_5

    .line 114
    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 119
    :goto_2
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_3
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :goto_4
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iget-object v6, v3, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-boolean v5, v3, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v5, :cond_9

    .line 143
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 144
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 145
    :cond_3
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 146
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iget-object v6, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateEnableText:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    invoke-virtual {p2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    :goto_5
    iget-boolean v5, v3, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v5, :cond_b

    .line 160
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 161
    new-instance v5, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    invoke-direct {v5, p0}, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;-><init>(Lcom/htc/music/widget/SoundEffectAdapter;)V

    iput-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    .line 162
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    iget-object v6, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iput-object v6, v5, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->checked:Landroid/widget/CheckedTextView;

    .line 163
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    iput-object v3, v5, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->item:Lcom/htc/music/util/SoundEffectItem;

    .line 168
    :goto_6
    invoke-direct {p0, v1, v3, p2}, Lcom/htc/music/widget/SoundEffectAdapter;->setButtonState(Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;Lcom/htc/music/util/SoundEffectItem;Landroid/view/View;)V

    move-object v0, p2

    .line 172
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 104
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #holder:Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    .restart local p2
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    goto :goto_1

    .line 117
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/16 v5, 0x6e

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 123
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    iget v6, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 129
    :cond_7
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    const-string v5, "[SoundEffectAdapter]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item.mEffectIconResId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 135
    :cond_8
    const-string v5, "[SoundEffectAdapter]"

    const-string v6, "holder.effectIcon = null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 150
    :cond_9
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    .line 151
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 153
    :cond_a
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iget-object v6, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateDisableText:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 155
    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 165
    :cond_b
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_6
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/htc/music/widget/SoundEffectAdapter;->refineList()V

    .line 252
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 253
    return-void
.end method

.method public refineList()V
    .locals 5

    .prologue
    .line 256
    iget-object v3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 257
    .local v1, listLen:I
    if-gtz v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v2, 0x0

    .line 262
    .local v2, visibleCount:I
    sget-object v3, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    sget-object v3, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 265
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 266
    iget-object v3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/SoundEffectItem;

    iget-boolean v3, v3, Lcom/htc/music/util/SoundEffectItem;->mIsVisible:Z

    if-eqz v3, :cond_2

    .line 267
    sget-object v3, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_3
    iput v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mListVisibleCount:I

    goto :goto_0
.end method
