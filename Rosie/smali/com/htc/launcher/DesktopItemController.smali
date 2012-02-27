.class public Lcom/htc/launcher/DesktopItemController;
.super Ljava/lang/Object;
.source "DesktopItemController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/DesktopItemController$FloatingEnv;,
        Lcom/htc/launcher/DesktopItemController$LaunchShortcutRunnable;,
        Lcom/htc/launcher/DesktopItemController$FxWidgetRunnable;
    }
.end annotation


# static fields
.field static final EXTRA_CUSTOM_WIDGET:Ljava/lang/String; = "custom_widget"

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field public static final FXWIDGET_PICKER_EXTRA_KEY_PREFIX:Ljava/lang/String; = "com.htc.launcher.intent"

.field public static final FXWIDGET_PICKER_EXTRA_KEY_PROVIDER_NAME:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

.field public static final FXWIDGET_PICKER_EXTRA_KEY_STYLE_ID:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_STYLE_ID"

.field public static final FXWIDGET_PICKER_EXTRA_KEY_STYLE_NAME:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

.field public static final FXWIDGET_PICKER_EXTRA_KEY_WIDGET_PROVIDER_ARRAY:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

.field private static final LOG_TAG:Ljava/lang/String; = "DesktopItemController"

.field private static final MSG_BINDING_FXITEMS:I = 0x514

.field private static final MSG_FLUSH_TASKS:I = 0x515

.field private static final RUNTIME_STATE_PENDING_ADD_OCCUPIED_CELLS:Ljava/lang/String; = "launcher.add_occupied_cells"

.field static final SEARCH_WIDGET:Ljava/lang/String; = "search_widget"

.field private static final localLOGD:Z


# instance fields
.field private final DELAY_START_ACTIVITY:I

.field public IS_EXTERNAL_APP_ADDING:Z

.field private final mCellCoordinates:[I

.field private mDragView:Landroid/widget/TextView;

.field private mDragger:Lcom/htc/launcher/DragController;

.field private mFloatingBounds:Landroid/graphics/RectF;

.field private mFloatingFxItem:Lcom/htc/launcher/FxItem;

.field private mFloatingPos:[I

.field private mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

.field private mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsStartDrag:Z

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

.field private mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

.field mOnClickFolderListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

.field mOnClickShortcutListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

.field mOnLeapRearrangeCompleteHandler:Landroid/os/Handler;

.field private mPendingAddInScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAddToFxScreenTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSyncPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerDragSource:Lcom/htc/launcher/DragSource;

.field public mPickerDragSourceLegacy:Lcom/htc/launcher/DragSource;

.field private mSlideController:Lcom/htc/launcher/SlideController;

.field private mTempSyncedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/htc/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/DesktopItemController;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/HostWidgetManager;Lcom/htc/launcher/SlideController;)V
    .locals 3
    .parameter "launcher"
    .parameter "workspace"
    .parameter "fxWorkspace"
    .parameter "hostWidgetManager"
    .parameter "slideController"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 51
    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 52
    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 53
    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    .line 54
    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mSlideController:Lcom/htc/launcher/SlideController;

    .line 56
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mCellCoordinates:[I

    .line 82
    const/16 v0, 0x96

    iput v0, p0, Lcom/htc/launcher/DesktopItemController;->DELAY_START_ACTIVITY:I

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddInScreens:Ljava/util/ArrayList;

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    .line 1332
    new-instance v0, Lcom/htc/launcher/DesktopItemController$5;

    invoke-direct {v0, p0}, Lcom/htc/launcher/DesktopItemController$5;-><init>(Lcom/htc/launcher/DesktopItemController;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mOnClickFolderListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    .line 1368
    new-instance v0, Lcom/htc/launcher/DesktopItemController$7;

    invoke-direct {v0, p0}, Lcom/htc/launcher/DesktopItemController$7;-><init>(Lcom/htc/launcher/DesktopItemController;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mOnClickShortcutListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    .line 1531
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingPos:[I

    .line 1532
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingBounds:Landroid/graphics/RectF;

    .line 1657
    new-instance v0, Lcom/htc/launcher/DesktopItemController$9;

    invoke-direct {v0, p0}, Lcom/htc/launcher/DesktopItemController$9;-><init>(Lcom/htc/launcher/DesktopItemController;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPickerDragSource:Lcom/htc/launcher/DragSource;

    .line 1674
    new-instance v0, Lcom/htc/launcher/DesktopItemController$10;

    invoke-direct {v0, p0}, Lcom/htc/launcher/DesktopItemController$10;-><init>(Lcom/htc/launcher/DesktopItemController;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPickerDragSourceLegacy:Lcom/htc/launcher/DragSource;

    .line 1753
    new-instance v0, Lcom/htc/launcher/DesktopItemController$11;

    invoke-direct {v0, p0}, Lcom/htc/launcher/DesktopItemController$11;-><init>(Lcom/htc/launcher/DesktopItemController;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mOnLeapRearrangeCompleteHandler:Landroid/os/Handler;

    .line 1763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/DesktopItemController;->IS_EXTERNAL_APP_ADDING:Z

    .line 2026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    .line 2027
    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 61
    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 62
    iput-object p3, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 63
    iput-object p4, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    .line 64
    iput-object p5, p0, Lcom/htc/launcher/DesktopItemController;->mSlideController:Lcom/htc/launcher/SlideController;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/DesktopItemController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/DesktopItemController;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/launcher/DesktopItemController;->flushTasks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/launcher/DesktopItemController;->localLOGD:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/FxItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxItem;)Lcom/htc/launcher/FxItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/DesktopItemController$FloatingEnv;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    return-object v0
.end method

.method private addFxItemToDesktop(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;IIIII)Z
    .locals 9
    .parameter "wi"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 337
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DesktopItemController.addFxItemToDesktop - 2 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v8, Lcom/htc/launcher/FxItemInfo;

    invoke-direct {v8, p1}, Lcom/htc/launcher/FxItemInfo;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    .line 339
    .local v8, info:Lcom/htc/launcher/FxItemInfo;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->getWidgetScene(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/htc/launcher/FxItem;->create(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;

    move-result-object v1

    .local v1, fxItem:Lcom/htc/launcher/FxItem;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 340
    invoke-direct/range {v0 .. v6}, Lcom/htc/launcher/DesktopItemController;->addFxItemToDesktop(Lcom/htc/launcher/FxItem;IIIII)Z

    move-result v7

    .line 341
    .local v7, added:Z
    if-nez v7, :cond_0

    .line 342
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to add widget:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG]# DesktopItemController.addFxItemToDesktop - 2 - removeWidget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeWidget(I)V

    .line 347
    :cond_0
    return v7
.end method

.method private addFxItemToDesktop(Lcom/htc/launcher/FxItem;IIIII)Z
    .locals 7
    .parameter "item"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 328
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] DesktopItemController.addFxItemToDesktop - 1 ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v2

    .line 330
    .local v2, id:J
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-direct {v5, p3, p4, p5, p6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    move v1, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v6

    .line 332
    .local v6, added:Z
    return v6
.end method

.method private addFxShortcutToDesktop(Lcom/htc/launcher/FxShortcutInfo;)Z
    .locals 11
    .parameter "info"

    .prologue
    .line 1787
    if-nez p1, :cond_0

    .line 1788
    const/4 v6, 0x0

    .line 1806
    :goto_0
    return v6

    .line 1789
    :cond_0
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] DesktopItemController.addFxShortcutToDesktop ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/htc/launcher/FxShortcutInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/launcher/FxShortcutInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/FxItem;

    .local v4, fxItem:Lcom/htc/launcher/FxItem;
    move-object v0, v4

    .line 1793
    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {p1, v0}, Lcom/htc/launcher/FxShortcutInfo;->setObserver(Lcom/htc/launcher/FxShortcutInfo$Observer;)V

    .line 1794
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v1, p1, Lcom/htc/launcher/FxShortcutInfo;->screen:I

    iget-wide v2, p1, Lcom/htc/launcher/FxShortcutInfo;->id:J

    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v7, p1, Lcom/htc/launcher/FxShortcutInfo;->cellX:I

    iget v8, p1, Lcom/htc/launcher/FxShortcutInfo;->cellY:I

    iget v9, p1, Lcom/htc/launcher/FxShortcutInfo;->spanX:I

    iget v10, p1, Lcom/htc/launcher/FxShortcutInfo;->spanY:I

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v6

    .line 1796
    .local v6, added:Z
    if-eqz v6, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, v4}, Lcom/htc/android/rosie/home/HostWidgetManager;->addFxShortcutItem(Lcom/htc/launcher/FxItem;)Z

    .line 1798
    iget v0, p1, Lcom/htc/launcher/FxShortcutInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1800
    check-cast v4, Lcom/htc/launcher/FolderIcon;

    .end local v4           #fxItem:Lcom/htc/launcher/FxItem;
    invoke-virtual {v4}, Lcom/htc/launcher/FolderIcon;->updateShortcutIcon()V

    .line 1804
    :cond_1
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] DesktopItemController.addFxShortcutToDesktop ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/htc/launcher/FxShortcutInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") added("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v1, "topic_tag-home_screen-add_icons_shortcuts"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->showMeWidget(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearFloating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1550
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v0, v1}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onPoof(Lcom/htc/launcher/Draggee;)Z

    .line 1552
    iput-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 1555
    :cond_0
    iput-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    .line 1556
    iput-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    .line 1557
    return-void
.end method

.method private createShortcut(Lcom/htc/launcher/ApplicationInfo;)Landroid/view/View;
    .locals 3
    .parameter "info"

    .prologue
    .line 648
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/htc/launcher/ApplicationInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v0

    .line 649
    .local v0, draggee:Lcom/htc/launcher/Draggee;
    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private findRoomInWorkspace(IILcom/htc/launcher/CellInfo;[I)Z
    .locals 4
    .parameter "spanX"
    .parameter "spanY"
    .parameter "cellInfo"
    .parameter "xy"

    .prologue
    .line 488
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/htc/launcher/DesktopItemController;->findSlot(Lcom/htc/launcher/CellInfo;[III)Z

    move-result v0

    .line 489
    .local v0, here:Z
    if-nez v0, :cond_0

    .line 490
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, p4, v2

    aput v3, p4, v1

    .line 492
    :cond_0
    return v0
.end method

.method private flushTasks(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, tasks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    const/4 v1, 0x0

    .line 989
    .local v1, next:Ljava/lang/Runnable;
    monitor-enter p1

    .line 990
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 991
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 992
    :cond_0
    monitor-exit p1

    .line 994
    if-nez v1, :cond_1

    .line 995
    return-void

    .line 992
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 997
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getLegacyLayoutWithId(IJ)Lcom/htc/fusion/fx/FxScene;
    .locals 10
    .parameter "screen"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 1496
    iget-object v8, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v8, p1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 1497
    .local v1, cl:Lcom/htc/launcher/CellLayout;
    iget-object v5, v1, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    .line 1498
    .local v5, removed:[Landroid/view/View;
    if-nez v5, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return-object v7

    .line 1501
    :cond_1
    array-length v0, v5

    .line 1502
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 1503
    aget-object v6, v5, v2

    .line 1504
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_2

    instance-of v8, v6, Lcom/htc/launcher/LegacyLayout;

    if-eqz v8, :cond_2

    move-object v4, v6

    .line 1505
    check-cast v4, Lcom/htc/launcher/LegacyLayout;

    .line 1506
    .local v4, ll:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v4}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/ItemInfo;

    .line 1507
    .local v3, info:Lcom/htc/launcher/ItemInfo;
    iget-wide v8, v3, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v8, v8, p2

    if-nez v8, :cond_2

    .line 1508
    invoke-virtual {v4}, Lcom/htc/launcher/LegacyLayout;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    goto :goto_0

    .line 1502
    .end local v3           #info:Lcom/htc/launcher/ItemInfo;
    .end local v4           #ll:Lcom/htc/launcher/LegacyLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static onAppWidgetOrientationChanged(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Landroid/appwidget/AppWidgetManager;Lcom/htc/launcher/LauncherAppWidgetHost;IZ)V
    .locals 17
    .parameter "launcher"
    .parameter "workspace"
    .parameter "appWidgetManager"
    .parameter "appWidgetHost"
    .parameter "screen"
    .parameter "screenOnly"

    .prologue
    .line 1437
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v15, pendingActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v10

    .line 1439
    .local v10, counti:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_5

    .line 1440
    if-eqz p5, :cond_0

    move/from16 v0, p4

    if-ne v12, v0, :cond_1

    :cond_0
    if-nez p5, :cond_2

    move/from16 v0, p4

    if-ne v12, v0, :cond_2

    .line 1439
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1444
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1445
    .local v16, temp:Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/htc/launcher/CellLayout;

    if-eqz v1, :cond_1

    move-object/from16 v8, v16

    .line 1447
    check-cast v8, Lcom/htc/launcher/CellLayout;

    .line 1448
    .local v8, cell:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v8}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v11

    .line 1449
    .local v11, countj:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    if-ge v14, v11, :cond_1

    .line 1450
    invoke-virtual {v8, v14}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1451
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 1452
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 1453
    .local v3, item:Lcom/htc/launcher/LauncherAppWidgetInfo;
    sget-boolean v1, Lcom/htc/launcher/DesktopItemController;->localLOGD:Z

    if-eqz v1, :cond_3

    const-string v1, "DesktopItemController"

    const-string v2, "will re-create app widget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_3
    new-instance v1, Lcom/htc/launcher/DesktopItemController$8;

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/htc/launcher/DesktopItemController$8;-><init>(Landroid/appwidget/AppWidgetManager;Lcom/htc/launcher/LauncherAppWidgetInfo;Lcom/htc/launcher/LauncherAppWidgetHost;Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Landroid/view/View;Lcom/htc/launcher/CellLayout;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    .end local v3           #item:Lcom/htc/launcher/LauncherAppWidgetInfo;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1486
    .end local v7           #view:Landroid/view/View;
    .end local v8           #cell:Lcom/htc/launcher/CellLayout;
    .end local v11           #countj:I
    .end local v14           #j:I
    .end local v16           #temp:Landroid/view/View;
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    .line 1487
    .local v9, action:Ljava/lang/Runnable;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1489
    .end local v9           #action:Ljava/lang/Runnable;
    :cond_6
    return-void
.end method

.method private prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .parameter "name"
    .parameter "icon"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 737
    const-string v1, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareDragView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 739
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    .line 740
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 742
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 744
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 747
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, p2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 751
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isDrawingCacheEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 753
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mDragView:Landroid/widget/TextView;

    return-object v1
.end method

.method private putFxItemInTheAir(Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z
    .locals 2
    .parameter "item"
    .parameter "pos"

    .prologue
    .line 294
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] putFxItemInTheAir()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] There is already something in the air"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 299
    :cond_0
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 300
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    invoke-interface {v0, p1, p2}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z

    move-result v0

    goto :goto_0
.end method

.method private reloadFxWidgetAsync(Lcom/htc/launcher/FxItemInfo;)V
    .locals 2
    .parameter "fxItemInfo"

    .prologue
    .line 1059
    if-nez p1, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/DesktopItemController$4;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/DesktopItemController$4;-><init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxItemInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeItemFromFolder(Ljava/lang/String;Lcom/htc/launcher/FolderInfo;)V
    .locals 9
    .parameter "packageName"
    .parameter "folderInfo"

    .prologue
    .line 1943
    iget-object v1, p2, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 1945
    .local v1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1946
    .local v7, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1947
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 1948
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    if-nez v0, :cond_1

    .line 1946
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1951
    :cond_1
    iget-object v5, v0, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1952
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 1955
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1956
    .local v6, name:Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1957
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1961
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #name:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 1962
    .restart local v0       #appInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {p2, v0}, Lcom/htc/launcher/FolderInfo;->remove(Lcom/htc/launcher/ApplicationInfo;)V

    goto :goto_2

    .line 1964
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_3
    iget-object v8, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8, p2}, Lcom/htc/launcher/Launcher;->checkAndReplaceFolderWithFinalItem(Lcom/htc/launcher/FolderInfo;)V

    .line 1965
    return-void
.end method

.method static setAddedItemViewProperties(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 636
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 637
    return-void
.end method

.method private startFloatingLegacy(Landroid/view/View;Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;ILandroid/graphics/RectF;)V
    .locals 5
    .parameter "view"
    .parameter "from"
    .parameter "info"
    .parameter "dragAction"
    .parameter "bounds"

    .prologue
    const/4 v4, 0x0

    .line 1570
    const-string v1, "DesktopItemController"

    const-string v2, "[EDIT_DEBUG] startFloatingLegacy()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-eqz v1, :cond_0

    .line 1572
    const-string v1, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is already someting floating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v3}, Lcom/htc/launcher/FxItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, p1}, Lcom/htc/launcher/Workspace;->wrapLegacyView(Landroid/view/View;)Lcom/htc/launcher/LegacyLayout;

    move-result-object v0

    .line 1577
    .local v0, ll:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/htc/launcher/FxItem;->create(Lcom/htc/fusion/fx/FxScene;Landroid/view/View;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 1578
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v1, v2, p5}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z

    .line 1579
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v1, v2, p5}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z

    .line 1581
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1, p3, v2}, Lcom/htc/launcher/Workspace;->setDraggeeItemInfo(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/Draggee;)V

    .line 1583
    instance-of v1, p2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v1, :cond_1

    .line 1584
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-interface {v1, v2, v3, p3, v4}, Lcom/htc/launcher/DragController;->prepareDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    .line 1588
    :goto_1
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->onDrag()V

    .line 1590
    instance-of v1, p2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v1, :cond_2

    .line 1591
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-interface {v1, v2, v3, p3, v4}, Lcom/htc/launcher/DragController;->startDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 1586
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v1, v2, p2, p3, v4}, Lcom/htc/launcher/DragController;->prepareDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_1

    .line 1593
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v1, v2, p2, p3, v4}, Lcom/htc/launcher/DragController;->startDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private startFloatingLegacyWidget(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;ILandroid/graphics/RectF;)V
    .locals 3
    .parameter "legacyLayout"
    .parameter "from"
    .parameter "info"
    .parameter "dragAction"
    .parameter "bounds"

    .prologue
    const/4 v2, 0x0

    .line 1597
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG]# startFloatingLegacyWidget()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/htc/launcher/DesktopItemController;->resumeRenderring()V

    .line 1600
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is already someting floating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-virtual {p1}, Lcom/htc/launcher/LegacyLayout;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/htc/launcher/FxItem;->create(Lcom/htc/fusion/fx/FxScene;Landroid/view/View;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 1605
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v0, v1, p5}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z

    .line 1606
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v0, v1, p5}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z

    .line 1607
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 1608
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/htc/launcher/DragController;->prepareDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    .line 1609
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->onDrag()V

    .line 1610
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/htc/launcher/DragController;->startDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x5

    const/4 v5, -0x1

    .line 352
    const-string v4, "appWidgetId"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 355
    .local v1, appWidgetId:I
    const-string v4, "custom_widget"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, customWidget:Ljava/lang/String;
    const-string v4, "search_widget"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 360
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getAddItemCellInfo()Lcom/htc/launcher/CellInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/launcher/DesktopItemController;->addSearch(Lcom/htc/launcher/CellInfo;)V

    .line 381
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 365
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 367
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 370
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4, v3, v6}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 377
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4, v6, v5, p1}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public addFolder(Z)Lcom/htc/launcher/FolderInfo;
    .locals 1
    .parameter "insertAtFirst"

    .prologue
    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFolder(ZLcom/htc/launcher/CellInfo;)Lcom/htc/launcher/FolderInfo;
    .locals 8
    .parameter "insertAtFirst"
    .parameter "cellInfo"

    .prologue
    const/4 v7, 0x0

    .line 593
    new-instance v1, Lcom/htc/launcher/FolderInfo;

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/htc/launcher/FolderInfo;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 595
    .local v1, folderInfo:Lcom/htc/launcher/FolderInfo;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p2, Lcom/htc/launcher/CellInfo;->screen:I

    .line 597
    iget v0, p2, Lcom/htc/launcher/CellInfo;->m_nContainer:I

    const/16 v2, -0x65

    if-ne v0, v2, :cond_0

    .line 598
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v2, -0x65

    iget v4, p2, Lcom/htc/launcher/CellInfo;->screen:I

    iget v5, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v6, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 601
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 617
    :goto_0
    return-object v1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v2, -0x64

    iget v4, p2, Lcom/htc/launcher/CellInfo;->screen:I

    iget v5, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v6, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 612
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 613
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 615
    invoke-direct {p0, v1}, Lcom/htc/launcher/DesktopItemController;->addFxShortcutToDesktop(Lcom/htc/launcher/FxShortcutInfo;)Z

    goto :goto_0
.end method

.method addFxShortcutAsync(Lcom/htc/launcher/FxShortcutInfo;)V
    .locals 2
    .parameter "appItemInfo"

    .prologue
    .line 1811
    if-nez p1, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return-void

    .line 1814
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/DesktopItemController$12;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/DesktopItemController$12;-><init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxShortcutInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFxWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V
    .locals 25
    .parameter "intent"
    .parameter "cellInfo"
    .parameter "resumeOnCurrentPage"

    .prologue
    .line 104
    const-string v5, "DesktopItemController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EDIT_DEBUG] addFxWidget() CellInfo:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 107
    .local v6, provider:Landroid/content/ComponentName;
    const-string v5, "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/content/ComponentName;

    .line 109
    .local v20, styleName:Landroid/content/ComponentName;
    const-string v5, "com.htc.launcher.intent.EXTRA_KEY_STYLE_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 110
    .local v19, styleId:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "DesktopItemController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FX widget: provider="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "style="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v7, 0x0

    .line 114
    .local v7, style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    if-eqz v6, :cond_2

    if-eqz v20, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->getStyleByComponent(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v7

    .line 123
    if-nez v7, :cond_3

    .line 124
    const-string v5, "DesktopItemController"

    const-string v8, "style definition error: style = null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const-string v5, "DesktopItemController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "style definition error: provider="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", style="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_3
    iget-object v5, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    if-nez v5, :cond_4

    .line 129
    const-string v5, "DesktopItemController"

    const-string v8, "style definition error: style.view = null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_4
    iget-object v5, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v0, v5, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    move/from16 v17, v0

    .local v17, spanX:I
    iget-object v5, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v0, v5, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    move/from16 v18, v0

    .line 135
    .local v18, spanY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DesktopItemController;->mCellCoordinates:[I

    move-object/from16 v22, v0

    .line 136
    .local v22, xy:[I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p2

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/launcher/DesktopItemController;->findRoomInWorkspace(IILcom/htc/launcher/CellInfo;[I)Z

    move-result v15

    .line 138
    .local v15, here:Z
    const-string v5, "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 139
    const-string v5, "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/htc/android/rosie/home/HostWidgetManager;->addWidget(Landroid/content/ComponentName;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;IIILandroid/content/Intent;)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v9

    .line 146
    .local v9, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-nez v9, :cond_5

    .line 147
    const-string v5, "DesktopItemController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to add Fusion widget: provider="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", style="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_5
    iget-object v5, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v13, v5, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    .local v13, w:I
    iget-object v5, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v14, v5, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    .line 154
    .local v14, h:I
    if-nez v15, :cond_8

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForSpan(II)Lcom/htc/launcher/CellInfo;

    move-result-object v21

    .line 158
    .local v21, vacantInfo:Lcom/htc/launcher/CellInfo;
    move-object/from16 v0, v21

    iget v5, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p2

    iput v5, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 159
    move-object/from16 v0, v21

    iget v5, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p2

    iput v5, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 160
    move-object/from16 v0, v21

    iget v5, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p2

    iput v5, v0, Lcom/htc/launcher/CellInfo;->screen:I

    .line 162
    move-object/from16 v0, p2

    iget v5, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p2

    iget v11, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {v9, v5, v8, v11}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->addToContainer(III)V

    .line 164
    invoke-virtual {v9}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getStoreId()J

    move-result-wide v11

    const-wide/16 v23, -0x1

    cmp-long v5, v11, v23

    if-nez v5, :cond_7

    .line 165
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_6

    const-string v5, "DesktopItemController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "store widget in DB:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v5, v9}, Lcom/htc/android/rosie/home/HostWidgetManager;->storeWidgetToDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z

    .line 173
    :goto_1
    move-object/from16 v0, p2

    iget v10, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p2

    iget v11, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/htc/launcher/DesktopItemController;->addFxItemToDesktop(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;IIIII)Z

    goto/16 :goto_0

    .line 168
    :cond_7
    const-string v5, "DesktopItemController"

    const-string v8, "Widget already in DB. Will update it!"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v5, v9}, Lcom/htc/android/rosie/home/HostWidgetManager;->updateWidgetInDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z

    goto :goto_1

    .line 179
    .end local v21           #vacantInfo:Lcom/htc/launcher/CellInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v10

    .line 180
    .local v10, screen:I
    const/4 v5, 0x0

    aget v5, v22, v5

    const/4 v8, 0x1

    aget v8, v22, v8

    invoke-virtual {v9, v10, v5, v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->addToContainer(III)V

    .line 182
    invoke-virtual {v9}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getStoreId()J

    move-result-wide v11

    const-wide/16 v23, -0x1

    cmp-long v5, v11, v23

    if-nez v5, :cond_b

    .line 183
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_9

    const-string v5, "DesktopItemController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "store widget in DB:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v5, v9}, Lcom/htc/android/rosie/home/HostWidgetManager;->storeWidgetToDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z

    .line 191
    :goto_2
    const/4 v5, 0x0

    aget v11, v22, v5

    const/4 v5, 0x1

    aget v12, v22, v5

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/htc/launcher/DesktopItemController;->addFxItemToDesktop(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;IIIII)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 193
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v16

    .line 194
    .local v16, model:Lcom/htc/launcher/LauncherModel;
    new-instance v5, Lcom/htc/launcher/FxItemInfo;

    invoke-direct {v5, v9}, Lcom/htc/launcher/FxItemInfo;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 197
    .end local v16           #model:Lcom/htc/launcher/LauncherModel;
    :cond_a
    if-eqz p3, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    const/4 v8, 0x0

    aget v8, v22, v8

    const/4 v11, 0x1

    aget v11, v22, v11

    invoke-virtual {v5, v10, v8, v11}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgetAt(III)V

    goto/16 :goto_0

    .line 186
    :cond_b
    const-string v5, "DesktopItemController"

    const-string v8, "Widget already in DB. Will update it!"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v5, v9}, Lcom/htc/android/rosie/home/HostWidgetManager;->updateWidgetInDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z

    goto :goto_2
.end method

.method addFxWidgetAsync(Lcom/htc/launcher/FxItemInfo;)V
    .locals 2
    .parameter "fxItemInfo"

    .prologue
    .line 1044
    if-nez p1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/DesktopItemController$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/DesktopItemController$3;-><init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxItemInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addInScreenAsync(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V
    .locals 11
    .parameter "child"
    .parameter "info"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 1013
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddInScreens:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/launcher/DesktopItemController$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/htc/launcher/DesktopItemController$2;-><init>(Lcom/htc/launcher/DesktopItemController;Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    return-void
.end method

.method addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V
    .locals 8
    .parameter "view"
    .parameter "info"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "insertAtFirst"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->wrapLegacyView(Landroid/view/View;)Lcom/htc/launcher/LegacyLayout;

    move-result-object v1

    .line 628
    .local v1, ll:Lcom/htc/launcher/LegacyLayout;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/htc/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 629
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 630
    return-void
.end method

.method public addNavbarItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addNavbarItems(Ljava/util/ArrayList;)V

    .line 385
    return-void
.end method

.method public addPendingSyncPackages(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 2029
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2030
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    monitor-exit v1

    .line 2032
    return-void

    .line 2031
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addSearch(Lcom/htc/launcher/CellInfo;)V
    .locals 2
    .parameter "cellInfo"

    .prologue
    .line 479
    invoke-static {}, Lcom/htc/launcher/Widget;->makeSearch()Lcom/htc/launcher/Widget;

    move-result-object v0

    .line 480
    .local v0, info:Lcom/htc/launcher/Widget;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/launcher/DesktopItemController;->addWidget(Lcom/htc/launcher/Widget;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    .line 481
    return-void
.end method

.method addShortcut(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 535
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 541
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v5, 0x6

    invoke-virtual {v4, v2, v5}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 551
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public addWidget(Lcom/htc/launcher/Widget;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V
    .locals 22
    .parameter "info"
    .parameter "backIntent"
    .parameter "cellInfo"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DesktopItemController;->mCellCoordinates:[I

    move-object/from16 v21, v0

    .line 399
    .local v21, xy:[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/launcher/Widget;->spanX:I

    move/from16 v17, v0

    .line 400
    .local v17, spanX:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/launcher/Widget;->spanY:I

    move/from16 v18, v0

    .line 401
    .local v18, spanY:I
    const-string v5, "DesktopItemController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addWidget(), spanX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", spanY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/launcher/DesktopItemController;->findRoomInWorkspace(IILcom/htc/launcher/CellInfo;[I)Z

    move-result v15

    .line 408
    .local v15, bHaveRoomInCurrentScreen:Z
    if-eqz v15, :cond_3

    .line 411
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v9}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    const/4 v10, 0x0

    aget v10, v21, v10

    const/4 v11, 0x1

    aget v11, v21, v11

    const/4 v12, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 415
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/htc/launcher/WidgetProxy;

    if-eqz v5, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 420
    .local v16, currentScreen:Landroid/view/ViewGroup;
    move-object/from16 v0, p1

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v5, v7, v0, v1}, Lcom/htc/launcher/WidgetProxy;->inflate(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v6

    .line 422
    .local v6, view:Landroid/view/View;
    move-object/from16 v0, p1

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/htc/launcher/WidgetProxy;->fireOnResume()V

    .line 428
    .end local v16           #currentScreen:Landroid/view/ViewGroup;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 430
    sget-object v5, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v8

    const/4 v5, 0x0

    aget v9, v21, v5

    const/4 v5, 0x1

    aget v10, v21, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v11, v17

    move/from16 v12, v18

    invoke-virtual/range {v5 .. v13}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 476
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    .line 424
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/launcher/Widget;->layoutResource:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 431
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 437
    .end local v6           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForSpan(II)Lcom/htc/launcher/CellInfo;

    move-result-object v20

    .line 440
    .local v20, vacantInfo:Lcom/htc/launcher/CellInfo;
    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p1

    iput v5, v0, Lcom/htc/launcher/Widget;->cellX:I

    .line 441
    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p1

    iput v5, v0, Lcom/htc/launcher/Widget;->cellY:I

    .line 442
    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p1

    iput v5, v0, Lcom/htc/launcher/Widget;->screen:I

    .line 445
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/htc/launcher/WidgetProxy;

    if-eqz v5, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/launcher/Widget;->screen:I

    invoke-virtual {v5, v7}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 450
    .restart local v16       #currentScreen:Landroid/view/ViewGroup;
    move-object/from16 v0, p1

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v5, v7, v0, v1}, Lcom/htc/launcher/WidgetProxy;->inflate(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v6

    .line 453
    .restart local v6       #view:Landroid/view/View;
    move-object/from16 v0, p1

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/htc/launcher/WidgetProxy;->fireOnResume()V

    .line 459
    .end local v16           #currentScreen:Landroid/view/ViewGroup;
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v9, -0x64

    move-object/from16 v0, v20

    iget v11, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v7 .. v14}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 465
    sget-object v5, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 466
    move-object/from16 v0, v20

    iget v8, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v11, v17

    move/from16 v12, v18

    invoke-virtual/range {v5 .. v13}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 469
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->invalidateVacant()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 472
    .end local v6           #view:Landroid/view/View;
    .end local v20           #vacantInfo:Lcom/htc/launcher/CellInfo;
    :catch_0
    move-exception v19

    .line 474
    .local v19, th:Ljava/lang/Throwable;
    const-string v5, "DesktopItemController"

    const-string v7, "addWidget Error !"

    move-object/from16 v0, v19

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 455
    .end local v19           #th:Ljava/lang/Throwable;
    .restart local v20       #vacantInfo:Lcom/htc/launcher/CellInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/launcher/Widget;->layoutResource:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_3

    .line 466
    :cond_5
    const/4 v13, 0x0

    goto :goto_4
.end method

.method addWidgetAsync(Landroid/view/View;Lcom/htc/launcher/Widget;Z)V
    .locals 9
    .parameter "view"
    .parameter "widget"
    .parameter "insert"

    .prologue
    .line 1038
    iget v3, p2, Lcom/htc/launcher/Widget;->screen:I

    iget v4, p2, Lcom/htc/launcher/Widget;->cellX:I

    iget v5, p2, Lcom/htc/launcher/Widget;->cellY:I

    iget v6, p2, Lcom/htc/launcher/Widget;->spanX:I

    iget v7, p2, Lcom/htc/launcher/Widget;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/launcher/DesktopItemController;->addInScreenAsync(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 1040
    return-void
.end method

.method public autoAddPageHandler(II)Z
    .locals 6
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, endAddItem:Z
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3, p1, p2}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForSpan(II)Lcom/htc/launcher/CellInfo;

    move-result-object v2

    .line 88
    .local v2, vacantInfo:Lcom/htc/launcher/CellInfo;
    if-nez v2, :cond_0

    .line 89
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v1

    .line 90
    .local v1, pm:Lcom/htc/launcher/PagesManager;
    invoke-virtual {v1}, Lcom/htc/launcher/PagesManager;->isPageFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const v5, 0x7f0b001c

    invoke-virtual {v4, v5}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 94
    const-string v3, "DesktopItemController"

    const-string v4, "fail to add to desktop since its full"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    .line 100
    .end local v1           #pm:Lcom/htc/launcher/PagesManager;
    :cond_0
    :goto_0
    return v0

    .line 97
    .restart local v1       #pm:Lcom/htc/launcher/PagesManager;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/launcher/PagesManager;->addPage()V

    goto :goto_0
.end method

.method public bindFxShortcut(Lcom/htc/launcher/FxShortcutInfo;)V
    .locals 4
    .parameter "fxShortcutInfo"

    .prologue
    .line 1781
    const-string v1, "DesktopItemController"

    const-string v2, "[EDIT_DEBUG] DesktopItemController.bindFxShortcut()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    invoke-direct {p0, p1}, Lcom/htc/launcher/DesktopItemController;->addFxShortcutToDesktop(Lcom/htc/launcher/FxShortcutInfo;)Z

    move-result v0

    .line 1783
    .local v0, ok:Z
    const-string v1, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DesktopItemController.bindFxShortcut() ok("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    return-void
.end method

.method public bindFxWidget(Lcom/htc/launcher/FxItemInfo;)V
    .locals 9
    .parameter "fxItemInfo"

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/htc/launcher/FxItemInfo;->toWidgetInfo()Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 308
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v2, p1, Lcom/htc/launcher/FxItemInfo;->screen:I

    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getX()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getY()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanX()I

    move-result v6

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanY()I

    move-result v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->hasFreeRoom(ILcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DesktopItemController.bindFxWidget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") no free Room!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->checkWidgetId(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 315
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DesktopItemController.bindFxWidget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->addWidget(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z

    move-result v7

    .line 317
    .local v7, ok:Z
    if-eqz v7, :cond_1

    .line 318
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DesktopItemController.bindFxWidget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") addWidget() ok"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v0

    iput v0, p1, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    .line 320
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getContainerId()I

    move-result v2

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getX()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getY()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanX()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanY()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/launcher/DesktopItemController;->addFxItemToDesktop(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;IIIII)Z

    move-result v7

    goto :goto_0

    .line 322
    :cond_1
    const-string v0, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DesktopItemController.bindFxWidget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") addWidget() failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public cleanUpFloatingFxItem()V
    .locals 1

    .prologue
    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 1730
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 1731
    return-void
.end method

.method closeFolder()V
    .locals 2

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    .line 1112
    .local v0, folder:Lcom/htc/launcher/Folder;
    invoke-virtual {p0, v0}, Lcom/htc/launcher/DesktopItemController;->closeFolder(Lcom/htc/launcher/Folder;)V

    .line 1113
    return-void
.end method

.method closeFolder(Lcom/htc/launcher/Folder;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1116
    if-nez p1, :cond_1

    .line 1117
    const-string v0, "DesktopItemController"

    const-string v1, "closeFolder:folder is null"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    invoke-virtual {p1}, Lcom/htc/launcher/Folder;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    invoke-virtual {p1}, Lcom/htc/launcher/Folder;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/launcher/FolderInfo;->opened:Z

    .line 1124
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->hideFolder()V

    .line 1127
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->thawScreen(I)V

    .line 1128
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->thawNavBar()V

    .line 1129
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->thawLauncherBar()V

    .line 1131
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/htc/launcher/Folder;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/htc/launcher/FolderInfo;->screen:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/launcher/DesktopItemController;->enableFolderIcon(ZI)V

    goto :goto_0
.end method

.method completeAddAppWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V
    .locals 22
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 840
    .local v16, extras:Landroid/os/Bundle;
    const-string v3, "appWidgetId"

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 843
    .local v14, appWidgetId:I
    const-string v3, "DesktopItemController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumping extras content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    .line 849
    .local v15, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {v3, v5}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/launcher/CellLayout;

    .line 850
    .local v18, layout:Lcom/htc/launcher/CellLayout;
    iget v3, v15, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v5, v15, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Lcom/htc/launcher/CellLayout;->rectToCell(II)[I

    move-result-object v19

    .line 853
    .local v19, spans:[I
    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v5, 0x1

    aget v5, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    new-instance v4, Lcom/htc/launcher/LauncherAppWidgetInfo;

    invoke-direct {v4, v14}, Lcom/htc/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 858
    .local v4, launcherInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    const/4 v3, 0x0

    aget v3, v19, v3

    iput v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 859
    const/4 v3, 0x1

    aget v3, v19, v3

    iput v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 860
    iget-object v3, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DesktopItemController;->mCellCoordinates:[I

    move-object/from16 v21, v0

    .line 864
    .local v21, xy:[I
    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v5, 0x1

    aget v5, v19, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/launcher/DesktopItemController;->findSlot(Lcom/htc/launcher/CellInfo;[III)Z

    move-result v17

    .line 865
    .local v17, here:Z
    if-nez v17, :cond_2

    .line 866
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v21, v5

    aput v6, v21, v3

    .line 868
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v5, -0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v7

    const/4 v8, 0x0

    aget v8, v21, v8

    const/4 v9, 0x1

    aget v9, v21, v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 871
    if-eqz v17, :cond_5

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isRestoring()Z

    move-result v3

    if-nez v3, :cond_4

    .line 873
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/LauncherModel;->addDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v14, v15}, Lcom/htc/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 881
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v14, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 882
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 886
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/htc/launcher/LegacyLayout;->isIncludeStackView(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 887
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/appwidget/AppWidgetHostView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 889
    :cond_3
    iget-object v6, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v8

    const/4 v3, 0x0

    aget v9, v21, v3

    const/4 v3, 0x1

    aget v10, v21, v3

    iget v11, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v12, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v5, p0

    move-object v7, v4

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    goto/16 :goto_0

    .line 894
    :cond_4
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v3}, Lcom/htc/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 895
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/LauncherModel;->addDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    goto/16 :goto_0

    .line 898
    :cond_5
    iget v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v5, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget v5, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v6, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v3, v5, v6}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForSpan(II)Lcom/htc/launcher/CellInfo;

    move-result-object v20

    .line 901
    .local v20, vacantInfo:Lcom/htc/launcher/CellInfo;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p2

    iput v3, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    iput v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 902
    move-object/from16 v0, v20

    iget v3, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p2

    iput v3, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    iput v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 903
    move-object/from16 v0, v20

    iget v3, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p2

    iput v3, v0, Lcom/htc/launcher/CellInfo;->screen:I

    .line 905
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/LauncherModel;->addDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v14, v15}, Lcom/htc/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 913
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v14, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 914
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 918
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/htc/launcher/LegacyLayout;->isIncludeStackView(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 919
    iget-object v3, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/appwidget/AppWidgetHostView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 921
    :cond_6
    iget-object v6, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v11, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v12, v4, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v5, p0

    move-object v7, v4

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v3, v4}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v5, -0x64

    move-object/from16 v0, p2

    iget v7, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    goto/16 :goto_0
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V
    .locals 17
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v2

    move-object/from16 v0, p3

    iput v2, v0, Lcom/htc/launcher/CellInfo;->screen:I

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v14

    .line 665
    .local v14, openFolder:Lcom/htc/launcher/Folder;
    if-eqz v14, :cond_1

    .line 666
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/htc/launcher/Folder;->addIntoFolder(Landroid/content/Context;Landroid/content/Intent;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isAddButtonbar()Z

    move-result v2

    if-nez v2, :cond_3

    .line 674
    :cond_2
    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 679
    .local v11, component:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 680
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 682
    .local v10, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v15, v11, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 691
    :goto_1
    if-eqz v10, :cond_0

    .line 692
    new-instance v3, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v3}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 694
    .local v3, itemInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {v10, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 695
    iget-object v2, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    .line 696
    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 699
    :cond_4
    iget-object v2, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/launcher/AllAppsGridView;->translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 700
    const/high16 v2, 0x1020

    invoke-virtual {v3, v11, v2}, Lcom/htc/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 702
    invoke-static {v15, v10}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 703
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/htc/launcher/ApplicationInfo;->container:J

    .line 705
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isAddButtonbar()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v2, v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getMiddleClickButton()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->addButtonBarAppOrShortcut(Lcom/htc/launcher/ApplicationInfo;I)V

    goto :goto_0

    .line 686
    .end local v3           #itemInfo:Lcom/htc/launcher/ApplicationInfo;
    :catch_0
    move-exception v12

    .line 687
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DesktopItemController"

    const-string v4, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v2, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 714
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #itemInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->findSingleSlot(Lcom/htc/launcher/CellInfo;)Z

    move-result v13

    .line 716
    .local v13, here:Z
    if-nez v13, :cond_6

    .line 717
    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForShortcut()Lcom/htc/launcher/CellInfo;

    move-result-object v16

    .line 720
    .local v16, vacantInfo:Lcom/htc/launcher/CellInfo;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p3

    iput v2, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    iput v2, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    .line 721
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p3

    iput v2, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    iput v2, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    .line 722
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p3

    iput v2, v0, Lcom/htc/launcher/CellInfo;->screen:I

    iput v2, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    .line 725
    .end local v16           #vacantInfo:Lcom/htc/launcher/CellInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p3

    iget v6, v0, Lcom/htc/launcher/CellInfo;->screen:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 728
    sget-object v2, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v2, v3}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 729
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/launcher/DesktopItemController;->addFxShortcutToDesktop(Lcom/htc/launcher/FxShortcutInfo;)Z

    goto/16 :goto_0
.end method

.method completeAddShortcut(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V
    .locals 11
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 770
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v0

    iput v0, p2, Lcom/htc/launcher/CellInfo;->screen:I

    .line 772
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isAddButtonbar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    :cond_1
    :goto_0
    return-void

    .line 778
    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/launcher/DesktopItemController;->findSingleSlot(Lcom/htc/launcher/CellInfo;)Z

    move-result v8

    .line 781
    .local v8, here:Z
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isAddButtonbar()Z

    move-result v0

    if-nez v0, :cond_4

    .line 783
    :cond_3
    if-nez v8, :cond_4

    .line 784
    invoke-virtual {p0, v2, v2}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForShortcut()Lcom/htc/launcher/CellInfo;

    move-result-object v10

    .line 787
    .local v10, vacantInfo:Lcom/htc/launcher/CellInfo;
    iget v0, v10, Lcom/htc/launcher/CellInfo;->cellX:I

    iput v0, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 788
    iget v0, v10, Lcom/htc/launcher/CellInfo;->cellY:I

    iput v0, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 789
    iget v0, v10, Lcom/htc/launcher/CellInfo;->screen:I

    iput v0, p2, Lcom/htc/launcher/CellInfo;->screen:I

    .line 793
    .end local v10           #vacantInfo:Lcom/htc/launcher/CellInfo;
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v0, p1, p2, v7}, Lcom/htc/launcher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v1

    .line 796
    .local v1, info:Lcom/htc/launcher/ApplicationInfo;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isAddButtonbar()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 800
    new-instance v9, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v9, v1}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .line 801
    .local v9, info_tmp:Lcom/htc/launcher/ApplicationInfo;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v0, v9}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 802
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getMiddleClickButton()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->addButtonBarAppOrShortcut(Lcom/htc/launcher/ApplicationInfo;I)V

    goto :goto_0

    .line 808
    .end local v9           #info_tmp:Lcom/htc/launcher/ApplicationInfo;
    :cond_5
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isRestoring()Z

    move-result v0

    if-nez v0, :cond_6

    .line 809
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v2, -0x64

    iget v4, p2, Lcom/htc/launcher/CellInfo;->screen:I

    iget v5, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v6, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 812
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 813
    invoke-direct {p0, v1}, Lcom/htc/launcher/DesktopItemController;->addFxShortcutToDesktop(Lcom/htc/launcher/FxShortcutInfo;)Z

    goto :goto_0

    .line 814
    :cond_6
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    goto/16 :goto_0
.end method

.method destroy()V
    .locals 0

    .prologue
    .line 1724
    invoke-direct {p0}, Lcom/htc/launcher/DesktopItemController;->clearFloating()V

    .line 1725
    return-void
.end method

.method public editItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V
    .locals 7
    .parameter "source"
    .parameter "item"

    .prologue
    .line 1279
    const-string v3, "DesktopItemController"

    const-string v4, "[EDIT_DEBUG] DesktopItemController.editItem()"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/launcher/ItemInfo;->isItemEditable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    const-string v3, "DesktopItemController"

    const-string v4, "edit item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    instance-of v3, p2, Lcom/htc/launcher/WidgetProxy;

    if-eqz v3, :cond_2

    .line 1285
    invoke-virtual {p0, p2}, Lcom/htc/launcher/DesktopItemController;->setLegacyItemToEdit(Lcom/htc/launcher/ItemInfo;)V

    move-object v2, p2

    .line 1286
    check-cast v2, Lcom/htc/launcher/WidgetProxy;

    .line 1287
    .local v2, widget:Lcom/htc/launcher/WidgetProxy;
    const/4 v1, 0x0

    .line 1289
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v2}, Lcom/htc/launcher/WidgetProxy;->getSettingIntent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1293
    :goto_1
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->lock()V

    .line 1294
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const/16 v4, 0x1f5

    invoke-virtual {v3, v1, v4}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v3, "DesktopItemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot launch setting for widget:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1295
    .end local v0           #e:Ljava/net/URISyntaxException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #widget:Lcom/htc/launcher/WidgetProxy;
    :cond_2
    instance-of v3, p2, Lcom/htc/launcher/FxItemInfo;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/htc/launcher/DesktopItemController;->isItemEditable(Lcom/htc/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    iget v4, p2, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v5, p2, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v6, p2, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/rosie/home/HostWidgetManager;->editWidget(III)V

    goto :goto_0
.end method

.method public enableFolderIcon(ZI)V
    .locals 6
    .parameter "enable"
    .parameter "screen"

    .prologue
    .line 2056
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-nez v5, :cond_1

    .line 2077
    :cond_0
    return-void

    .line 2059
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItems()Ljava/util/List;

    move-result-object v4

    .line 2060
    .local v4, shortcutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2061
    .local v3, itemCaches:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    monitor-enter v4

    .line 2062
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/FxItem;

    .line 2063
    .local v2, item:Lcom/htc/launcher/FxItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2065
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/launcher/FxItem;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2067
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/FxItem;

    .line 2068
    .restart local v2       #item:Lcom/htc/launcher/FxItem;
    if-eqz v2, :cond_3

    .line 2070
    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 2071
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v1, :cond_3

    iget v5, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v5, p2, :cond_3

    .line 2074
    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v2           #item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    goto :goto_1
.end method

.method ensurePendingTaskRunner()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 964
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mPendingAddToFxScreenTasks"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 965
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 966
    new-instance v0, Lcom/htc/launcher/DesktopItemController$1;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/DesktopItemController$1;-><init>(Lcom/htc/launcher/DesktopItemController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    .line 984
    :cond_0
    return-void
.end method

.method findSingleSlot(Lcom/htc/launcher/CellInfo;)Z
    .locals 5
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 514
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 516
    .local v1, nXy:[I
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getAddItemCellInfo()Lcom/htc/launcher/CellInfo;

    move-result-object v0

    .line 517
    .local v0, info:Lcom/htc/launcher/CellInfo;
    if-eqz v0, :cond_0

    iget v4, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-ltz v4, :cond_0

    iget v4, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-gez v4, :cond_1

    .line 519
    :cond_0
    move-object v0, p1

    .line 522
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/htc/launcher/DesktopItemController;->findSlot(Lcom/htc/launcher/CellInfo;[III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    aget v3, v1, v3

    iput v3, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 524
    aget v3, v1, v2

    iput v3, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 528
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method findSlot(Lcom/htc/launcher/CellInfo;[III)Z
    .locals 5
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 500
    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v1

    .line 501
    .local v1, screen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v1, p1, p3, p4}, Lcom/htc/launcher/Workspace$Screen;->findNearestVacantCellsForSpan(Lcom/htc/launcher/CellInfo;II)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    .line 502
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    if-nez v0, :cond_0

    .line 509
    :goto_0
    return v2

    .line 506
    :cond_0
    iget v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    aput v4, p2, v2

    .line 507
    iget v2, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    aput v2, p2, v3

    move v2, v3

    .line 509
    goto :goto_0
.end method

.method flushPendingAddInFxScreens()V
    .locals 2

    .prologue
    const/16 v1, 0x514

    .line 957
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 960
    :cond_0
    return-void
.end method

.method flushPendingAddInScreens()V
    .locals 3

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/htc/launcher/DesktopItemController;->ensurePendingTaskRunner()V

    .line 949
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddInScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddInScreens:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 951
    .local v0, pending:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 953
    .end local v0           #pending:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public getExternalFloatingBounds(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 10
    .parameter "view"

    .prologue
    const/high16 v9, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1826
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 1827
    .local v8, xy:[I
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 1829
    .local v5, bounds:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    move v2, v1

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 1830
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1832
    aget v0, v8, v1

    int-to-float v0, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    sub-float v6, v0, v1

    .line 1833
    .local v6, newLeft:F
    aget v0, v8, v3

    int-to-float v0, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    sub-float v7, v0, v1

    .line 1835
    .local v7, newTop:F
    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1836
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] getExternalFloatingBounds() Bounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    return-object v5
.end method

.method getFloatingDragge()Lcom/htc/launcher/Draggee;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    return-object v0
.end method

.method public getFxShortcutItem(J)Lcom/htc/launcher/FxItem;
    .locals 1
    .parameter "id"

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItem(J)Lcom/htc/launcher/FxItem;

    move-result-object v0

    return-object v0
.end method

.method public getFxShortcutItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFxShortcutScene(J)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "id"

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1842
    :cond_0
    const/4 v0, 0x0

    .line 1844
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutScene(JZ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method public getFxWidgetItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxWidgetItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyScene(JJ)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "screen"
    .parameter "id"

    .prologue
    .line 1492
    long-to-int v0, p1

    invoke-direct {p0, v0, p3, p4}, Lcom/htc/launcher/DesktopItemController;->getLegacyLayoutWithId(IJ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public getUserFolderItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2145
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-nez v5, :cond_2

    .line 2146
    :cond_0
    const/4 v0, 0x0

    .line 2165
    :cond_1
    return-object v0

    .line 2148
    :cond_2
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItems()Ljava/util/List;

    move-result-object v4

    .line 2149
    .local v4, shortcutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    .local v0, folderItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxItem;

    .line 2151
    .local v3, item:Lcom/htc/launcher/FxItem;
    if-eqz v3, :cond_3

    .line 2155
    invoke-virtual {v3}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 2156
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_3

    .line 2160
    iget v5, v2, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2163
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "id"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public isItemEditable(Lcom/htc/launcher/ItemInfo;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 1271
    instance-of v0, p1, Lcom/htc/launcher/FxItemInfo;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    iget v1, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/rosie/home/HostWidgetManager;->isEditable(III)Z

    move-result v0

    .line 1274
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->isItemEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method landFxItem(III)Z
    .locals 5
    .parameter "container"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 1614
    const-string v1, "DesktopItemController"

    const-string v2, "[EDIT_DEBUG] DesktopItemController.landFxItem() - enter"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-nez v1, :cond_0

    .line 1616
    const-string v1, "DesktopItemController"

    const-string v2, "Should have something in the air for landing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const/4 v1, 0x0

    .line 1625
    :goto_0
    return v1

    .line 1620
    :cond_0
    const-string v1, "DesktopItemController"

    const-string v2, "[EDIT_DEBUG] DesktopItemController.landFxItem() onLand"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getCellXY()Landroid/graphics/Point;

    move-result-object v0

    .line 1622
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/launcher/FxItem;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 1623
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onLand(Lcom/htc/launcher/Draggee;III)Z

    .line 1624
    iput-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 1625
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveFxItem(Lcom/htc/launcher/Draggee;IIIZ)Z
    .locals 8
    .parameter "draggeeItem"
    .parameter "dropScreen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "bMoveScene"

    .prologue
    .line 259
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 262
    .local v7, draggeeItemInfo:Lcom/htc/launcher/ItemInfo;
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    iget v1, v7, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v2, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/rosie/home/HostWidgetManager;->moveWidgetAt(IIIIII)V

    .line 266
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(I)V

    .line 270
    :cond_0
    if-eqz p5, :cond_1

    .line 271
    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG]# Workspace.dropMove() Before move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    iget v2, v7, Lcom/htc/launcher/ItemInfo;->screen:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resumeItemInScreen(Lcom/htc/launcher/Draggee;IIII)Z

    .line 273
    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG]# Workspace.dropMove() After move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    iget v1, v7, Lcom/htc/launcher/ItemInfo;->screen:I

    if-eq v1, p2, :cond_3

    instance-of v1, p1, Lcom/htc/launcher/FxItem;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/htc/launcher/Draggee$LegacyDraggee;

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 278
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget v2, v7, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, p1, v2, p2}, Lcom/htc/launcher/Workspace;->moveLegacyItem(Lcom/htc/launcher/Draggee;II)V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v2, -0x64

    move-object v1, v7

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 286
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, p2}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 287
    .local v0, target:Lcom/htc/launcher/Workspace$Screen;
    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG]# Workspace.dropMove() - After SpanX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SpanY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v2, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v4, v7, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v5, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->onDropChildByCell(Lcom/htc/launcher/Draggee;IIII)V

    .line 290
    const/4 v1, 0x1

    return v1
.end method

.method public moveRearrangedItem(Lcom/htc/launcher/Draggee;IIIZ)Z
    .locals 8
    .parameter "draggeeItem"
    .parameter "dropScreen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "bMoveScene"

    .prologue
    .line 242
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 245
    .local v7, draggeeItemInfo:Lcom/htc/launcher/ItemInfo;
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    iget v1, v7, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v2, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/rosie/home/HostWidgetManager;->moveWidgetAt(IIIIII)V

    .line 250
    :cond_0
    const-wide/16 v0, -0x64

    iput-wide v0, v7, Lcom/htc/launcher/ItemInfo;->container:J

    .line 251
    iput p2, v7, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 252
    iput p3, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 253
    iput p4, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public onClickFolder(Lcom/htc/launcher/FolderInfo;)V
    .locals 2
    .parameter "folderInfo"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    new-instance v1, Lcom/htc/launcher/DesktopItemController$6;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/DesktopItemController$6;-><init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FolderInfo;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1355
    return-void
.end method

.method onCompleteEditLegacy(ILandroid/content/Intent;Lcom/htc/launcher/CellInfo;)V
    .locals 5
    .parameter "result"
    .parameter "data"
    .parameter "origin"

    .prologue
    const/4 v4, 0x0

    .line 1308
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    instance-of v0, v0, Lcom/htc/launcher/WidgetProxy;

    if-eqz v0, :cond_0

    .line 1313
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 1314
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetProxy;->onLayoutRemoved(Lcom/htc/launcher/Launcher;)V

    .line 1315
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1316
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v0}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V

    .line 1317
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v0, v4, v1, v2}, Lcom/htc/launcher/Workspace;->onDropCompleted(Lcom/htc/launcher/DropTarget;ZLcom/htc/launcher/DragSource$DragCompletedAction;)V

    .line 1318
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 1319
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mSlideController:Lcom/htc/launcher/SlideController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    .line 1321
    sget-object v0, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->itemType:I

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/launcher/WidgetPackageManager;->newWidget(ILandroid/content/Context;J)Lcom/htc/launcher/WidgetProxy;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/launcher/DesktopItemController;->addWidget(Lcom/htc/launcher/Widget;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    .line 1323
    iput-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 1328
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mSlideController:Lcom/htc/launcher/SlideController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    iget v1, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfiguration"

    .prologue
    const/4 v0, 0x1

    .line 1424
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    .line 1425
    .local v0, isPortrait:Z
    :goto_0
    sget-boolean v1, Lcom/htc/launcher/DesktopItemController;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v2, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "portrait"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v1, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->notifyAllWidgetsConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1427
    return-void

    .line 1424
    .end local v0           #isPortrait:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1425
    .restart local v0       #isPortrait:Z
    :cond_2
    const-string v1, "landscape"

    goto :goto_1
.end method

.method public onLeapRearrangeComplete([I)V
    .locals 2
    .parameter "screenMap"

    .prologue
    .line 1748
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mOnLeapRearrangeCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1749
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1750
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mOnLeapRearrangeCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1751
    return-void
.end method

.method openFolder(Lcom/htc/launcher/FolderInfo;)V
    .locals 6
    .parameter "folderInfo"

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v2}, Lcom/htc/launcher/Folder;->fromXml(Landroid/content/Context;)Lcom/htc/launcher/Folder;

    move-result-object v1

    .line 1083
    .local v1, openFolder:Lcom/htc/launcher/Folder;
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Folder;->setDragger(Lcom/htc/launcher/DragController;)V

    .line 1084
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Folder;->setLauncher(Lcom/htc/launcher/Launcher;)V

    .line 1086
    invoke-virtual {v1, p1}, Lcom/htc/launcher/Folder;->bind(Lcom/htc/launcher/FolderInfo;)V

    .line 1087
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/htc/launcher/FolderInfo;->opened:Z

    .line 1088
    invoke-virtual {v1, p1}, Lcom/htc/launcher/Folder;->setTag(Ljava/lang/Object;)V

    .line 1089
    const-string v2, "DesktopItemController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG][FOLDER] openFolder() - folderInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget v0, p1, Lcom/htc/launcher/FolderInfo;->screen:I

    .line 1093
    .local v0, nScreen:I
    iget-wide v2, p1, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freezeScreen(I)V

    .line 1101
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freezeNavBar()V

    .line 1102
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freezeLauncherBar()V

    .line 1105
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v2, v1}, Lcom/htc/launcher/DragLayer;->displayFolder(Lcom/htc/launcher/Folder;)V

    .line 1106
    const/4 v2, 0x0

    iget v3, p1, Lcom/htc/launcher/FolderInfo;->screen:I

    invoke-virtual {p0, v2, v3}, Lcom/htc/launcher/DesktopItemController;->enableFolderIcon(ZI)V

    .line 1107
    const-string v2, "DesktopItemController"

    const-string v3, "[EDIT_DEBUG][FOLDER] openFolder() - done"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public pauseRenderring()V
    .locals 2

    .prologue
    .line 1734
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] DesktopItemController.pauseRenderring()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 1736
    return-void
.end method

.method public pauseWidget(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->pauseWidget(I)V

    .line 2325
    return-void
.end method

.method public poofFxItem()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1629
    const-string v2, "DesktopItemController"

    const-string v3, "[EDIT_DEBUG] DesktopItemController.poofFxItem()"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-nez v2, :cond_0

    .line 1631
    const-string v2, "DesktopItemController"

    const-string v3, "[EDIT_DEBUG] Should have something in the air for poofing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v0, 0x0

    .line 1640
    :goto_0
    return v0

    .line 1635
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getCellXY()Landroid/graphics/Point;

    move-result-object v1

    .line 1636
    .local v1, p:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/htc/launcher/FxItem;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 1638
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v2, v3}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onPoof(Lcom/htc/launcher/Draggee;)Z

    move-result v0

    .line 1639
    .local v0, ok:Z
    iput-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    goto :goto_0
.end method

.method public poofLegacyItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1644
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    if-nez v1, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getCellXY()Landroid/graphics/Point;

    move-result-object v0

    .line 1648
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/launcher/FxItem;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 1650
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v1, v2}, Lcom/htc/launcher/DesktopItemController$FloatingEnv;->onPoof(Lcom/htc/launcher/Draggee;)Z

    .line 1651
    invoke-virtual {p0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 1653
    iput-object v4, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingFxItem:Lcom/htc/launcher/FxItem;

    .line 1654
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    goto :goto_0
.end method

.method public rebindFxWidget(Lcom/htc/launcher/FxItemInfo;)V
    .locals 7
    .parameter "fxItemInfo"

    .prologue
    .line 1419
    invoke-virtual {p1}, Lcom/htc/launcher/FxItemInfo;->toWidgetInfo()Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 1420
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getContainerId()I

    move-result v2

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getX()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getY()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanX()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanY()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/launcher/DesktopItemController;->addFxItemToDesktop(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;IIIII)Z

    .line 1421
    return-void
.end method

.method public removeDraggedAppIconAddedIntoFolderIcon()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->removeDraggedAppIconAddedIntoFolderIcon()V

    .line 1745
    return-void
.end method

.method public removeFolder(Lcom/htc/launcher/FolderInfo;)V
    .locals 1
    .parameter "folderInfo"

    .prologue
    .line 621
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/LauncherModel;->removeFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 622
    return-void
.end method

.method public removeFxShortcutItemInFxWidgetManager(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeFxShortcutItem(J)Z

    .line 2313
    return-void
.end method

.method public removeItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V
    .locals 9
    .parameter "source"
    .parameter "item"

    .prologue
    .line 1199
    const-string v5, "DesktopItemController"

    const-string v6, "[EDIT_DEBUG] DesktopItemController.removeItem() - enter"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    if-nez p2, :cond_0

    .line 1202
    const-string v5, "DesktopItemController"

    const-string v6, "[EDIT_DEBUG] DesktopItemController.removeItem() item = null, return!"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v5, "DesktopItemController"

    const-string v6, "Sould have something to remove!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_0
    return-void

    .line 1206
    :cond_0
    iget-wide v5, p2, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1207
    const-string v5, "DesktopItemController"

    const-string v6, "[EDIT_DEBUG] DesktopItemController.removeItem() item.container = -1, return!"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {p2}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeFxShortcutItem(J)Z

    .line 1213
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v2

    .line 1214
    .local v2, model:Lcom/htc/launcher/LauncherModel;
    iget-wide v5, p2, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 1215
    instance-of v5, p2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_6

    move-object v5, p2

    .line 1216
    check-cast v5, Lcom/htc/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2, v5}, Lcom/htc/launcher/LauncherModel;->removeDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    .line 1237
    :cond_2
    :goto_1
    instance-of v5, p2, Lcom/htc/launcher/FolderInfo;

    if-eqz v5, :cond_a

    move-object v4, p2

    .line 1238
    check-cast v4, Lcom/htc/launcher/FolderInfo;

    .line 1239
    .local v4, userFolderInfo:Lcom/htc/launcher/FolderInfo;
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v5, v4}, Lcom/htc/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/htc/launcher/FolderInfo;)V

    .line 1240
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderInfo;->getDropTarget()Lcom/htc/launcher/DropTarget;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Launcher;->removeDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 1241
    invoke-virtual {v2, v4}, Lcom/htc/launcher/LauncherModel;->removeUserFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 1253
    .end local v4           #userFolderInfo:Lcom/htc/launcher/FolderInfo;
    :cond_3
    :goto_2
    instance-of v5, p2, Lcom/htc/launcher/WidgetProxy;

    if-eqz v5, :cond_4

    move-object v5, p2

    .line 1255
    check-cast v5, Lcom/htc/launcher/WidgetProxy;

    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5, v6}, Lcom/htc/launcher/WidgetProxy;->onLayoutRemoved(Lcom/htc/launcher/Launcher;)V

    .line 1260
    :cond_4
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v5, p2}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1261
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v5}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V

    .line 1262
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_5

    .line 1264
    const-string v5, "Rosie"

    const-string v6, "[ATS][proc_Name][press_hold_widget][removed]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_5
    const-string v5, "DesktopItemController"

    const-string v6, "[EDIT_DEBUG] DesktopItemController.removeItem() - done"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    :cond_6
    instance-of v5, p2, Lcom/htc/launcher/FxItemInfo;

    if-eqz v5, :cond_7

    .line 1219
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    move-object v5, p2

    check-cast v5, Lcom/htc/launcher/FxItemInfo;

    iget v5, v5, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeWidget(I)V

    .line 1220
    :cond_7
    invoke-virtual {v2, p2}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 1221
    const-string v5, "remove"

    invoke-virtual {v2, p2, v5}, Lcom/htc/launcher/LauncherModel;->outputLayoutMove(Lcom/htc/launcher/ItemInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 1224
    :cond_8
    iget-wide v5, p2, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 1225
    invoke-virtual {v2, p2}, Lcom/htc/launcher/LauncherModel;->removeButtonItem(Lcom/htc/launcher/ItemInfo;)V

    .line 1226
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1227
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/launcher/LauncherModel;->getButtonBarOccupied()[Z

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showMiddleBackgroundImageControls([Z)V

    .line 1229
    :cond_9
    if-eqz p1, :cond_2

    instance-of v5, p1, Lcom/htc/launcher/Folder;

    if-eqz v5, :cond_2

    .line 1230
    const-string v5, "DesktopItemController"

    const-string v6, "[EDIT_DEBUG] DesktopItemController.removeItem() for UserFolder"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    .line 1231
    check-cast v3, Lcom/htc/launcher/Folder;

    .line 1232
    .local v3, userFolder:Lcom/htc/launcher/Folder;
    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v4

    .line 1233
    .restart local v4       #userFolderInfo:Lcom/htc/launcher/FolderInfo;
    invoke-virtual {v2, v4, p2}, Lcom/htc/launcher/LauncherModel;->removeUserFolderItem(Lcom/htc/launcher/FolderInfo;Lcom/htc/launcher/ItemInfo;)V

    goto/16 :goto_1

    .line 1243
    .end local v3           #userFolder:Lcom/htc/launcher/Folder;
    .end local v4           #userFolderInfo:Lcom/htc/launcher/FolderInfo;
    :cond_a
    instance-of v5, p2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_3

    move-object v1, p2

    .line 1244
    check-cast v1, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 1245
    .local v1, launcherAppWidgetInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v0

    .line 1246
    .local v0, appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;
    if-eqz v0, :cond_3

    .line 1247
    iget v5, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v5}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_2
.end method

.method public removeLegacyWidget(Landroid/view/View;Lcom/htc/launcher/ItemInfo;)V
    .locals 9
    .parameter "source"
    .parameter "item"

    .prologue
    .line 1145
    if-nez p2, :cond_1

    .line 1146
    const-string v5, "DesktopItemController"

    const-string v6, "Sould have something to remove!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-wide v5, p2, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 1152
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v2

    .line 1153
    .local v2, model:Lcom/htc/launcher/LauncherModel;
    iget-wide v5, p2, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    .line 1154
    instance-of v5, p2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_5

    move-object v5, p2

    .line 1155
    check-cast v5, Lcom/htc/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2, v5}, Lcom/htc/launcher/LauncherModel;->removeDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    .line 1168
    :cond_2
    :goto_1
    instance-of v5, p2, Lcom/htc/launcher/FolderInfo;

    if-eqz v5, :cond_8

    move-object v4, p2

    .line 1169
    check-cast v4, Lcom/htc/launcher/FolderInfo;

    .line 1170
    .local v4, userFolderInfo:Lcom/htc/launcher/FolderInfo;
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v5, v4}, Lcom/htc/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/htc/launcher/FolderInfo;)V

    .line 1171
    invoke-virtual {v2, v4}, Lcom/htc/launcher/LauncherModel;->removeUserFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 1183
    .end local v4           #userFolderInfo:Lcom/htc/launcher/FolderInfo;
    :cond_3
    :goto_2
    instance-of v5, p2, Lcom/htc/launcher/WidgetProxy;

    if-eqz v5, :cond_4

    move-object v5, p2

    .line 1185
    check-cast v5, Lcom/htc/launcher/WidgetProxy;

    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5, v6}, Lcom/htc/launcher/WidgetProxy;->onLayoutRemoved(Lcom/htc/launcher/Launcher;)V

    .line 1190
    :cond_4
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v5, p2}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1191
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v5}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V

    .line 1192
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_0

    .line 1194
    const-string v5, "Rosie"

    const-string v6, "[ATS][proc_Name][press_hold_widget][removed]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_5
    instance-of v5, p2, Lcom/htc/launcher/FxItemInfo;

    if-eqz v5, :cond_6

    .line 1158
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    move-object v5, p2

    check-cast v5, Lcom/htc/launcher/FxItemInfo;

    iget v5, v5, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeWidget(I)V

    .line 1159
    :cond_6
    invoke-virtual {v2, p2}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    goto :goto_1

    .line 1162
    :cond_7
    instance-of v5, p1, Lcom/htc/launcher/Folder;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 1163
    check-cast v3, Lcom/htc/launcher/Folder;

    .line 1164
    .local v3, userFolder:Lcom/htc/launcher/Folder;
    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v4

    .line 1165
    .restart local v4       #userFolderInfo:Lcom/htc/launcher/FolderInfo;
    invoke-virtual {v2, v4, p2}, Lcom/htc/launcher/LauncherModel;->removeUserFolderItem(Lcom/htc/launcher/FolderInfo;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_1

    .line 1172
    .end local v3           #userFolder:Lcom/htc/launcher/Folder;
    .end local v4           #userFolderInfo:Lcom/htc/launcher/FolderInfo;
    :cond_8
    instance-of v5, p2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_3

    move-object v1, p2

    .line 1173
    check-cast v1, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 1174
    .local v1, launcherAppWidgetInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v0

    .line 1175
    .local v0, appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    iget v6, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v5, v6}, Lcom/htc/launcher/LauncherModel;->getAppWidgetCount(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    .line 1177
    iget v5, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v5}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_2
.end method

.method public removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 19
    .parameter "packageName"

    .prologue
    .line 1852
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-eqz v15, :cond_0

    if-nez p1, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v13

    .line 1855
    .local v13, model:Lcom/htc/launcher/LauncherModel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v15}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItems()Ljava/util/List;

    move-result-object v14

    .line 1856
    .local v14, shortcutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    invoke-virtual {v13}, Lcom/htc/launcher/LauncherModel;->getButtonBarItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 1857
    .local v4, buttonBarItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/ItemInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    .local v7, deletedShortcutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/FxItem;

    .line 1859
    .local v11, item:Lcom/htc/launcher/FxItem;
    if-eqz v11, :cond_2

    .line 1862
    invoke-virtual {v11}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    .line 1863
    .local v9, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v9, :cond_2

    .line 1866
    instance-of v15, v9, Lcom/htc/launcher/FolderInfo;

    if-eqz v15, :cond_3

    .line 1867
    check-cast v9, Lcom/htc/launcher/FolderInfo;

    .end local v9           #info:Lcom/htc/launcher/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/htc/launcher/DesktopItemController;->removeItemFromFolder(Ljava/lang/String;Lcom/htc/launcher/FolderInfo;)V

    goto :goto_1

    .line 1871
    .restart local v9       #info:Lcom/htc/launcher/ItemInfo;
    :cond_3
    iget v15, v9, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v15, :cond_4

    iget v15, v9, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    :cond_4
    move-object v15, v9

    .line 1875
    check-cast v15, Lcom/htc/launcher/ApplicationInfo;

    iget-object v10, v15, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1876
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_2

    .line 1879
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1880
    .local v6, componentName:Landroid/content/ComponentName;
    if-eqz v6, :cond_2

    .line 1883
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v15

    iget v0, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    move/from16 v16, v0

    iget-wide v0, v9, Lcom/htc/launcher/ItemInfo;->id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(II)Z

    .line 1887
    invoke-virtual {v13, v9}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v15, v9}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1889
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1892
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v9           #info:Lcom/htc/launcher/ItemInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #item:Lcom/htc/launcher/FxItem;
    :cond_5
    if-eqz v4, :cond_9

    .line 1893
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/htc/launcher/ItemInfo;

    invoke-interface {v4, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/launcher/ItemInfo;

    .line 1894
    .local v3, buttonBarInfoList:[Lcom/htc/launcher/ItemInfo;
    move-object v2, v3

    .local v2, arr$:[Lcom/htc/launcher/ItemInfo;
    array-length v12, v2

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v12, :cond_9

    aget-object v9, v2, v8

    .line 1895
    .restart local v9       #info:Lcom/htc/launcher/ItemInfo;
    if-nez v9, :cond_7

    .line 1894
    .end local v9           #info:Lcom/htc/launcher/ItemInfo;
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1897
    .restart local v9       #info:Lcom/htc/launcher/ItemInfo;
    :cond_7
    instance-of v15, v9, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v15, :cond_8

    move-object v15, v9

    .line 1898
    check-cast v15, Lcom/htc/launcher/ApplicationInfo;

    iget-object v10, v15, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1899
    .restart local v10       #intent:Landroid/content/Intent;
    if-eqz v10, :cond_6

    .line 1902
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1903
    .restart local v6       #componentName:Landroid/content/ComponentName;
    if-eqz v6, :cond_6

    .line 1906
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1907
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v5

    .line 1908
    .local v5, client:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v15

    iget v0, v9, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 1909
    iget v15, v9, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v5, v15}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setItem(Lcom/htc/launcher/FxItem;)V

    .line 1910
    invoke-virtual {v13, v9}, Lcom/htc/launcher/LauncherModel;->removeButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v15, v9}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_3

    .line 1913
    .end local v5           #client:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_8
    instance-of v15, v9, Lcom/htc/launcher/FolderInfo;

    if-eqz v15, :cond_6

    .line 1914
    check-cast v9, Lcom/htc/launcher/FolderInfo;

    .end local v9           #info:Lcom/htc/launcher/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/htc/launcher/DesktopItemController;->removeItemFromFolder(Ljava/lang/String;Lcom/htc/launcher/FolderInfo;)V

    goto :goto_3

    .line 1919
    .end local v2           #arr$:[Lcom/htc/launcher/ItemInfo;
    .end local v3           #buttonBarInfoList:[Lcom/htc/launcher/ItemInfo;
    .end local v8           #i$:I
    .end local v12           #len$:I
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/FxItem;

    .line 1920
    .restart local v11       #item:Lcom/htc/launcher/FxItem;
    if-eqz v11, :cond_a

    .line 1922
    invoke-interface {v14, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1923
    const-string v15, "DesktopItemController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[EDIT_DEBUG] DesktopItemControll.removeShortcutsForPackage("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1926
    .end local v11           #item:Lcom/htc/launcher/FxItem;
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1927
    const/4 v7, 0x0

    .line 1928
    goto/16 :goto_0
.end method

.method public resumeRenderring()V
    .locals 2

    .prologue
    .line 1739
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] DesktopItemController.resumeRenderring()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 1741
    return-void
.end method

.method schedulePendingTask(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    const/16 v2, 0x515

    .line 1002
    invoke-virtual {p0}, Lcom/htc/launcher/DesktopItemController;->ensurePendingTaskRunner()V

    .line 1003
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mPendingAddToFxScreenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1009
    :cond_0
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mDragger:Lcom/htc/launcher/DragController;

    .line 1519
    return-void
.end method

.method setFxFloatingEnv(Lcom/htc/launcher/DesktopItemController$FloatingEnv;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mFxFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    .line 1561
    return-void
.end method

.method setLegacyFloatingEnv(Lcom/htc/launcher/DesktopItemController$FloatingEnv;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyFloatEnv:Lcom/htc/launcher/DesktopItemController$FloatingEnv;

    .line 1566
    return-void
.end method

.method setLegacyItemToEdit(Lcom/htc/launcher/ItemInfo;)V
    .locals 0
    .parameter "itemToEdit"

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController;->mLegacyItemToEdit:Lcom/htc/launcher/ItemInfo;

    .line 1304
    return-void
.end method

.method public startDragAppWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/ItemInfo;Landroid/graphics/RectF;)Z
    .locals 6
    .parameter "dragSource"
    .parameter "legacyLayout"
    .parameter "itemInfo"
    .parameter "bounds"

    .prologue
    .line 233
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] onStartDragAppWidget()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;->startFloatingLegacyWidget(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;ILandroid/graphics/RectF;)V

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z
    .locals 3
    .parameter "dragScource"
    .parameter "fxItem"
    .parameter "bounds"

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] startDragFxWidget()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p2, p3}, Lcom/htc/launcher/DesktopItemController;->putFxItemInTheAir(Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    .line 225
    invoke-virtual {p0}, Lcom/htc/launcher/DesktopItemController;->resumeRenderring()V

    .line 226
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    invoke-interface {v0, p2, p1, v1, v2}, Lcom/htc/launcher/DragController;->prepareDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    .line 227
    invoke-virtual {p2}, Lcom/htc/launcher/FxItem;->onDrag()V

    .line 228
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    invoke-interface {v0, p2, p1, v1, v2}, Lcom/htc/launcher/DragController;->startDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public startDragTextView(Lcom/htc/launcher/DragSource;Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;ILandroid/graphics/Rect;)V
    .locals 9
    .parameter "dragSource"
    .parameter "textView"
    .parameter "appInfo"
    .parameter "nDragAction"
    .parameter "rectBounds"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    new-instance v8, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v8, newView:Landroid/widget/ImageView;
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    const v0, 0x106000c

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 208
    invoke-virtual {v8, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {p3, v0, v2}, Lcom/htc/launcher/ApplicationInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/FxItem;

    .line 212
    .local v7, fxItem:Lcom/htc/launcher/FxItem;
    invoke-virtual {v7, v1}, Lcom/htc/launcher/FxItem;->setViaible(Z)V

    move-object v0, v7

    .line 213
    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {p3, v0}, Lcom/htc/launcher/ApplicationInfo;->setObserver(Lcom/htc/launcher/FxShortcutInfo$Observer;)V

    .line 216
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    iget v2, p5, Landroid/graphics/Rect;->left:I

    iget v3, p5, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p2

    move-object v4, p1

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/htc/launcher/DragController;->startDrag(Landroid/view/View;IILcom/htc/launcher/DragSource;Landroid/graphics/Rect;Z)V

    .line 219
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v7, v0}, Lcom/htc/launcher/DesktopItemController;->startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    .line 220
    return-void
.end method

.method public startFloating(Landroid/view/View;Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;I)V
    .locals 7
    .parameter "view"
    .parameter "from"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1535
    const-string v0, "DesktopItemController"

    const-string v1, "[EDIT_DEBUG] startFloatingLegacy()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingPos:[I

    .line 1538
    .local v6, xy:[I
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1539
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] DesktopItemControll.startFloating() floating pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v6, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v6, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController;->mFloatingBounds:Landroid/graphics/RectF;

    .line 1541
    .local v5, bounds:Landroid/graphics/RectF;
    aget v0, v6, v3

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 1542
    aget v0, v6, v4

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 1543
    aget v0, v6, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 1544
    aget v0, v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1545
    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;->startFloatingLegacy(Landroid/view/View;Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;ILandroid/graphics/RectF;)V

    .line 1546
    return-void
.end method

.method public updateFolderIconDropTarget(Lcom/htc/launcher/ItemInfo;)V
    .locals 13
    .parameter "draggedItemInfo"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2089
    instance-of v7, p1, Lcom/htc/launcher/ApplicationInfo;

    if-nez v7, :cond_1

    .line 2142
    :cond_0
    return-void

    .line 2092
    :cond_1
    iget-object v7, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-eqz v7, :cond_0

    .line 2096
    iget-object v7, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItems()Ljava/util/List;

    move-result-object v6

    .line 2097
    .local v6, shortcutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    .local v4, itemCaches:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    monitor-enter v6

    .line 2099
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxItem;

    .line 2100
    .local v3, item:Lcom/htc/launcher/FxItem;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2102
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/launcher/FxItem;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2104
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxItem;

    .line 2105
    .restart local v3       #item:Lcom/htc/launcher/FxItem;
    if-eqz v3, :cond_3

    .line 2108
    invoke-virtual {v3}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 2109
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    instance-of v7, v3, Lcom/htc/launcher/FolderIcon;

    if-nez v7, :cond_3

    .line 2111
    invoke-virtual {v2}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    move-object v7, p1

    check-cast v7, Lcom/htc/launcher/ApplicationInfo;

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    .end local v2           #info:Lcom/htc/launcher/ItemInfo;
    invoke-static {v7, v2}, Lcom/htc/launcher/FolderInfo;->isItemDuplicate(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2115
    :cond_4
    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v3           #item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v3, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    goto :goto_1

    .line 2118
    .restart local v3       #item:Lcom/htc/launcher/FxItem;
    :cond_5
    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v3           #item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v3, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    goto :goto_1

    .line 2122
    :cond_6
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/launcher/LauncherModel;->getButtonBarItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 2124
    .local v5, launcherBarItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/ItemInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ItemInfo;

    .line 2125
    .restart local v2       #info:Lcom/htc/launcher/ItemInfo;
    iget-object v7, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v7

    iget v8, v2, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v7, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .line 2127
    .local v0, button:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    if-eqz v0, :cond_7

    .line 2130
    instance-of v7, v2, Lcom/htc/launcher/FolderInfo;

    if-nez v7, :cond_7

    .line 2132
    invoke-virtual {v2}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8

    move-object v7, p1

    check-cast v7, Lcom/htc/launcher/ApplicationInfo;

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    .end local v2           #info:Lcom/htc/launcher/ItemInfo;
    invoke-static {v7, v2}, Lcom/htc/launcher/FolderInfo;->isItemDuplicate(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2136
    :cond_8
    invoke-virtual {v0, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    goto :goto_2

    .line 2139
    :cond_9
    invoke-virtual {v0, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    goto :goto_2
.end method

.method public updateFolderShortcutIconForPackage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, folderItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    const/4 v7, 0x1

    .line 2169
    iget-object v8, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 2170
    :cond_0
    const/4 v7, 0x0

    .line 2203
    :cond_1
    return v7

    .line 2172
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/FxItem;

    .line 2173
    .local v6, item:Lcom/htc/launcher/FxItem;
    if-eqz v6, :cond_3

    .line 2177
    invoke-virtual {v6}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    .line 2178
    .local v5, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v5, :cond_3

    .line 2182
    iget v8, v5, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 2186
    check-cast v5, Lcom/htc/launcher/FolderInfo;

    .end local v5           #info:Lcom/htc/launcher/ItemInfo;
    iget-object v1, v5, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 2187
    .local v1, appInfoLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 2188
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/htc/launcher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/htc/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2191
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_5

    .line 2192
    iget-object v8, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2194
    :cond_5
    if-eqz v4, :cond_4

    iget-object v8, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v4, v8, :cond_4

    .line 2195
    const-string v8, "DesktopItemController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[UPDATEICON] DeskController.updateFolderIconShortcutIconForPackage() - appInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " update!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    iget-object v8, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    .line 2197
    iget-object v8, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2198
    :cond_6
    iget-object v8, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8}, Lcom/htc/launcher/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2199
    iput-boolean v7, v0, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    goto :goto_0
.end method

.method public updateFolderThumbnails(JZLcom/htc/launcher/FxItem;)V
    .locals 7
    .parameter "id"
    .parameter "isForNavBar"
    .parameter "fxItem"

    .prologue
    .line 2287
    if-eqz p3, :cond_0

    .line 2288
    move-object v5, p4

    .line 2293
    .local v5, item:Lcom/htc/launcher/FxItem;
    :goto_0
    if-eqz v5, :cond_2

    .line 2294
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    sget-object v6, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v6, p1, p2}, Lcom/htc/launcher/LauncherModel;->findFolderById(J)Lcom/htc/launcher/FolderInfo;

    move-result-object v2

    .line 2296
    .local v2, folderInfo:Lcom/htc/launcher/FolderInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2297
    .local v4, icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v2, :cond_1

    .line 2298
    iget-object v1, v2, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 2301
    .local v1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 2302
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 2303
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v6, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2290
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    .end local v2           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v3           #i:I
    .end local v4           #icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .end local v5           #item:Lcom/htc/launcher/FxItem;
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v6, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItem(J)Lcom/htc/launcher/FxItem;

    move-result-object v5

    .restart local v5       #item:Lcom/htc/launcher/FxItem;
    goto :goto_0

    .line 2307
    .restart local v2       #folderInfo:Lcom/htc/launcher/FolderInfo;
    .restart local v4       #icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    check-cast v5, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v5           #item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v5, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setThumbnails(Ljava/util/ArrayList;)V

    .line 2309
    .end local v2           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v4           #icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    return-void
.end method

.method public updateNavbarFolderThumbnails()V
    .locals 10

    .prologue
    .line 2265
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTargetCount()I

    move-result v5

    .line 2266
    .local v5, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 2268
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v4

    .line 2269
    .local v4, lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v3

    .line 2270
    .local v3, item:Lcom/htc/launcher/FxItem;
    if-nez v3, :cond_1

    .line 2266
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2274
    :cond_1
    invoke-virtual {v3}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 2275
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    if-nez v2, :cond_2

    instance-of v6, v2, Lcom/htc/launcher/FolderInfo;

    if-nez v6, :cond_0

    :cond_2
    move-object v0, v2

    .line 2279
    check-cast v0, Lcom/htc/launcher/FolderInfo;

    .line 2281
    .local v0, folderInfo:Lcom/htc/launcher/FolderInfo;
    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    iget-wide v7, v0, Lcom/htc/launcher/FolderInfo;->id:J

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/htc/launcher/DesktopItemController;->updateFolderThumbnails(JZLcom/htc/launcher/FxItem;)V

    goto :goto_1

    .line 2283
    .end local v0           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v2           #info:Lcom/htc/launcher/ItemInfo;
    .end local v3           #item:Lcom/htc/launcher/FxItem;
    .end local v4           #lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    :cond_3
    return-void
.end method

.method public updateNavbarShortcutIconForPackage(Ljava/lang/String;)V
    .locals 13
    .parameter "packageName"

    .prologue
    const/4 v12, 0x1

    .line 2207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2208
    .local v2, folderItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTargetCount()I

    move-result v9

    .line 2209
    .local v9, nCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_6

    .line 2210
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v8

    .line 2212
    .local v8, lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v7

    .line 2213
    .local v7, item:Lcom/htc/launcher/FxItem;
    if-nez v7, :cond_1

    .line 2209
    .end local v7           #item:Lcom/htc/launcher/FxItem;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2217
    .restart local v7       #item:Lcom/htc/launcher/FxItem;
    :cond_1
    invoke-virtual {v7}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    .line 2218
    .local v5, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v5, :cond_0

    .line 2222
    iget v10, v5, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 2223
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2227
    :cond_2
    iget v10, v5, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v10, :cond_3

    iget v10, v5, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v10, v12, :cond_0

    :cond_3
    move-object v10, v5

    .line 2231
    check-cast v10, Lcom/htc/launcher/ApplicationInfo;

    iget-object v6, v10, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 2232
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 2236
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2237
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 2241
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, v5

    .line 2245
    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 2246
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v11}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Lcom/htc/launcher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/htc/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2247
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_4

    .line 2248
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2251
    :cond_4
    if-eqz v4, :cond_0

    iget-object v10, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v4, v10, :cond_0

    .line 2252
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v4, v10}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2253
    iget-object v10, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    .line 2254
    iget-object v10, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2256
    :cond_5
    iput-boolean v12, v0, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 2257
    check-cast v7, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v7           #item:Lcom/htc/launcher/FxItem;
    iget-object v10, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2261
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #info:Lcom/htc/launcher/ItemInfo;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    :cond_6
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10, p1, v2}, Lcom/htc/launcher/DesktopItemController;->updateFolderShortcutIconForPackage(Ljava/lang/String;Ljava/util/List;)Z

    .line 2262
    return-void
.end method

.method updatePendingSyncPackages()V
    .locals 4

    .prologue
    .line 2035
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2036
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2037
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/launcher/DesktopItemController;->updateShortcutsForPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2038
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2039
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    .line 2041
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2044
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2045
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 2046
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2047
    :try_start_2
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2048
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mPendingSyncPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2050
    .end local v1           #packageName:Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2051
    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController;->mTempSyncedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2053
    :cond_4
    return-void
.end method

.method public updateShortcutsForPackage(Ljava/lang/String;)Z
    .locals 13
    .parameter "packageName"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1968
    iget-object v9, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-eqz v9, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v9, v11

    .line 2023
    :goto_0
    return v9

    .line 1971
    :cond_1
    iget-object v9, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItems()Ljava/util/List;

    move-result-object v7

    .line 1972
    .local v7, shortcutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    const/4 v8, 0x0

    .line 1973
    .local v8, successUpdateCount:I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/FxItem;

    .line 1975
    .local v6, item:Lcom/htc/launcher/FxItem;
    if-eqz v6, :cond_2

    .line 1979
    invoke-virtual {v6}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    .line 1980
    .local v4, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v4, :cond_2

    .line 1984
    iget v9, v4, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v9, :cond_3

    iget v9, v4, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v9, v10, :cond_2

    :cond_3
    move-object v9, v4

    .line 1989
    check-cast v9, Lcom/htc/launcher/ApplicationInfo;

    iget-object v5, v9, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1990
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_2

    .line 1994
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1995
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 1999
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v4

    .line 2003
    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 2004
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v9

    iget-object v12, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v12}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v9, v12, v0}, Lcom/htc/launcher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/htc/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2006
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_4

    .line 2007
    iget-object v9, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2010
    :cond_4
    if-eqz v3, :cond_6

    iget-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v3, v9, :cond_6

    .line 2011
    iget-object v9, p0, Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v3, v9}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2012
    iget-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 2013
    iget-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2015
    :cond_5
    iput-boolean v10, v0, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 2016
    check-cast v6, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v6           #item:Lcom/htc/launcher/FxItem;
    iget-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2018
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 2019
    goto :goto_1

    .line 2020
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #info:Lcom/htc/launcher/ItemInfo;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_7
    if-lez v8, :cond_8

    move v9, v10

    .line 2021
    goto/16 :goto_0

    :cond_8
    move v9, v11

    .line 2023
    goto/16 :goto_0
.end method

.method public updateWidgetContainerId(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "screen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1766
    .local p1, fxItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    if-nez p1, :cond_1

    .line 1778
    :cond_0
    return-void

    .line 1768
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FxItem;

    .line 1769
    .local v0, fxItem:Lcom/htc/launcher/FxItem;
    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 1770
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_2

    .line 1773
    iput p2, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 1774
    instance-of v3, v2, Lcom/htc/launcher/FxItemInfo;

    if-eqz v3, :cond_2

    .line 1775
    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    check-cast v2, Lcom/htc/launcher/FxItemInfo;

    .end local v2           #info:Lcom/htc/launcher/ItemInfo;
    iget v4, v2, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    invoke-virtual {v3, v4, p2}, Lcom/htc/android/rosie/home/HostWidgetManager;->updateWidgetContainerId(II)V

    goto :goto_0
.end method
