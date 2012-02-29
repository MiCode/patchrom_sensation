.class public Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "HtcWrapSimpleCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 42
    return-void
.end method


# virtual methods
.method public getAutoRequery()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method public getDataValid()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mDataValid:Z

    return v0
.end method

.method public setAutoRequery(Z)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mAutoRequery:Z

    .line 58
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 62
    return-void
.end method

.method public setDataValid(Z)V
    .locals 0
    .parameter "dv"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mDataValid:Z

    .line 50
    return-void
.end method
