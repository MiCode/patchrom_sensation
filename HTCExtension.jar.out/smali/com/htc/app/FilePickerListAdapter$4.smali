.class Lcom/htc/app/FilePickerListAdapter$4;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$4;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$4;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 884
    return-void
.end method
