.class public Lcom/android/camera/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# static fields
.field public static final CLOSED:I = 0x2

.field public static final CLOSING:I = 0x1

.field public static final OPENED:I = 0x0

.field public static final QUALITY_MENU:I = 0x2

.field public static final SCENE_MENU:I = 0x3

.field public static final SETTING_MENU:I = 0x0

.field public static final SWITCH_MENU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PopupMenu"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field private m_Anchor:Landroid/view/View;

.field private final m_CloseEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_Context:Landroid/content/Context;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private m_Height:I

.field private m_Menu:Lcom/htc/widget/PopupBubbleWindow;

.field private m_MenuState:I

.field private m_NeedReopen:Z

.field private m_Orientation:I

.field private m_Type:I

.field private final m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

.field private m_View:Landroid/view/View;

.field private m_Width:I

.field private m_menuPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    .line 47
    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    .line 49
    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    .line 54
    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Lcom/android/camera/widget/PopupMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/PopupMenu$1;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    .line 70
    new-instance v0, Lcom/android/camera/widget/PopupMenu$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/PopupMenu$2;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

    .line 83
    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 85
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    .line 87
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Request.ResetToDefault"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SameMenuItem.Selected"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.TimeOut"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "3DMode.Switched"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SelfTimer.Changed"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Resolution.Selected"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Mode.Switched"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Expanded"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Collapsed"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    .line 103
    iput p2, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/PopupMenu;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PopupMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/PopupMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/widget/PopupMenu;)Lcom/android/camera/EventManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/widget/PopupMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    .line 158
    :cond_0
    return-void
.end method

.method public getViewHeight()I
    .locals 4

    .prologue
    .line 350
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v2, :cond_1

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 355
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v1, v2, v3

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v2, Lcom/android/camera/widget/IPopupMenuView;

    invoke-interface {v2}, Lcom/android/camera/widget/IPopupMenuView;->getViewHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    add-int/2addr v2, v3

    .line 360
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #padding:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    .line 112
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupMenu$3;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 138
    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setTouchable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Opening"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    .line 151
    return-void
.end method

.method public setMenuSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 166
    iput p2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    .line 167
    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    .line 168
    return-void
.end method

.method public setMenuSizeByType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    .line 172
    return-void
.end method

.method public setMenuSizeByType(II)V
    .locals 10
    .parameter "orientation"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-nez v7, :cond_0

    .line 307
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 181
    .local v5, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 182
    .local v0, height:I
    const/4 v6, 0x0

    .line 184
    .local v6, width:I
    const/4 v1, 0x0

    .line 185
    .local v1, max_height:I
    const/4 v2, 0x0

    .line 186
    .local v2, max_width:I
    const/4 v3, 0x0

    .line 187
    .local v3, menu_height:I
    const/4 v4, 0x0

    .line 189
    .local v4, menu_width:I
    if-eqz p1, :cond_1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_5

    .line 190
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 306
    :goto_1
    invoke-virtual {p0, v6, v0}, Lcom/android/camera/widget/PopupMenu;->setMenuSize(II)V

    goto :goto_0

    .line 192
    :pswitch_0
    const v7, 0x7f0b0028

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    const v7, 0x7f0b0029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    .line 195
    if-le v3, v1, :cond_2

    .line 196
    move v0, v1

    .line 197
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    .line 201
    :cond_2
    move v0, v3

    .line 202
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    .line 209
    :pswitch_1
    const/4 v0, -0x2

    .line 210
    const v7, 0x7f0b002d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 211
    goto :goto_1

    .line 213
    :pswitch_2
    const v7, 0x7f0b0034

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 214
    const v7, 0x7f0b0035

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    .line 216
    if-le v3, v1, :cond_3

    .line 217
    move v0, v1

    .line 218
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    .line 222
    :cond_3
    move v0, v3

    .line 223
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    .line 229
    :pswitch_3
    const v7, 0x7f0b0030

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 230
    const v7, 0x7f0b0031

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    .line 232
    if-le v3, v1, :cond_4

    .line 233
    move v0, v1

    .line 234
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 238
    :cond_4
    move v0, v3

    .line 239
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 246
    :cond_5
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_1

    .line 248
    :pswitch_4
    const v7, 0x7f0b002a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 249
    const v7, 0x7f0b002b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    .line 252
    if-le v4, v2, :cond_6

    .line 253
    move v6, v2

    .line 254
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 258
    :cond_6
    move v6, v4

    .line 259
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 266
    :pswitch_5
    const v7, 0x7f0b002e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    const/4 v6, -0x2

    .line 268
    goto/16 :goto_1

    .line 270
    :pswitch_6
    const v7, 0x7f0b0036

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 271
    const v7, 0x7f0b0037

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    .line 274
    if-le v4, v2, :cond_7

    .line 275
    move v6, v2

    .line 276
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 280
    :cond_7
    move v6, v4

    .line 281
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 287
    :pswitch_7
    const v7, 0x7f0b0032

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 289
    const v7, 0x7f0b0033

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 291
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    .line 292
    if-le v4, v2, :cond_8

    .line 293
    move v6, v2

    .line 294
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 298
    :cond_8
    move v6, v4

    .line 299
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setOrientation(II)V
    .locals 2
    .parameter "orientation"
    .parameter "menuType"

    .prologue
    const/4 v1, 0x1

    .line 331
    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    if-eq v0, v1, :cond_0

    .line 336
    iput-boolean v1, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->close()V

    .line 339
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    .line 163
    :cond_0
    return-void
.end method

.method public toggle(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "anchor"
    .parameter "view"

    .prologue
    const/4 v2, -0x2

    .line 312
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    if-nez v0, :cond_0

    .line 313
    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-nez v0, :cond_1

    .line 316
    iput-object p2, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;)V

    .line 321
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->open()V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->close()V

    goto :goto_0
.end method

.method public updatePopMenuSize()V
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    iget v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->update(II)V

    .line 369
    :cond_0
    return-void
.end method
