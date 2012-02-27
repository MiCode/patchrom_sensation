.class Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "TelephonyProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrossProcessCursorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "cursor"

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    .line 1508
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1509
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4
    .parameter "position"
    .parameter "window"

    .prologue
    .line 1518
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->getCount()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1523
    add-int/lit8 v3, p1, -0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->moveToPosition(I)Z

    .line 1524
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 1525
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 1526
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    .line 1527
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 1528
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1529
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1530
    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, field:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1532
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1533
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1544
    .end local v0           #columnNum:I
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :catch_0
    move-exception v3

    .line 1546
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 1537
    .restart local v0       #columnNum:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1538
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1546
    .end local v0           #columnNum:I
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v3

    .line 1529
    .restart local v0       #columnNum:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1546
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 1552
    const/4 v0, 0x0

    return v0
.end method
