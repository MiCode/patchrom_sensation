.class Landroid/webkit/DefaultActionMenu;
.super Ljava/lang/Object;
.source "DefaultActionMenu.java"

# interfaces
.implements Lcom/htc/textselection/ActionMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/DefaultActionMenu$DefaultAction;
    }
.end annotation


# instance fields
.field allActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/textselection/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    .line 68
    return-void
.end method


# virtual methods
.method public addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;
    .locals 2
    .parameter "group"
    .parameter "id"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 24
    new-instance v0, Landroid/webkit/DefaultActionMenu$DefaultAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/DefaultActionMenu$DefaultAction;-><init>(Landroid/webkit/DefaultActionMenu;II)V

    .line 26
    .local v0, a:Lcom/htc/textselection/Action;
    invoke-interface {v0, p4}, Lcom/htc/textselection/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-interface {v0, p3}, Lcom/htc/textselection/Action;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method

.method clearMenu()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 20
    return-void
.end method

.method public getAction(II)Lcom/htc/textselection/Action;
    .locals 4
    .parameter "group"
    .parameter "id"

    .prologue
    .line 34
    iget-object v3, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    const/4 v2, 0x0

    .line 37
    .local v2, ret:Lcom/htc/textselection/Action;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .line 39
    .local v0, a:Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getGroupID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 42
    move-object v2, v0

    .line 46
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    return-object v2
.end method

.method getActions()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/textselection/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    return-object v0
.end method

.method public removeAction(II)V
    .locals 2
    .parameter "group"
    .parameter "id"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/webkit/DefaultActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 51
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public setGroupVisibility(IZ)V
    .locals 3
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 57
    iget-object v2, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .line 61
    .local v0, a:Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->getGroupID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 62
    invoke-interface {v0, p2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0

    .line 65
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    return-void
.end method
