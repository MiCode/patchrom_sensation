.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 47
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 50
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 55
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 57
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 2246
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2275
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2277
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 59
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 60
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 2275
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    .line 2277
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 118
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 120
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 141
    if-gez p3, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    .line 149
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 150
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 153
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 154
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 155
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 156
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 157
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 158
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 159
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 160
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 161
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1725
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1726
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1727
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1729
    .local v9, dirs:Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1730
    add-int/lit8 v15, v15, -0x1

    .line 1732
    :cond_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1733
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1734
    .local v13, here:I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1736
    .local v18, there:I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1737
    move/from16 v18, v15

    .line 1739
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1740
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1741
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1743
    .local v10, en:I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1744
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v11

    .line 1745
    .local v11, h1:F
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v12

    .line 1747
    .local v12, h2:F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1748
    .local v4, left:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1750
    .local v6, right:F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1732
    .end local v4           #left:F
    .end local v6           #right:F
    .end local v10           #en:I
    .end local v11           #h1:F
    .end local v12           #h2:F
    .end local v17           #st:I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1754
    .end local v13           #here:I
    .end local v18           #there:I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CI)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 2089
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 2091
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 2113
    :cond_0
    return-void

    .line 2095
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2096
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2098
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 2101
    if-ne v4, v3, :cond_3

    .line 2102
    const/16 v1, 0x2026

    .line 2107
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 2109
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 2110
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 2098
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2104
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, need:F
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 84
    .local v4, workPaint:Landroid/text/TextPaint;
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 85
    const/16 v5, 0xa

    invoke-static {p0, v5, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 87
    .local v2, next:I
    if-gez v2, :cond_0

    .line 88
    move v2, p2

    .line 91
    :cond_0
    invoke-static {p3, v4, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 93
    .local v3, w:F
    cmpl-float v5, v3, v1

    if-lez v5, :cond_1

    .line 94
    move v1, v3

    .line 96
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    move v0, v2

    goto :goto_0

    .line 99
    .end local v2           #next:I
    .end local v3           #w:F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailing"

    .prologue
    .line 1121
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1123
    .local v0, line:I
    invoke-direct {p0, p1, p2, v0}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZI)F
    .locals 14
    .parameter "offset"
    .parameter "trailing"
    .parameter "line"

    .prologue
    .line 1127
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1128
    .local v4, start:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1129
    .local v5, end:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1130
    .local v6, dir:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 1131
    .local v8, hasTabOrEmoji:Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1133
    .local v7, directions:Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 1134
    .local v9, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 1137
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 1138
    .local v12, tabs:[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 1139
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1143
    .end local v12           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v9       #tabStops:Landroid/text/Layout$TabStops;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1144
    .local v1, tl:Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1145
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1146
    .local v13, wid:F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1148
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 1149
    .local v10, left:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 1151
    .local v11, right:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .parameter "line"
    .parameter "tabStops"
    .parameter "full"

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1281
    .local v3, start:I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1282
    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1283
    .local v7, hasTabsOrEmoji:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1284
    .local v6, directions:Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1286
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1287
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1289
    .local v9, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1290
    return v9

    .line 1281
    .end local v0           #tl:Landroid/text/TextLine;
    .end local v4           #end:I
    .end local v5           #dir:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v9           #width:F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 11
    .parameter "line"
    .parameter "full"

    .prologue
    .line 1244
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1245
    .local v3, start:I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1247
    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1248
    .local v7, hasTabsOrEmoji:Z
    const/4 v8, 0x0

    .line 1249
    .local v8, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 1253
    .local v9, tabs:[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 1254
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1257
    .end local v9           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1259
    .local v6, directions:Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 1260
    const/4 v10, 0x0

    .line 1268
    :goto_1
    return v10

    .line 1245
    .end local v4           #end:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0

    .line 1262
    .restart local v4       #end:I
    .restart local v6       #directions:Landroid/text/Layout$Directions;
    .restart local v7       #hasTabsOrEmoji:Z
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1264
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1265
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 1267
    .local v10, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_1
.end method

.method private getLineStartPos(III)I
    .locals 12
    .parameter "line"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v11, 0x1

    .line 790
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 791
    .local v0, align:Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 794
    .local v1, dir:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 795
    move v8, p2

    .line 828
    .local v8, x:I
    :goto_0
    return v8

    .line 796
    .end local v8           #x:I
    :cond_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 797
    if-ne v1, v11, :cond_1

    .line 798
    move v8, p2

    .restart local v8       #x:I
    goto :goto_0

    .line 800
    .end local v8           #x:I
    :cond_1
    move v8, p3

    .restart local v8       #x:I
    goto :goto_0

    .line 803
    .end local v8           #x:I
    :cond_2
    const/4 v7, 0x0

    .line 804
    .local v7, tabStops:Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 805
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 806
    .local v4, spanned:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 807
    .local v5, start:I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 809
    .local v3, spanEnd:I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 810
    .local v6, tabSpans:[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_3

    .line 811
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 814
    .end local v3           #spanEnd:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #start:I
    .end local v6           #tabSpans:[Landroid/text/style/TabStopSpan;
    .restart local v7       #tabStops:Landroid/text/Layout$TabStops;
    :cond_3
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 815
    .local v2, max:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_4

    .line 816
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_0

    .line 817
    .end local v8           #x:I
    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_6

    .line 818
    if-ne v1, v11, :cond_5

    .line 819
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_0

    .line 821
    .end local v8           #x:I
    :cond_5
    sub-int v8, p2, v2

    .restart local v8       #x:I
    goto :goto_0

    .line 824
    .end local v8           #x:I
    :cond_6
    and-int/lit8 v2, v2, -0x2

    .line 825
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    .restart local v8       #x:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1432
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1434
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    move v2, p3

    .line 1451
    :goto_0
    return v2

    .line 1438
    .local v0, ch:C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1439
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1441
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1442
    add-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 1445
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0           #ch:C
    :cond_3
    move v2, p3

    .line 1451
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .parameter "offset"

    .prologue
    .line 1541
    if-nez p1, :cond_0

    .line 1542
    const/4 v7, 0x0

    .line 1567
    :goto_0
    return v7

    .line 1544
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1545
    .local v6, text:Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1547
    .local v0, c:C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1548
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1550
    .local v1, c1:C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1551
    add-int/lit8 p1, p1, -0x1

    .line 1554
    .end local v1           #c1:C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1555
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1558
    .local v4, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 1559
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, start:I
    move-object v7, v6

    .line 1560
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1562
    .local v2, end:I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1563
    move p1, v5

    .line 1558
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v5           #start:I
    :cond_3
    move v7, p1

    .line 1567
    goto :goto_0
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 15
    .parameter "caret"
    .parameter "toLeft"

    .prologue
    .line 1487
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 1488
    .local v12, line:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1489
    .local v4, lineStart:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1490
    .local v5, lineEnd:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1492
    .local v6, lineDir:I
    const/4 v13, 0x0

    .line 1493
    .local v13, lineChanged:Z
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v10, 0x1

    .line 1495
    .local v10, advance:Z
    :goto_1
    if-eqz v10, :cond_5

    .line 1496
    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 1497
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_4

    .line 1498
    const/4 v13, 0x1

    .line 1499
    add-int/lit8 v12, v12, 0x1

    .line 1515
    :cond_0
    :goto_2
    if-eqz v13, :cond_1

    .line 1516
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1517
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1518
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    .line 1519
    .local v14, newDir:I
    if-eq v14, v6, :cond_1

    .line 1523
    if-nez p2, :cond_7

    const/16 p2, 0x1

    .line 1524
    :goto_3
    move v6, v14

    .line 1528
    .end local v14           #newDir:I
    :cond_1
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1530
    .local v7, directions:Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1532
    .local v1, tl:Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1533
    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    .line 1534
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    .line 1535
    .end local v1           #tl:Landroid/text/TextLine;
    .end local v7           #directions:Landroid/text/Layout$Directions;
    .end local p1
    .local v11, caret:I
    :goto_4
    return v11

    .line 1493
    .end local v10           #advance:Z
    .end local v11           #caret:I
    .restart local p1
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #advance:Z
    :cond_4
    move/from16 v11, p1

    .line 1501
    .end local p1
    .restart local v11       #caret:I
    goto :goto_4

    .line 1505
    .end local v11           #caret:I
    .restart local p1
    :cond_5
    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 1506
    if-lez v12, :cond_6

    .line 1507
    const/4 v13, 0x1

    .line 1508
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move/from16 v11, p1

    .line 1510
    .end local p1
    .restart local v11       #caret:I
    goto :goto_4

    .line 1523
    .end local v11           #caret:I
    .restart local v14       #newDir:I
    .restart local p1
    :cond_7
    const/16 p2, 0x0

    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .parameter "line"

    .prologue
    .line 1867
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_1

    .line 1868
    const/4 v6, 0x0

    .line 1899
    :cond_0
    :goto_0
    return v6

    .line 1870
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1872
    .local v11, spanned:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1873
    .local v5, lineStart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1874
    .local v4, lineEnd:I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1876
    .local v9, spanEnd:I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1878
    .local v12, spans:[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_2

    .line 1879
    const/4 v6, 0x0

    goto :goto_0

    .line 1882
    :cond_2
    const/4 v6, 0x0

    .line 1884
    .local v6, margin:I
    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 1887
    .local v3, isFirstParaLine:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_0

    .line 1888
    aget-object v8, v12, v2

    .line 1889
    .local v8, span:Landroid/text/style/LeadingMarginSpan;
    move v13, v3

    .line 1890
    .local v13, useFirstLineMargin:Z
    instance-of v14, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 1891
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1892
    .local v7, spStart:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .local v10, spanLine:I
    move-object v14, v8

    .line 1893
    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1894
    .local v1, count:I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_6

    const/4 v13, 0x1

    .line 1896
    .end local v1           #count:I
    .end local v7           #spStart:I
    .end local v10           #spanLine:I
    :cond_4
    :goto_3
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1887
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1884
    .end local v2           #i:I
    .end local v3           #isFirstParaLine:Z
    .end local v8           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v13           #useFirstLineMargin:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1894
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #isFirstParaLine:Z
    .restart local v7       #spStart:I
    .restart local v8       #span:Landroid/text/style/LeadingMarginSpan;
    .restart local v10       #spanLine:I
    .restart local v13       #useFirstLineMargin:Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2080
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2081
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2084
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 20
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1906
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v15

    .line 1907
    .local v15, mt:Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v19

    .line 1909
    .local v19, tl:Landroid/text/TextLine;
    :try_start_0
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1912
    iget-boolean v3, v15, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_1

    .line 1913
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1914
    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v8, 0x1

    .line 1920
    .local v8, dir:I
    :goto_0
    iget-object v12, v15, Landroid/text/MeasuredText;->mChars:[C

    .line 1921
    .local v12, chars:[C
    iget v14, v15, Landroid/text/MeasuredText;->mLen:I

    .line 1922
    .local v14, len:I
    const/4 v10, 0x0

    .line 1923
    .local v10, hasTabs:Z
    const/4 v11, 0x0

    .line 1924
    .local v11, tabStops:Landroid/text/Layout$TabStops;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v14, :cond_0

    .line 1925
    aget-char v3, v12, v13

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1926
    const/4 v10, 0x1

    .line 1927
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1928
    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v17, v0

    .line 1929
    .local v17, spanned:Landroid/text/Spanned;
    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v16

    .line 1931
    .local v16, spanEnd:I
    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/TabStopSpan;

    .line 1933
    .local v18, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1934
    new-instance v11, Landroid/text/Layout$TabStops;

    .end local v11           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v3, 0x14

    move-object/from16 v0, v18

    invoke-direct {v11, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v16           #spanEnd:I
    .end local v17           #spanned:Landroid/text/Spanned;
    .end local v18           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v11       #tabStops:Landroid/text/Layout$TabStops;
    :cond_0
    move-object/from16 v3, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 1940
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1941
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1943
    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1944
    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1941
    return v3

    .line 1916
    .end local v8           #dir:I
    .end local v9           #directions:Landroid/text/Layout$Directions;
    .end local v10           #hasTabs:Z
    .end local v11           #tabStops:Landroid/text/Layout$TabStops;
    .end local v12           #chars:[C
    .end local v13           #i:I
    .end local v14           #len:I
    :cond_1
    :try_start_1
    iget v3, v15, Landroid/text/MeasuredText;->mDir:I

    iget-object v4, v15, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v5, 0x0

    iget-object v6, v15, Landroid/text/MeasuredText;->mChars:[C

    const/4 v7, 0x0

    iget v8, v15, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v3 .. v8}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1918
    .restart local v9       #directions:Landroid/text/Layout$Directions;
    iget v8, v15, Landroid/text/MeasuredText;->mDir:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8       #dir:I
    goto :goto_0

    .line 1924
    .restart local v10       #hasTabs:Z
    .restart local v11       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v12       #chars:[C
    .restart local v13       #i:I
    .restart local v14       #len:I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1943
    .end local v8           #dir:I
    .end local v9           #directions:Landroid/text/Layout$Directions;
    .end local v10           #hasTabs:Z
    .end local v11           #tabStops:Landroid/text/Layout$TabStops;
    .end local v12           #chars:[C
    .end local v13           #i:I
    .end local v14           #len:I
    :catchall_0
    move-exception v3

    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1944
    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1943
    throw v3
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 2023
    const v2, 0x7f7fffff

    .line 2024
    .local v2, nh:F
    const/4 v0, 0x0

    .line 2026
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 2027
    if-nez p4, :cond_0

    .line 2028
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 2029
    const/4 v0, 0x1

    .line 2032
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 2033
    if-nez v0, :cond_2

    .line 2034
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 2032
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2038
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 2040
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 2041
    int-to-float v2, v3

    goto :goto_1

    .line 2044
    .end local v3           #where:I
    :cond_3
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 2048
    .end local v1           #i:I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .parameter "offset"

    .prologue
    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1052
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1053
    .local v4, line:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 1054
    .local v6, lineStart:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1055
    .local v5, lineEnd:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1057
    .local v7, runs:[I
    const/4 v1, -0x1

    .line 1058
    .local v1, levelAt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 1059
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 1060
    .local v8, start:I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 1061
    .local v3, limit:I
    if-le v3, v5, :cond_0

    .line 1062
    move v3, v5

    .line 1064
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 1065
    if-le p1, v8, :cond_1

    .line 1097
    .end local v3           #limit:I
    .end local v8           #start:I
    :goto_1
    return v9

    .line 1069
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 1073
    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 1075
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_6

    move v1, v9

    .line 1079
    :cond_3
    :goto_2
    const/4 v2, -0x1

    .line 1080
    .local v2, levelBefore:I
    if-ne p1, v6, :cond_8

    .line 1081
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_7

    move v2, v9

    .line 1097
    :cond_4
    :goto_3
    if-ge v2, v1, :cond_b

    :goto_4
    move v9, v10

    goto :goto_1

    .line 1058
    .end local v2           #levelBefore:I
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_6
    move v1, v10

    .line 1075
    goto :goto_2

    .restart local v2       #levelBefore:I
    :cond_7
    move v2, v10

    .line 1081
    goto :goto_3

    .line 1083
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 1084
    const/4 v0, 0x0

    :goto_5
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 1085
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 1086
    .restart local v8       #start:I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 1087
    .restart local v3       #limit:I
    if-le v3, v5, :cond_9

    .line 1088
    move v3, v5

    .line 1090
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 1091
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 1092
    goto :goto_3

    .line 1084
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_b
    move v10, v9

    .line 1097
    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 188
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 79
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 204
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 205
    :try_start_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    monitor-exit v5

    .line 452
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v57, v0

    .line 210
    .local v57, dtop:I
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v56, v0

    .line 211
    .local v56, dbottom:I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    const/16 v76, 0x0

    .line 214
    .local v76, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v54

    .line 216
    .local v54, bottom:I
    move/from16 v0, v57

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 217
    move/from16 v76, v57

    .line 219
    :cond_1
    move/from16 v0, v56

    move/from16 v1, v54

    if-ge v0, v1, :cond_2

    .line 220
    move/from16 v54, v56

    .line 223
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v58

    .line 224
    .local v58, first:I
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v60

    .line 226
    .local v60, last:I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v65

    .line 227
    .local v65, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v66

    .line 229
    .local v66, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 230
    .local v4, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 231
    .local v10, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 232
    .local v6, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v69, v0

    .line 234
    .local v69, spannedText:Z
    sget-object v70, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 235
    .local v70, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v68, 0x0

    .line 236
    .local v68, spanEnd:I
    const/16 v74, 0x0

    .line 242
    .local v74, textLength:I
    if-eqz v69, :cond_6

    move-object/from16 v67, v10

    .line 243
    check-cast v67, Landroid/text/Spanned;

    .line 244
    .local v67, sp:Landroid/text/Spanned;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v74

    .line 245
    move/from16 v13, v58

    .local v13, i:I
    :goto_1
    move/from16 v0, v60

    if-gt v13, v0, :cond_5

    .line 246
    move/from16 v11, v66

    .line 247
    .local v11, start:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 248
    .local v12, end:I
    move/from16 v66, v12

    .line 250
    move/from16 v7, v65

    .line 251
    .local v7, ltop:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 252
    .local v9, lbottom:I
    move/from16 v65, v9

    .line 253
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 255
    .local v8, lbaseline:I
    move/from16 v0, v68

    if-lt v11, v0, :cond_3

    .line 258
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v67

    move/from16 v1, v74

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v68

    .line 262
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v67

    invoke-static {v0, v11, v12, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v70

    .end local v70           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v70, [Landroid/text/style/ParagraphStyle;

    .line 265
    .restart local v70       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_3
    const/16 v63, 0x0

    .local v63, n:I
    :goto_2
    move-object/from16 v0, v70

    array-length v3, v0

    move/from16 v0, v63

    if-ge v0, v3, :cond_4

    .line 266
    aget-object v2, v70, v63

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 268
    .local v2, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 265
    add-int/lit8 v63, v63, 0x1

    goto :goto_2

    .line 211
    .end local v2           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v4           #paint:Landroid/text/TextPaint;
    .end local v6           #width:I
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v10           #buf:Ljava/lang/CharSequence;
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v13           #i:I
    .end local v54           #bottom:I
    .end local v56           #dbottom:I
    .end local v57           #dtop:I
    .end local v58           #first:I
    .end local v60           #last:I
    .end local v63           #n:I
    .end local v65           #previousLineBottom:I
    .end local v66           #previousLineEnd:I
    .end local v67           #sp:Landroid/text/Spanned;
    .end local v68           #spanEnd:I
    .end local v69           #spannedText:Z
    .end local v70           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v74           #textLength:I
    .end local v76           #top:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 245
    .restart local v4       #paint:Landroid/text/TextPaint;
    .restart local v6       #width:I
    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v10       #buf:Ljava/lang/CharSequence;
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v13       #i:I
    .restart local v54       #bottom:I
    .restart local v56       #dbottom:I
    .restart local v57       #dtop:I
    .restart local v58       #first:I
    .restart local v60       #last:I
    .restart local v63       #n:I
    .restart local v65       #previousLineBottom:I
    .restart local v66       #previousLineEnd:I
    .restart local v67       #sp:Landroid/text/Spanned;
    .restart local v68       #spanEnd:I
    .restart local v69       #spannedText:Z
    .restart local v70       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v74       #textLength:I
    .restart local v76       #top:I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 275
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v63           #n:I
    :cond_5
    const/16 v68, 0x0

    .line 276
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v65

    .line 277
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v66

    .line 278
    sget-object v70, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 283
    .end local v13           #i:I
    .end local v67           #sp:Landroid/text/Spanned;
    :cond_6
    if-eqz p2, :cond_8

    .line 284
    if-eqz p4, :cond_7

    .line 285
    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    if-eqz p4, :cond_8

    .line 291
    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v64, v0

    .line 296
    .local v64, paraAlign:Landroid/text/Layout$Alignment;
    const/16 v38, 0x0

    .line 297
    .local v38, tabStops:Landroid/text/Layout$TabStops;
    const/16 v73, 0x0

    .line 299
    .local v73, tabStopsIsInitialized:Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v75

    .line 304
    .local v75, tl:Landroid/text/TextLine;
    move/from16 v13, v58

    .restart local v13       #i:I
    move-object/from16 v72, v38

    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .local v72, tabStops:Landroid/text/Layout$TabStops;
    :goto_3
    move/from16 v0, v60

    if-gt v13, v0, :cond_21

    .line 305
    move/from16 v11, v66

    .line 307
    .restart local v11       #start:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v66

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-direct {v0, v13, v11, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v12

    .line 310
    .restart local v12       #end:I
    move/from16 v7, v65

    .line 311
    .restart local v7       #ltop:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 312
    .restart local v9       #lbottom:I
    move/from16 v65, v9

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 315
    .restart local v8       #lbaseline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    .line 316
    .local v18, dir:I
    const/16 v29, 0x0

    .line 317
    .local v29, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v17, v0

    .line 319
    .local v17, right:I
    if-eqz v69, :cond_13

    move-object/from16 v67, v10

    .line 320
    check-cast v67, Landroid/text/Spanned;

    .line 321
    .restart local v67       #sp:Landroid/text/Spanned;
    if-eqz v11, :cond_9

    add-int/lit8 v3, v11, -0x1

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_f

    :cond_9
    const/16 v25, 0x1

    .line 334
    .local v25, isFirstParaLine:Z
    :goto_4
    move/from16 v0, v68

    if-lt v11, v0, :cond_c

    move/from16 v0, v58

    if-eq v13, v0, :cond_a

    if-eqz v25, :cond_c

    .line 335
    :cond_a
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v67

    move/from16 v1, v74

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v68

    .line 337
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-static {v0, v11, v1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v70

    .end local v70           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v70, [Landroid/text/style/ParagraphStyle;

    .line 339
    .restart local v70       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v64, v0

    .line 340
    move-object/from16 v0, v70

    array-length v3, v0

    add-int/lit8 v63, v3, -0x1

    .restart local v63       #n:I
    :goto_5
    if-ltz v63, :cond_b

    .line 341
    aget-object v3, v70, v63

    instance-of v3, v3, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_10

    .line 342
    aget-object v3, v70, v63

    check-cast v3, Landroid/text/style/AlignmentSpan;

    invoke-interface {v3}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v64

    .line 347
    :cond_b
    const/16 v73, 0x0

    .line 352
    .end local v63           #n:I
    :cond_c
    move-object/from16 v0, v70

    array-length v0, v0

    move/from16 v61, v0

    .line 353
    .local v61, length:I
    const/16 v63, 0x0

    .restart local v63       #n:I
    :goto_6
    move/from16 v0, v63

    move/from16 v1, v61

    if-ge v0, v1, :cond_13

    .line 354
    aget-object v3, v70, v63

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan;

    if-eqz v3, :cond_e

    .line 355
    aget-object v14, v70, v63

    check-cast v14, Landroid/text/style/LeadingMarginSpan;

    .line 356
    .local v14, margin:Landroid/text/style/LeadingMarginSpan;
    move/from16 v77, v25

    .line 357
    .local v77, useFirstLineMargin:Z
    instance-of v3, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_d

    move-object v3, v14

    .line 358
    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v55

    .line 359
    .local v55, count:I
    move-object/from16 v0, v67

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v71

    .line 360
    .local v71, startLine:I
    add-int v3, v71, v55

    if-ge v13, v3, :cond_11

    const/16 v77, 0x1

    .line 363
    .end local v55           #count:I
    .end local v71           #startLine:I
    :cond_d
    :goto_7
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_12

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v26, p0

    .line 364
    invoke-interface/range {v14 .. v26}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 367
    move/from16 v0, v77

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int v17, v17, v3

    .line 353
    .end local v14           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v77           #useFirstLineMargin:Z
    :cond_e
    :goto_8
    add-int/lit8 v63, v63, 0x1

    goto :goto_6

    .line 321
    .end local v25           #isFirstParaLine:Z
    .end local v61           #length:I
    .end local v63           #n:I
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 340
    .restart local v25       #isFirstParaLine:Z
    .restart local v63       #n:I
    :cond_10
    add-int/lit8 v63, v63, -0x1

    goto :goto_5

    .line 360
    .restart local v14       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v55       #count:I
    .restart local v61       #length:I
    .restart local v71       #startLine:I
    .restart local v77       #useFirstLineMargin:Z
    :cond_11
    const/16 v77, 0x0

    goto :goto_7

    .end local v55           #count:I
    .end local v71           #startLine:I
    :cond_12
    move-object/from16 v26, v14

    move-object/from16 v27, p1

    move-object/from16 v28, v4

    move/from16 v30, v18

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v25

    move-object/from16 v38, p0

    .line 369
    invoke-interface/range {v26 .. v38}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 372
    move/from16 v0, v77

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v29, v29, v3

    goto :goto_8

    .line 378
    .end local v14           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v25           #isFirstParaLine:Z
    .end local v61           #length:I
    .end local v63           #n:I
    .end local v67           #sp:Landroid/text/Spanned;
    .end local v77           #useFirstLineMargin:Z
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v37

    .line 380
    .local v37, hasTabOrEmoji:Z
    if-eqz v37, :cond_22

    if-nez v73, :cond_22

    .line 381
    if-nez v72, :cond_15

    .line 382
    new-instance v38, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v38

    move-object/from16 v1, v70

    invoke-direct {v0, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 386
    .end local v72           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    :goto_9
    const/16 v73, 0x1

    .line 390
    :goto_a
    move-object/from16 v53, v64

    .line 391
    .local v53, align:Landroid/text/Layout$Alignment;
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_17

    .line 392
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_16

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 400
    :cond_14
    :goto_b
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1a

    .line 401
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_19

    .line 402
    move/from16 v78, v29

    .line 420
    .local v78, x:I
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v36

    .line 421
    .local v36, directions:Landroid/text/Layout$Directions;
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_1d

    if-nez v69, :cond_1d

    if-nez v37, :cond_1d

    .line 424
    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 431
    .end local v36           #directions:Landroid/text/Layout$Directions;
    :goto_d
    if-eqz v69, :cond_20

    move-object/from16 v67, v10

    .line 432
    check-cast v67, Landroid/text/Spanned;

    .line 434
    .restart local v67       #sp:Landroid/text/Spanned;
    const-class v3, Landroid/text/style/LineForegroundSpan;

    move-object/from16 v0, v67

    invoke-interface {v0, v11, v12, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v59

    check-cast v59, [Landroid/text/style/LineForegroundSpan;

    .line 435
    .local v59, for_spans:[Landroid/text/style/LineForegroundSpan;
    move-object/from16 v0, v59

    array-length v0, v0

    move/from16 v61, v0

    .line 437
    .restart local v61       #length:I
    const/16 v63, 0x0

    .restart local v63       #n:I
    :goto_e
    move/from16 v0, v63

    move/from16 v1, v61

    if-ge v0, v1, :cond_20

    .line 438
    aget-object v39, v59, v63

    .line 440
    .local v39, for_span:Landroid/text/style/LineForegroundSpan;
    move-object/from16 v0, v67

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v50

    .line 441
    .local v50, span_start:I
    move-object/from16 v0, v67

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v51

    .line 442
    .local v51, span_end:I
    move/from16 v0, v50

    if-lt v0, v11, :cond_1e

    .line 443
    :goto_f
    move/from16 v0, v51

    if-gt v0, v12, :cond_1f

    .line 445
    :goto_10
    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v43, v0

    move-object/from16 v40, p1

    move-object/from16 v41, v4

    move/from16 v44, v7

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v52, v13

    invoke-interface/range {v39 .. v52}, Landroid/text/style/LineForegroundSpan;->drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIIII)V

    .line 437
    add-int/lit8 v63, v63, 0x1

    goto :goto_e

    .line 384
    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .end local v39           #for_span:Landroid/text/style/LineForegroundSpan;
    .end local v50           #span_start:I
    .end local v51           #span_end:I
    .end local v53           #align:Landroid/text/Layout$Alignment;
    .end local v59           #for_spans:[Landroid/text/style/LineForegroundSpan;
    .end local v61           #length:I
    .end local v63           #n:I
    .end local v67           #sp:Landroid/text/Spanned;
    .end local v78           #x:I
    .restart local v72       #tabStops:Landroid/text/Layout$TabStops;
    :cond_15
    const/16 v3, 0x14

    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v38, v72

    .end local v72           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_9

    .line 392
    .restart local v53       #align:Landroid/text/Layout$Alignment;
    :cond_16
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_b

    .line 394
    :cond_17
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_14

    .line 395
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_18

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_11
    goto/16 :goto_b

    :cond_18
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_11

    .line 404
    :cond_19
    move/from16 v78, v17

    .restart local v78       #x:I
    goto/16 :goto_c

    .line 407
    .end local v78           #x:I
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v13, v1, v3}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v3

    float-to-int v0, v3

    move/from16 v62, v0

    .line 408
    .local v62, max:I
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1c

    .line 409
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1b

    .line 410
    sub-int v78, v17, v62

    .restart local v78       #x:I
    goto/16 :goto_c

    .line 412
    .end local v78           #x:I
    :cond_1b
    sub-int v78, v29, v62

    .restart local v78       #x:I
    goto/16 :goto_c

    .line 415
    .end local v78           #x:I
    :cond_1c
    and-int/lit8 v62, v62, -0x2

    .line 416
    add-int v3, v17, v29

    sub-int v3, v3, v62

    shr-int/lit8 v78, v3, 0x1

    .restart local v78       #x:I
    goto/16 :goto_c

    .end local v62           #max:I
    .restart local v36       #directions:Landroid/text/Layout$Directions;
    :cond_1d
    move-object/from16 v30, v75

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v18

    .line 426
    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 427
    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v75

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_d

    .end local v36           #directions:Landroid/text/Layout$Directions;
    .restart local v39       #for_span:Landroid/text/style/LineForegroundSpan;
    .restart local v50       #span_start:I
    .restart local v51       #span_end:I
    .restart local v59       #for_spans:[Landroid/text/style/LineForegroundSpan;
    .restart local v61       #length:I
    .restart local v63       #n:I
    .restart local v67       #sp:Landroid/text/Spanned;
    :cond_1e
    move/from16 v50, v11

    .line 442
    goto/16 :goto_f

    :cond_1f
    move/from16 v51, v12

    .line 443
    goto/16 :goto_10

    .line 304
    .end local v39           #for_span:Landroid/text/style/LineForegroundSpan;
    .end local v50           #span_start:I
    .end local v51           #span_end:I
    .end local v59           #for_spans:[Landroid/text/style/LineForegroundSpan;
    .end local v61           #length:I
    .end local v63           #n:I
    .end local v67           #sp:Landroid/text/Spanned;
    :cond_20
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v72, v38

    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v72       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_3

    .line 451
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v17           #right:I
    .end local v18           #dir:I
    .end local v29           #left:I
    .end local v37           #hasTabOrEmoji:Z
    .end local v53           #align:Landroid/text/Layout$Alignment;
    .end local v78           #x:I
    :cond_21
    invoke-static/range {v75 .. v75}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto/16 :goto_0

    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v17       #right:I
    .restart local v18       #dir:I
    .restart local v29       #left:I
    .restart local v37       #hasTabOrEmoji:Z
    :cond_22
    move-object/from16 v38, v72

    .end local v72           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_a
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/text/TextPaint;I)V
    .locals 85
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "selecttxtpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 464
    const/16 v54, 0x0

    .line 465
    .local v54, bSelectionExist:Z
    const/16 v70, 0x0

    .local v70, selEnd:I
    const/16 v71, 0x0

    .line 467
    .local v71, selStart:I
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 468
    :try_start_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    monitor-exit v5

    .line 776
    :goto_0
    return-void

    .line 472
    :cond_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v58, v0

    .line 473
    .local v58, dtop:I
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v57, v0

    .line 474
    .local v57, dbottom:I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/16 v82, 0x0

    .line 477
    .local v82, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v55

    .line 479
    .local v55, bottom:I
    move/from16 v0, v58

    move/from16 v1, v82

    if-le v0, v1, :cond_1

    .line 480
    move/from16 v82, v58

    .line 482
    :cond_1
    move/from16 v0, v57

    move/from16 v1, v55

    if-ge v0, v1, :cond_2

    .line 483
    move/from16 v55, v57

    .line 486
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v59

    .line 487
    .local v59, first:I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v61

    .line 489
    .local v61, last:I
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v68

    .line 490
    .local v68, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v69

    .line 492
    .local v69, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 493
    .local v4, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 494
    .local v10, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 495
    .local v6, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v74, v0

    .line 497
    .local v74, spannedText:Z
    sget-object v75, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 498
    .local v75, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v73, 0x0

    .line 499
    .local v73, spanEnd:I
    const/16 v80, 0x0

    .line 505
    .local v80, textLength:I
    if-eqz v74, :cond_6

    move-object/from16 v72, v10

    .line 506
    check-cast v72, Landroid/text/Spanned;

    .line 507
    .local v72, sp:Landroid/text/Spanned;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v80

    .line 508
    move/from16 v13, v59

    .local v13, i:I
    :goto_1
    move/from16 v0, v61

    if-gt v13, v0, :cond_5

    .line 509
    move/from16 v11, v69

    .line 510
    .local v11, start:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 511
    .local v12, end:I
    move/from16 v69, v12

    .line 513
    move/from16 v7, v68

    .line 514
    .local v7, ltop:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 515
    .local v9, lbottom:I
    move/from16 v68, v9

    .line 516
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 518
    .local v8, lbaseline:I
    move/from16 v0, v73

    if-lt v11, v0, :cond_3

    .line 521
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v72

    move/from16 v1, v80

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v73

    .line 525
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v72

    invoke-static {v0, v11, v12, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v75

    .end local v75           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v75, [Landroid/text/style/ParagraphStyle;

    .line 528
    .restart local v75       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_3
    const/16 v66, 0x0

    .local v66, n:I
    :goto_2
    move-object/from16 v0, v75

    array-length v3, v0

    move/from16 v0, v66

    if-ge v0, v3, :cond_4

    .line 529
    aget-object v2, v75, v66

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 531
    .local v2, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 528
    add-int/lit8 v66, v66, 0x1

    goto :goto_2

    .line 474
    .end local v2           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v4           #paint:Landroid/text/TextPaint;
    .end local v6           #width:I
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v10           #buf:Ljava/lang/CharSequence;
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v13           #i:I
    .end local v55           #bottom:I
    .end local v57           #dbottom:I
    .end local v58           #dtop:I
    .end local v59           #first:I
    .end local v61           #last:I
    .end local v66           #n:I
    .end local v68           #previousLineBottom:I
    .end local v69           #previousLineEnd:I
    .end local v72           #sp:Landroid/text/Spanned;
    .end local v73           #spanEnd:I
    .end local v74           #spannedText:Z
    .end local v75           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v80           #textLength:I
    .end local v82           #top:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 508
    .restart local v4       #paint:Landroid/text/TextPaint;
    .restart local v6       #width:I
    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v10       #buf:Ljava/lang/CharSequence;
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v13       #i:I
    .restart local v55       #bottom:I
    .restart local v57       #dbottom:I
    .restart local v58       #dtop:I
    .restart local v59       #first:I
    .restart local v61       #last:I
    .restart local v66       #n:I
    .restart local v68       #previousLineBottom:I
    .restart local v69       #previousLineEnd:I
    .restart local v72       #sp:Landroid/text/Spanned;
    .restart local v73       #spanEnd:I
    .restart local v74       #spannedText:Z
    .restart local v75       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v80       #textLength:I
    .restart local v82       #top:I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 538
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v66           #n:I
    :cond_5
    const/16 v73, 0x0

    .line 539
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v68

    .line 540
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v69

    .line 541
    sget-object v75, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 546
    .end local v13           #i:I
    .end local v72           #sp:Landroid/text/Spanned;
    :cond_6
    if-eqz p2, :cond_9

    .line 547
    if-eqz p5, :cond_7

    .line 548
    const/4 v3, 0x0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 551
    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 553
    if-eqz p5, :cond_8

    .line 554
    const/4 v3, 0x0

    move/from16 v0, p5

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 558
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v71

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v70

    .line 560
    move/from16 v0, v71

    move/from16 v1, v70

    if-eq v0, v1, :cond_12

    const/16 v54, 0x1

    .line 562
    :goto_3
    move/from16 v0, v71

    move/from16 v1, v70

    if-le v0, v1, :cond_9

    .line 564
    move/from16 v79, v71

    .line 565
    .local v79, temp:I
    move/from16 v71, v70

    .line 566
    move/from16 v70, v79

    .line 571
    .end local v79           #temp:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v67, v0

    .line 572
    .local v67, paraAlign:Landroid/text/Layout$Alignment;
    const/16 v38, 0x0

    .line 573
    .local v38, tabStops:Landroid/text/Layout$TabStops;
    const/16 v78, 0x0

    .line 575
    .local v78, tabStopsIsInitialized:Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v81

    .line 580
    .local v81, tl:Landroid/text/TextLine;
    move/from16 v13, v59

    .restart local v13       #i:I
    move-object/from16 v77, v38

    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .local v77, tabStops:Landroid/text/Layout$TabStops;
    :goto_4
    move/from16 v0, v61

    if-gt v13, v0, :cond_29

    .line 581
    move/from16 v11, v69

    .line 583
    .restart local v11       #start:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v69

    .line 584
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-direct {v0, v13, v11, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v12

    .line 586
    .restart local v12       #end:I
    move/from16 v7, v68

    .line 587
    .restart local v7       #ltop:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 588
    .restart local v9       #lbottom:I
    move/from16 v68, v9

    .line 589
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 591
    .restart local v8       #lbaseline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    .line 592
    .local v18, dir:I
    const/16 v29, 0x0

    .line 593
    .local v29, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v17, v0

    .line 596
    .local v17, right:I
    const/16 v63, -0x1

    .line 597
    .local v63, line_sel_end:I
    const/16 v64, -0x1

    .line 599
    .local v64, line_sel_start:I
    if-eqz v54, :cond_b

    .line 600
    move/from16 v0, v71

    if-lt v11, v0, :cond_a

    move/from16 v0, v70

    if-gt v11, v0, :cond_a

    .line 601
    move/from16 v71, v11

    .line 604
    :cond_a
    move/from16 v0, v71

    if-lt v0, v11, :cond_b

    move/from16 v0, v71

    if-gt v0, v12, :cond_b

    .line 605
    move/from16 v64, v71

    .line 606
    move/from16 v0, v70

    if-le v0, v12, :cond_13

    move/from16 v63, v12

    .line 611
    :cond_b
    :goto_5
    if-eqz v74, :cond_18

    move-object/from16 v72, v10

    .line 612
    check-cast v72, Landroid/text/Spanned;

    .line 613
    .restart local v72       #sp:Landroid/text/Spanned;
    if-eqz v11, :cond_c

    add-int/lit8 v3, v11, -0x1

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_14

    :cond_c
    const/16 v25, 0x1

    .line 625
    .local v25, isFirstParaLine:Z
    :goto_6
    move/from16 v0, v73

    if-lt v11, v0, :cond_f

    move/from16 v0, v59

    if-eq v13, v0, :cond_d

    if-eqz v25, :cond_f

    .line 626
    :cond_d
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v72

    move/from16 v1, v80

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v73

    .line 628
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v72

    move/from16 v1, v73

    invoke-static {v0, v11, v1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v75

    .end local v75           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v75, [Landroid/text/style/ParagraphStyle;

    .line 630
    .restart local v75       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v67, v0

    .line 631
    move-object/from16 v0, v75

    array-length v3, v0

    add-int/lit8 v66, v3, -0x1

    .restart local v66       #n:I
    :goto_7
    if-ltz v66, :cond_e

    .line 632
    aget-object v3, v75, v66

    instance-of v3, v3, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_15

    .line 633
    aget-object v3, v75, v66

    check-cast v3, Landroid/text/style/AlignmentSpan;

    invoke-interface {v3}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v67

    .line 638
    :cond_e
    const/16 v78, 0x0

    .line 643
    .end local v66           #n:I
    :cond_f
    move-object/from16 v0, v75

    array-length v0, v0

    move/from16 v62, v0

    .line 644
    .local v62, length:I
    const/16 v66, 0x0

    .restart local v66       #n:I
    :goto_8
    move/from16 v0, v66

    move/from16 v1, v62

    if-ge v0, v1, :cond_18

    .line 645
    aget-object v3, v75, v66

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan;

    if-eqz v3, :cond_11

    .line 646
    aget-object v14, v75, v66

    check-cast v14, Landroid/text/style/LeadingMarginSpan;

    .line 647
    .local v14, margin:Landroid/text/style/LeadingMarginSpan;
    move/from16 v83, v25

    .line 648
    .local v83, useFirstLineMargin:Z
    instance-of v3, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_10

    move-object v3, v14

    .line 649
    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v56

    .line 650
    .local v56, count:I
    move-object/from16 v0, v72

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v76

    .line 651
    .local v76, startLine:I
    add-int v3, v76, v56

    if-ge v13, v3, :cond_16

    const/16 v83, 0x1

    .line 654
    .end local v56           #count:I
    .end local v76           #startLine:I
    :cond_10
    :goto_9
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_17

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v26, p0

    .line 655
    invoke-interface/range {v14 .. v26}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 658
    move/from16 v0, v83

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int v17, v17, v3

    .line 644
    .end local v14           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v83           #useFirstLineMargin:Z
    :cond_11
    :goto_a
    add-int/lit8 v66, v66, 0x1

    goto :goto_8

    .line 560
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v13           #i:I
    .end local v17           #right:I
    .end local v18           #dir:I
    .end local v25           #isFirstParaLine:Z
    .end local v29           #left:I
    .end local v62           #length:I
    .end local v63           #line_sel_end:I
    .end local v64           #line_sel_start:I
    .end local v66           #n:I
    .end local v67           #paraAlign:Landroid/text/Layout$Alignment;
    .end local v72           #sp:Landroid/text/Spanned;
    .end local v77           #tabStops:Landroid/text/Layout$TabStops;
    .end local v78           #tabStopsIsInitialized:Z
    .end local v81           #tl:Landroid/text/TextLine;
    :cond_12
    const/16 v54, 0x0

    goto/16 :goto_3

    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v13       #i:I
    .restart local v17       #right:I
    .restart local v18       #dir:I
    .restart local v29       #left:I
    .restart local v63       #line_sel_end:I
    .restart local v64       #line_sel_start:I
    .restart local v67       #paraAlign:Landroid/text/Layout$Alignment;
    .restart local v77       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v78       #tabStopsIsInitialized:Z
    .restart local v81       #tl:Landroid/text/TextLine;
    :cond_13
    move/from16 v63, v70

    .line 606
    goto/16 :goto_5

    .line 613
    .restart local v72       #sp:Landroid/text/Spanned;
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 631
    .restart local v25       #isFirstParaLine:Z
    .restart local v66       #n:I
    :cond_15
    add-int/lit8 v66, v66, -0x1

    goto :goto_7

    .line 651
    .restart local v14       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v56       #count:I
    .restart local v62       #length:I
    .restart local v76       #startLine:I
    .restart local v83       #useFirstLineMargin:Z
    :cond_16
    const/16 v83, 0x0

    goto :goto_9

    .end local v56           #count:I
    .end local v76           #startLine:I
    :cond_17
    move-object/from16 v26, v14

    move-object/from16 v27, p1

    move-object/from16 v28, v4

    move/from16 v30, v18

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v25

    move-object/from16 v38, p0

    .line 660
    invoke-interface/range {v26 .. v38}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 663
    move/from16 v0, v83

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v29, v29, v3

    goto :goto_a

    .line 669
    .end local v14           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v25           #isFirstParaLine:Z
    .end local v62           #length:I
    .end local v66           #n:I
    .end local v72           #sp:Landroid/text/Spanned;
    .end local v83           #useFirstLineMargin:Z
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v37

    .line 671
    .local v37, hasTabOrEmoji:Z
    if-eqz v37, :cond_2a

    if-nez v78, :cond_2a

    .line 672
    if-nez v77, :cond_1a

    .line 673
    new-instance v38, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v38

    move-object/from16 v1, v75

    invoke-direct {v0, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 677
    .end local v77           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    :goto_b
    const/16 v78, 0x1

    .line 681
    :goto_c
    move-object/from16 v53, v67

    .line 682
    .local v53, align:Landroid/text/Layout$Alignment;
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1c

    .line 683
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1b

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 691
    :cond_19
    :goto_d
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1f

    .line 692
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1e

    .line 693
    move/from16 v84, v29

    .line 711
    .local v84, x:I
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v36

    .line 712
    .local v36, directions:Landroid/text/Layout$Directions;
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_24

    if-nez v74, :cond_24

    if-nez v37, :cond_24

    .line 715
    if-eqz v54, :cond_23

    .line 716
    if-ltz v64, :cond_22

    if-ltz v63, :cond_22

    .line 717
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v64

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 718
    .end local v36           #directions:Landroid/text/Layout$Directions;
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v64

    move/from16 v33, v63

    move-object/from16 v36, p4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 719
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v63

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 756
    :goto_f
    if-eqz v74, :cond_28

    move-object/from16 v72, v10

    .line 757
    check-cast v72, Landroid/text/Spanned;

    .line 759
    .restart local v72       #sp:Landroid/text/Spanned;
    const-class v3, Landroid/text/style/LineForegroundSpan;

    move-object/from16 v0, v72

    invoke-interface {v0, v11, v12, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v60

    check-cast v60, [Landroid/text/style/LineForegroundSpan;

    .line 760
    .local v60, for_spans:[Landroid/text/style/LineForegroundSpan;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v62, v0

    .line 762
    .restart local v62       #length:I
    const/16 v66, 0x0

    .restart local v66       #n:I
    :goto_10
    move/from16 v0, v66

    move/from16 v1, v62

    if-ge v0, v1, :cond_28

    .line 763
    aget-object v39, v60, v66

    .line 765
    .local v39, for_span:Landroid/text/style/LineForegroundSpan;
    move-object/from16 v0, v72

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v50

    .line 766
    .local v50, span_start:I
    move-object/from16 v0, v72

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v51

    .line 767
    .local v51, span_end:I
    move/from16 v0, v50

    if-lt v0, v11, :cond_26

    .line 768
    :goto_11
    move/from16 v0, v51

    if-gt v0, v12, :cond_27

    .line 770
    :goto_12
    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v43, v0

    move-object/from16 v40, p1

    move-object/from16 v41, v4

    move/from16 v44, v7

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v52, v13

    invoke-interface/range {v39 .. v52}, Landroid/text/style/LineForegroundSpan;->drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIIII)V

    .line 762
    add-int/lit8 v66, v66, 0x1

    goto :goto_10

    .line 675
    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .end local v39           #for_span:Landroid/text/style/LineForegroundSpan;
    .end local v50           #span_start:I
    .end local v51           #span_end:I
    .end local v53           #align:Landroid/text/Layout$Alignment;
    .end local v60           #for_spans:[Landroid/text/style/LineForegroundSpan;
    .end local v62           #length:I
    .end local v66           #n:I
    .end local v72           #sp:Landroid/text/Spanned;
    .end local v84           #x:I
    .restart local v77       #tabStops:Landroid/text/Layout$TabStops;
    :cond_1a
    const/16 v3, 0x14

    move-object/from16 v0, v77

    move-object/from16 v1, v75

    invoke-virtual {v0, v3, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v38, v77

    .end local v77           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_b

    .line 683
    .restart local v53       #align:Landroid/text/Layout$Alignment;
    :cond_1b
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_d

    .line 685
    :cond_1c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_19

    .line 686
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1d

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_13
    goto/16 :goto_d

    :cond_1d
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_13

    .line 695
    :cond_1e
    move/from16 v84, v17

    .restart local v84       #x:I
    goto/16 :goto_e

    .line 698
    .end local v84           #x:I
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v13, v1, v3}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v3

    float-to-int v0, v3

    move/from16 v65, v0

    .line 699
    .local v65, max:I
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_21

    .line 700
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_20

    .line 701
    sub-int v84, v17, v65

    .restart local v84       #x:I
    goto/16 :goto_e

    .line 703
    .end local v84           #x:I
    :cond_20
    sub-int v84, v29, v65

    .restart local v84       #x:I
    goto/16 :goto_e

    .line 706
    .end local v84           #x:I
    :cond_21
    and-int/lit8 v65, v65, -0x2

    .line 707
    add-int v3, v17, v29

    sub-int v3, v3, v65

    shr-int/lit8 v84, v3, 0x1

    .restart local v84       #x:I
    goto/16 :goto_e

    .line 725
    .end local v65           #max:I
    .restart local v36       #directions:Landroid/text/Layout$Directions;
    :cond_22
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    .line 730
    :cond_23
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    .line 735
    :cond_24
    if-eqz v54, :cond_25

    if-ltz v64, :cond_25

    if-ltz v63, :cond_25

    move-object/from16 v30, v81

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v64

    move/from16 v35, v18

    .line 736
    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 737
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 739
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v84, v0

    move-object/from16 v30, v81

    move-object/from16 v31, p4

    move-object/from16 v32, v10

    move/from16 v33, v64

    move/from16 v34, v63

    move/from16 v35, v18

    .line 740
    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 741
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 743
    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v84, v0

    move-object/from16 v30, v81

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v63

    move/from16 v34, v12

    move/from16 v35, v18

    .line 744
    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 745
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_f

    :cond_25
    move-object/from16 v30, v81

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v18

    .line 750
    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 751
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_f

    .end local v36           #directions:Landroid/text/Layout$Directions;
    .restart local v39       #for_span:Landroid/text/style/LineForegroundSpan;
    .restart local v50       #span_start:I
    .restart local v51       #span_end:I
    .restart local v60       #for_spans:[Landroid/text/style/LineForegroundSpan;
    .restart local v62       #length:I
    .restart local v66       #n:I
    .restart local v72       #sp:Landroid/text/Spanned;
    :cond_26
    move/from16 v50, v11

    .line 767
    goto/16 :goto_11

    :cond_27
    move/from16 v51, v12

    .line 768
    goto/16 :goto_12

    .line 580
    .end local v39           #for_span:Landroid/text/style/LineForegroundSpan;
    .end local v50           #span_start:I
    .end local v51           #span_end:I
    .end local v60           #for_spans:[Landroid/text/style/LineForegroundSpan;
    .end local v62           #length:I
    .end local v66           #n:I
    .end local v72           #sp:Landroid/text/Spanned;
    :cond_28
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v77, v38

    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v77       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_4

    .line 775
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v17           #right:I
    .end local v18           #dir:I
    .end local v29           #left:I
    .end local v37           #hasTabOrEmoji:Z
    .end local v53           #align:Landroid/text/Layout$Alignment;
    .end local v63           #line_sel_end:I
    .end local v64           #line_sel_start:I
    .end local v84           #x:I
    :cond_29
    invoke-static/range {v81 .. v81}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto/16 :goto_0

    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v17       #right:I
    .restart local v18       #dir:I
    .restart local v29       #left:I
    .restart local v37       #hasTabOrEmoji:Z
    .restart local v63       #line_sel_end:I
    .restart local v64       #line_sel_start:I
    :cond_2a
    move-object/from16 v38, v77

    .end local v77           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_c
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 23
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 1580
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v16

    .line 1581
    .local v16, line:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 1582
    .local v17, top:I
    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 1584
    .local v5, bottom:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    const/high16 v21, 0x3f00

    sub-float v9, v20, v21

    .line 1585
    .local v9, h1:F
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v20

    const/high16 v21, 0x3f00

    sub-float v12, v20, v21

    .line 1587
    .local v12, h2:F
    :goto_0
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v20

    const/16 v21, 0x800

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    or-int v6, v20, v21

    .line 1589
    .local v6, caps:I
    const/16 v20, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 1590
    .local v8, fn:I
    const/4 v7, 0x0

    .line 1592
    .local v7, dist:I
    if-nez v6, :cond_0

    if-eqz v8, :cond_2

    .line 1593
    :cond_0
    sub-int v20, v5, v17

    shr-int/lit8 v7, v20, 0x2

    .line 1595
    if-eqz v8, :cond_1

    .line 1596
    add-int v17, v17, v7

    .line 1597
    :cond_1
    if-eqz v6, :cond_2

    .line 1598
    sub-int/2addr v5, v7

    .line 1601
    :cond_2
    const/high16 v20, 0x3f00

    cmpg-float v20, v9, v20

    if-gez v20, :cond_3

    .line 1602
    const/high16 v9, 0x3f00

    .line 1603
    :cond_3
    const/high16 v20, 0x3f00

    cmpg-float v20, v12, v20

    if-gez v20, :cond_4

    .line 1604
    const/high16 v12, 0x3f00

    .line 1606
    :cond_4
    invoke-static {v9, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-nez v20, :cond_6

    .line 1607
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1608
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1656
    :goto_1
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_7

    .line 1657
    add-int v20, v5, v7

    move/from16 v0, v20

    int-to-float v3, v0

    .line 1658
    .local v3, botmPlusDist:F
    int-to-float v0, v7

    move/from16 v20, v0

    add-float v14, v12, v20

    .line 1659
    .local v14, h2PlusDist:F
    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v13, v12, v20

    .line 1661
    .local v13, h2MinusDist:F
    const/high16 v20, 0x3f80

    sub-float v3, v3, v20

    .line 1662
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1663
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1664
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1665
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1667
    const/4 v15, 0x0

    .local v15, i:F
    :goto_2
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v15, v20

    if-gez v20, :cond_8

    .line 1669
    int-to-float v0, v5

    move/from16 v20, v0

    add-float v4, v20, v15

    .line 1671
    .local v4, botmPlusI:F
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1672
    sub-float v20, v12, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1674
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1675
    add-float v20, v12, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1667
    const/high16 v20, 0x3f80

    add-float v15, v15, v20

    goto :goto_2

    .end local v3           #botmPlusDist:F
    .end local v4           #botmPlusI:F
    .end local v6           #caps:I
    .end local v7           #dist:I
    .end local v8           #fn:I
    .end local v12           #h2:F
    .end local v13           #h2MinusDist:F
    .end local v14           #h2PlusDist:F
    .end local v15           #i:F
    :cond_5
    move v12, v9

    .line 1585
    goto/16 :goto_0

    .line 1610
    .restart local v6       #caps:I
    .restart local v7       #dist:I
    .restart local v8       #fn:I
    .restart local v12       #h2:F
    :cond_6
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1611
    add-int v20, v17, v5

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1613
    add-int v20, v17, v5

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1614
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    .line 1677
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_8

    .line 1678
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1679
    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v12, v20

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1681
    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v12, v20

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1682
    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v12

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1684
    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v12

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1685
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1688
    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_9

    .line 1689
    sub-int v20, v17, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1690
    .local v18, topMinusDist:F
    int-to-float v0, v7

    move/from16 v20, v0

    add-float v11, v9, v20

    .line 1691
    .local v11, h1PlusDist:F
    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v10, v9, v20

    .line 1693
    .local v10, h1MinusDist:F
    const/high16 v20, 0x3f80

    add-float v18, v18, v20

    .line 1694
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1695
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1696
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1697
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1699
    const/4 v15, 0x0

    .restart local v15       #i:F
    :goto_3
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v15, v20

    if-gez v20, :cond_a

    .line 1701
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v20, v15

    .line 1703
    .local v19, topMinusI:F
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1704
    sub-float v20, v9, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1706
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1707
    add-float v20, v9, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1699
    const/high16 v20, 0x3f80

    add-float v15, v15, v20

    goto :goto_3

    .line 1709
    .end local v10           #h1MinusDist:F
    .end local v11           #h1PlusDist:F
    .end local v15           #i:F
    .end local v18           #topMinusDist:F
    .end local v19           #topMinusI:F
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_a

    .line 1710
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1711
    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v9, v20

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1713
    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v9, v20

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1714
    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v9

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1716
    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v9

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1717
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1721
    :cond_a
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1466
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1458
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 925
    if-eqz p2, :cond_0

    .line 926
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 927
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 928
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 929
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 931
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1420
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 1323
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1325
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1326
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1328
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1329
    move v1, v0

    goto :goto_0

    .line 1331
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1334
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1335
    const/4 v2, 0x0

    .line 1337
    .end local v2           #low:I
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 1300
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1302
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1303
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1305
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1306
    move v1, v0

    goto :goto_0

    .line 1308
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1311
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1312
    const/4 v2, 0x0

    .line 1314
    .end local v2           #low:I
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1159
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1160
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1162
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return v5

    .line 1164
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 1165
    if-ne v1, v7, :cond_0

    .line 1166
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 1169
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    .line 1170
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 1171
    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    .line 1172
    if-eq v1, v7, :cond_0

    .line 1175
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 1177
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1178
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1179
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1181
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 4
    .parameter "line"

    .prologue
    .line 1221
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1222
    .local v0, margin:F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1223
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .end local v1           #signedExtent:F
    :goto_0
    return v1

    .restart local v1       #signedExtent:F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 1190
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1191
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1193
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 1194
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 1212
    :goto_0
    return v5

    .line 1195
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 1196
    if-ne v1, v6, :cond_1

    .line 1197
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 1199
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 1200
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1201
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 1202
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 1203
    if-ne v1, v6, :cond_4

    .line 1204
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 1206
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 1208
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1209
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1210
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1212
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 4
    .parameter "line"

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1232
    .local v0, margin:F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1233
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .end local v1           #signedExtent:F
    :goto_0
    return v1

    .restart local v1       #signedExtent:F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 1345
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1346
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1347
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1349
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1350
    add-int/lit8 v13, v13, 0x1

    .line 1352
    :cond_0
    move v4, v14

    .line 1353
    .local v4, best:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1355
    .local v5, bestdist:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 1356
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1357
    .local v9, here:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1358
    .local v17, there:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x400

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    const/16 v16, -0x1

    .line 1360
    .local v16, swap:I
    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_1

    .line 1361
    move/from16 v17, v13

    .line 1362
    :cond_1
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1364
    .local v12, low:I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1365
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1366
    .local v8, guess:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1368
    .local v2, adguess:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    .line 1369
    move v10, v8

    goto :goto_2

    .line 1358
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    .line 1371
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_3
    move v12, v8

    goto :goto_2

    .line 1374
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 1375
    add-int/lit8 v12, v9, 0x1

    .line 1377
    :cond_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 1378
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1380
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1382
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1383
    .local v3, aft:I
    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    .line 1384
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1386
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    .line 1387
    move v7, v15

    .line 1388
    move v12, v3

    .line 1392
    .end local v15           #other:F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    .line 1393
    move v5, v7

    .line 1394
    move v4, v12

    .line 1398
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1400
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 1401
    move v5, v7

    .line 1402
    move v4, v9

    .line 1355
    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 1406
    .end local v7           #dist:F
    .end local v9           #here:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1408
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_a

    .line 1409
    move v5, v7

    .line 1410
    move v4, v13

    .line 1413
    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 1479
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 1483
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .parameter "line"

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1821
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1822
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1823
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1827
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1828
    .local v2, spanLength:I
    if-lez v2, :cond_0

    .line 1829
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1833
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1840
    const/4 v1, 0x0

    .line 1841
    .local v1, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1842
    .local v0, dir:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1845
    .end local v1           #left:I
    :cond_0
    :goto_0
    return v1

    .restart local v1       #left:I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1852
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1853
    .local v1, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1854
    .local v0, dir:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1857
    .end local v1           #right:I
    :cond_0
    :goto_0
    return v1

    .restart local v1       #right:I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1107
    .local v0, trailing:Z
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1117
    .local v0, trailing:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1765
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1812
    :goto_0
    return-void

    .line 1768
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1769
    move/from16 v17, p2

    .line 1770
    .local v17, temp:I
    move/from16 p2, p1

    .line 1771
    move/from16 p1, v17

    .line 1774
    .end local v17           #temp:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1775
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1777
    .local v15, endline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1778
    .local v6, top:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1780
    .local v7, bottom:I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1781
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 1783
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1785
    .local v18, width:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1788
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1789
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1795
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1796
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1797
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1798
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1795
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1792
    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1801
    .restart local v16       #i:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1802
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1804
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1807
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1808
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1810
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 868
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 869
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 873
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 998
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 999
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 1000
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return v8

    .line 1004
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1005
    .local v7, runs:[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1006
    .local v4, lineStart:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 1007
    .local v3, lineEnd:I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_5

    .line 1008
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v5, v8

    .line 1009
    .local v5, paraLevel:I
    :goto_1
    if-ne p1, v4, :cond_4

    move v6, v8

    .line 1010
    .local v6, runIndex:I
    :goto_2
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_0

    move v8, v9

    goto :goto_0

    .end local v5           #paraLevel:I
    .end local v6           #runIndex:I
    :cond_3
    move v5, v9

    .line 1008
    goto :goto_1

    .line 1009
    .restart local v5       #paraLevel:I
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2

    .line 1013
    .end local v5           #paraLevel:I
    :cond_5
    sub-int/2addr p1, v4

    .line 1014
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_0

    .line 1015
    aget v10, v7, v1

    if-ne p1, v10, :cond_6

    move v8, v9

    .line 1016
    goto :goto_0

    .line 1014
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method public isRtlCharAt(I)Z
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1028
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1029
    .local v3, line:I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 1030
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v8

    .line 1033
    :cond_1
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_2

    move v8, v7

    .line 1034
    goto :goto_0

    .line 1036
    :cond_2
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1037
    .local v5, runs:[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1038
    .local v4, lineStart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 1039
    aget v9, v5, v1

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v4, v9

    .line 1042
    .local v6, start:I
    if-lt p1, v6, :cond_4

    .line 1043
    add-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    .line 1044
    .local v2, level:I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_2

    .line 1038
    .end local v2           #level:I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 2052
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 170
    if-gez p3, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 175
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 176
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 177
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 178
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 179
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 180
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 181
    return-void
.end method
