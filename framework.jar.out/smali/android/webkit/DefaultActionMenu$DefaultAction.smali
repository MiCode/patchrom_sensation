.class Landroid/webkit/DefaultActionMenu$DefaultAction;
.super Ljava/lang/Object;
.source "DefaultActionMenu.java"

# interfaces
.implements Lcom/htc/textselection/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/DefaultActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultAction"
.end annotation


# instance fields
.field aID:I

.field gID:I

.field icon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/webkit/DefaultActionMenu;

.field title:Ljava/lang/CharSequence;

.field visible:Z


# direct methods
.method public constructor <init>(Landroid/webkit/DefaultActionMenu;II)V
    .locals 1
    .parameter
    .parameter "group"
    .parameter "id"

    .prologue
    .line 74
    iput-object p1, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->this$0:Landroid/webkit/DefaultActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->visible:Z

    .line 75
    iput p2, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->gID:I

    .line 76
    iput p3, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->aID:I

    .line 77
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->gID:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->aID:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->visible:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 104
    iput-object p1, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->title:Ljava/lang/CharSequence;

    .line 105
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/webkit/DefaultActionMenu$DefaultAction;->visible:Z

    .line 109
    return-void
.end method
