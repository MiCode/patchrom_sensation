.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;
    }
.end annotation


# static fields
.field private static final ALT:Ljava/lang/Object; = null

.field private static final CAP:Ljava/lang/Object; = null

.field private static final LOCKED:I = 0x4000011

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object; = null

.field private static final SYM:Ljava/lang/Object; = null

.field private static final USED:I = 0x3000011

.field private static mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Landroid/text/NoCopySpan$MetaSpan;

    invoke-direct {v0}, Landroid/text/NoCopySpan$MetaSpan;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 145
    new-instance v0, Landroid/text/NoCopySpan$MetaSpan;

    invoke-direct {v0}, Landroid/text/NoCopySpan$MetaSpan;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 146
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-direct {v0, p0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;-><init>(Landroid/text/method/MetaKeyKeyListener;)V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    .line 169
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    return-object v0
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 299
    .local v0, current:I
    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    .line 300
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_0

    .line 303
    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 10
    .parameter "state"

    .prologue
    const-wide v2, -0x1010100000102L

    const-wide v8, -0x2020200000203L

    const-wide v6, -0x4040400000405L

    const-wide/16 v4, 0x0

    .line 574
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 575
    and-long v0, p0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long p0, v0, v2

    .line 580
    :cond_0
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 581
    and-long v0, p0, v8

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide v2, 0x200000000L

    or-long p0, v0, v2

    .line 586
    :cond_1
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 587
    and-long v0, p0, v6

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    .line 591
    :cond_2
    :goto_2
    return-wide p0

    .line 576
    :cond_3
    const-wide/high16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 577
    and-long/2addr p0, v2

    goto :goto_0

    .line 582
    :cond_4
    const-wide/high16 v0, 0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 583
    and-long/2addr p0, v8

    goto :goto_1

    .line 588
    :cond_5
    const-wide/high16 v0, 0x4

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 589
    and-long/2addr p0, v6

    goto :goto_2
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 270
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 271
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 272
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    .line 277
    :cond_0
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .parameter "content"
    .parameter "states"

    .prologue
    .line 475
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 476
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 478
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 479
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 480
    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 481
    :cond_4
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_5

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 482
    :cond_5
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4
    .parameter "text"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const/4 v2, 0x0

    .line 248
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_1

    move p3, v2

    .line 260
    .end local p3
    :cond_0
    :goto_0
    return p3

    .restart local p3
    :cond_1
    move-object v1, p0

    .line 252
    check-cast v1, Landroid/text/Spanned;

    .line 253
    .local v1, sp:Landroid/text/Spanned;
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 255
    .local v0, flag:I
    const v3, 0x4000011

    if-eq v0, v3, :cond_0

    .line 257
    if-eqz v0, :cond_2

    move p3, p2

    .line 258
    goto :goto_0

    :cond_2
    move p3, v2

    .line 260
    goto :goto_0
.end method

.method public static final getMetaState(J)I
    .locals 5
    .parameter "state"

    .prologue
    const-wide/16 v3, 0x0

    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, result:I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 517
    or-int/lit16 v0, v0, 0x100

    .line 522
    :cond_0
    :goto_0
    const-wide/16 v1, 0x200

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 523
    or-int/lit16 v0, v0, 0x200

    .line 528
    :cond_1
    :goto_1
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 529
    or-int/lit16 v0, v0, 0x400

    .line 534
    :cond_2
    :goto_2
    return v0

    .line 518
    :cond_3
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 519
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_4
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 525
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 530
    :cond_5
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 531
    or-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method public static final getMetaState(JI)I
    .locals 7
    .parameter "state"
    .parameter "meta"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 546
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 548
    :pswitch_1
    const-wide/16 v3, 0x100

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 549
    const-wide/16 v3, 0x1

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 550
    goto :goto_0

    .line 553
    :pswitch_2
    const-wide/16 v3, 0x200

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 554
    const-wide/16 v3, 0x2

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 555
    goto :goto_0

    .line 558
    :pswitch_3
    const-wide/16 v3, 0x400

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 559
    const-wide/16 v3, 0x4

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 560
    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "text"

    .prologue
    const/16 v4, 0x800

    .line 213
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "text"
    .parameter "meta"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 228
    sparse-switch p1, :sswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 230
    :sswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 233
    :sswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 236
    :sswitch_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 239
    :sswitch_3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 13
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 598
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 599
    :cond_0
    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide/16 v5, 0x100

    const-wide v7, 0x10000000000L

    const-wide/high16 v9, 0x1

    const-wide v11, 0x100000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    .line 613
    .end local p0
    :cond_1
    :goto_0
    return-wide p0

    .line 603
    .restart local p0
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 605
    :cond_3
    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide/16 v5, 0x200

    const-wide v7, 0x20000000000L

    const-wide/high16 v9, 0x2

    const-wide v11, 0x200000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_0

    .line 609
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 610
    const/4 v2, 0x4

    const-wide v3, 0x4040400000404L

    const-wide/16 v5, 0x400

    const-wide v7, 0x40000000000L

    const-wide/high16 v9, 0x4

    const-wide v11, 0x400000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 12
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 636
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 637
    :cond_0
    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide v5, 0x10000000000L

    const-wide/high16 v7, 0x1

    const-wide v9, 0x100000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    .line 651
    .end local p0
    :cond_1
    :goto_0
    return-wide p0

    .line 641
    .restart local p0
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 643
    :cond_3
    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide v5, 0x20000000000L

    const-wide/high16 v7, 0x2

    const-wide v9, 0x200000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_0

    .line 647
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 648
    const/4 v2, 0x4

    const-wide v3, 0x4040400000404L

    const-wide v5, 0x40000000000L

    const-wide/high16 v7, 0x4

    const-wide v9, 0x400000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_0
.end method

.method private static hasHWKB()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, hasHWKB:Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 154
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v2, :cond_0

    const/4 v2, 0x3

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v2, :cond_1

    const/4 v1, 0x1

    .line 159
    .end local v0           #config:Landroid/content/res/Configuration;
    :goto_0
    return v1

    .line 154
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    .end local v0           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
    .line 284
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
    .line 293
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static press(JIJJJJJ)J
    .locals 4
    .parameter "state"
    .parameter "what"
    .parameter "mask"
    .parameter "locked"
    .parameter "pressed"
    .parameter "released"
    .parameter "used"

    .prologue
    .line 618
    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-wide p0

    .line 620
    :cond_1
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 621
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    or-long p0, v0, p5

    goto :goto_0

    .line 622
    :cond_2
    and-long v0, p0, p11

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 624
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 625
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 627
    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 6
    .parameter "content"
    .parameter "what"

    .prologue
    const v5, 0x4000011

    const v4, 0x1000011

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 358
    .local v0, state:I
    if-ne v0, v4, :cond_2

    .line 375
    :cond_0
    :goto_0
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v1, :cond_1

    .line 376
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v1}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    .line 377
    :cond_1
    return-void

    .line 360
    :cond_2
    const v1, 0x2000011

    if-ne v0, v1, :cond_3

    .line 361
    invoke-interface {p1, p2, v2, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 362
    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 364
    :cond_3
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    .line 366
    if-ne v0, v5, :cond_4

    .line 368
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_4
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 371
    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "content"
    .parameter "what"
    .parameter "event"

    .prologue
    const v5, 0x4000011

    const v4, 0x1000011

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 383
    .local v0, state:I
    if-ne v0, v4, :cond_2

    .line 402
    :cond_0
    :goto_0
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v1, :cond_1

    .line 403
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v1}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    .line 404
    :cond_1
    return-void

    .line 385
    :cond_2
    const v1, 0x2000011

    if-ne v0, v1, :cond_3

    .line 386
    invoke-interface {p1, p2, v2, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 387
    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 389
    :cond_3
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    .line 391
    if-ne v0, v5, :cond_5

    .line 392
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 393
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_4
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_5
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 399
    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 4
    .parameter "state"
    .parameter "what"
    .parameter "mask"
    .parameter "pressed"
    .parameter "released"
    .parameter "used"
    .parameter "event"

    .prologue
    .line 656
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 666
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 669
    :cond_0
    :goto_0
    return-wide p0

    .line 658
    :pswitch_0
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 659
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 660
    :cond_1
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 661
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "content"
    .parameter "what"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, current:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 464
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :pswitch_0
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    .line 454
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 456
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 458
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v1, :cond_0

    .line 459
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v1, p1, p2}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->sendMetaKeyTimer(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .parameter "content"
    .parameter "what"

    .prologue
    .line 722
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 723
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    :try_start_0
    const-string/jumbo v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    .line 726
    .local v0, hService:Landroid/os/IHtcHardwareService;
    if-eqz v0, :cond_0

    .line 727
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 728
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHtcHardwareService;->setCapsLedState(Z)V

    .line 734
    .end local v0           #hService:Landroid/os/IHtcHardwareService;
    :cond_0
    :goto_0
    return-void

    .line 729
    .restart local v0       #hService:Landroid/os/IHtcHardwareService;
    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 730
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHtcHardwareService;->setFnLedState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    .end local v0           #hService:Landroid/os/IHtcHardwareService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .parameter "content"
    .parameter "what"

    .prologue
    .line 318
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 320
    .local v0, current:I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 322
    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 323
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4
    .parameter "state"

    .prologue
    const-wide/16 v2, 0x0

    .line 489
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 490
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 492
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 493
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 495
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 496
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 498
    :cond_2
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 313
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 314
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 178
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 179
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 180
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    .line 185
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    .line 187
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    .line 191
    :cond_0
    return-void
.end method

.method public static resetMetaStateWithoutLED(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 198
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 199
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 200
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 201
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method private static setCapsFnLed(Ljava/lang/Object;Z)V
    .locals 2
    .parameter "what"
    .parameter "on"

    .prologue
    .line 737
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    :try_start_0
    const-string/jumbo v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    .line 740
    .local v0, hService:Landroid/os/IHtcHardwareService;
    if-eqz v0, :cond_0

    .line 741
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    .line 742
    invoke-interface {v0, p1}, Landroid/os/IHtcHardwareService;->setCapsLedState(Z)V

    .line 748
    .end local v0           #hService:Landroid/os/IHtcHardwareService;
    :cond_0
    :goto_0
    return-void

    .line 743
    .restart local v0       #hService:Landroid/os/IHtcHardwareService;
    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    .line 744
    invoke-interface {v0, p1}, Landroid/os/IHtcHardwareService;->setFnLedState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v0           #hService:Landroid/os/IHtcHardwareService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 412
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 413
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .parameter "view"
    .parameter "content"

    .prologue
    .line 421
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 422
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 4
    .parameter "state"
    .parameter "which"

    .prologue
    const-wide/16 v2, 0x0

    .line 679
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 680
    const-wide v0, -0x1010100000102L

    and-long/2addr p1, v0

    .line 682
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 683
    const-wide v0, -0x2020200000203L

    and-long/2addr p1, v0

    .line 685
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 686
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 688
    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 470
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 471
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 330
    const/16 v1, 0xe2

    if-ne p3, v1, :cond_0

    .line 331
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetMetaStateWithoutLED(Landroid/text/Spannable;)V

    .line 352
    :goto_0
    return v0

    .line 336
    :cond_0
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_1

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_2

    .line 337
    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 341
    :cond_2
    const/16 v1, 0x39

    if-eq p3, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_3

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_4

    .line 343
    :cond_3
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 347
    :cond_4
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_5

    .line 348
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 352
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 428
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_1

    .line 429
    :cond_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 444
    :goto_0
    return v0

    .line 433
    :cond_1
    const/16 v1, 0x39

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_2

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_3

    .line 435
    :cond_2
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 439
    :cond_3
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_4

    .line 440
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 444
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
