.class public Lcom/htc/launcher/Workspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/launcher/Workspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I

.field focus:Lcom/htc/launcher/Workspace$FocusState;

.field mPreviousLocal:I

.field mPreviousSkin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3499
    new-instance v0, Lcom/htc/launcher/Workspace$SavedState$1;

    invoke-direct {v0}, Lcom/htc/launcher/Workspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/htc/launcher/Workspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 3471
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3456
    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    .line 3457
    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    .line 3458
    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    .line 3463
    new-instance v0, Lcom/htc/launcher/Workspace$FocusState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/launcher/Workspace$FocusState;-><init>(Lcom/htc/launcher/Workspace$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    .line 3472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    .line 3473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    .line 3474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    .line 3478
    iget-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/launcher/Workspace$FocusState;->cellX:I

    .line 3479
    iget-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/launcher/Workspace$FocusState;->cellY:I

    .line 3480
    iget-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/launcher/Workspace$FocusState;->id:I

    .line 3482
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/launcher/Workspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3455
    invoke-direct {p0, p1}, Lcom/htc/launcher/Workspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "superState"

    .prologue
    const/4 v0, -0x1

    .line 3467
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3456
    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    .line 3457
    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    .line 3458
    iput v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    .line 3463
    new-instance v0, Lcom/htc/launcher/Workspace$FocusState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/launcher/Workspace$FocusState;-><init>(Lcom/htc/launcher/Workspace$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    .line 3468
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 3486
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3487
    iget v0, p0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3488
    iget v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3489
    iget v0, p0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3493
    iget-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    iget v0, v0, Lcom/htc/launcher/Workspace$FocusState;->cellX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3494
    iget-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    iget v0, v0, Lcom/htc/launcher/Workspace$FocusState;->cellY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3495
    iget-object v0, p0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    iget v0, v0, Lcom/htc/launcher/Workspace$FocusState;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3497
    return-void
.end method
