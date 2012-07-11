.class Lcom/htc/app/FilePickerActivity$9;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity;->ListViewOnStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$9;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$9;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->loadFiles()V
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$900(Lcom/htc/app/FilePickerActivity;)V

    .line 994
    return-void
.end method
