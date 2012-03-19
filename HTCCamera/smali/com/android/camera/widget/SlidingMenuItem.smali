.class public Lcom/android/camera/widget/SlidingMenuItem;
.super Ljava/lang/Object;
.source "SlidingMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    }
.end annotation


# instance fields
.field private m_Highlighted:Z

.field private m_ID:I

.field private m_Image:Landroid/graphics/drawable/Drawable;

.field private m_PropertyChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_Text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "image"
    .parameter "text"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    .line 43
    iput p1, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_ID:I

    .line 44
    iput-object p2, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Image:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object p3, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Text:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method


# virtual methods
.method public addOnPropertyChangedListener(Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_ID:I

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public highlight(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 107
    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Highlighted:Z

    if-eq p1, v2, :cond_0

    .line 109
    iput-boolean p1, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Highlighted:Z

    .line 110
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

    .line 111
    .local v1, listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    invoke-interface {v1, p0}, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;->onHighlightedChanged(Lcom/android/camera/widget/SlidingMenuItem;)V

    goto :goto_0

    .line 113
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    :cond_0
    return-void
.end method

.method public isHighlighted()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Highlighted:Z

    return v0
.end method

.method public removeOnPropertyChangedListener(Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setID(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 138
    iget v2, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_ID:I

    .line 139
    .local v2, oldID:I
    iput p1, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_ID:I

    .line 140
    iget-object v3, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

    .line 141
    .local v1, listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    invoke-interface {v1, p0, v2}, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;->onIDChanged(Lcom/android/camera/widget/SlidingMenuItem;I)V

    goto :goto_0

    .line 142
    .end local v1           #listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Image:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

    .line 155
    .local v1, listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    invoke-interface {v1, p0}, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;->onImageChanged(Lcom/android/camera/widget/SlidingMenuItem;)V

    goto :goto_0

    .line 156
    .end local v1           #listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_Text:Ljava/lang/CharSequence;

    .line 168
    iget-object v2, p0, Lcom/android/camera/widget/SlidingMenuItem;->m_PropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;

    .line 169
    .local v1, listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    invoke-interface {v1, p0}, Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;->onTextChanged(Lcom/android/camera/widget/SlidingMenuItem;)V

    goto :goto_0

    .line 170
    .end local v1           #listener:Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;
    :cond_0
    return-void
.end method
