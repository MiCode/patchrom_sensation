.class Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SoundEffectAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SoundEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btn:Landroid/widget/Button;

.field checked:Landroid/widget/CheckedTextView;

.field effectIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/htc/music/widget/SoundEffectAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SoundEffectAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object p1, p0, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->this$0:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Landroid/widget/Button;

    .line 48
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
