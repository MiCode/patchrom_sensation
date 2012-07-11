.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/widget/HtcIfTextView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$5;,
        Landroid/widget/TextView$MenuWrapper;,
        Landroid/widget/TextView$HtcPastePositionListener;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$SelectionEndHandleView;,
        Landroid/widget/TextView$SelectionStartHandleView;,
        Landroid/widget/TextView$InsertionHandleView;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$ActionPopupWindow;,
        Landroid/widget/TextView$SelectionActionModeCallback;,
        Landroid/widget/TextView$SuggestionsPopupWindow;,
        Landroid/widget/TextView$PinnedPopupWindow;,
        Landroid/widget/TextView$PositionListener;,
        Landroid/widget/TextView$TextViewPositionListener;,
        Landroid/widget/TextView$DragLocalState;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$EasyEditPopupWindow;,
        Landroid/widget/TextView$EasyEditSpanController;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CorrectionHighlighter;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$TextAlign;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field private static BLINK_BLACK:I = 0x0

.field private static BLINK_WHITE:I = 0x0

.field private static final CURSOR_WIDTH:F = 2.0f

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final DirectionLEFT:I = 0x3

.field private static final DirectionRIGHT:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HTC_TIMESTAMP:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_LOOKUP:I = 0x54d

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECTION_MODE:I = 0x102002d

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHARE:I = 0x54e

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I = null

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static final PRIORITY:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field public static final STYLED_ANNOTATION_SPAN_KEY:Ljava/lang/String; = "styledtext"

#the value of this static final field might be set in the static constructor
.field private static final THEMEABLE:Z = false

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x100000

.field private static final isTablet:Z

.field private static mCurBlinkBlack:Z

.field private static mIsBlackTimeShorter:Z

.field private static mPreviousSkinPackage:Ljava/lang/String;

.field private static mTextColorHighlight:I

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static sLastCutOrCopyTime:J

.field private static final sTempRect:Landroid/graphics/RectF;

.field private static final sTmpPosition:[F


# instance fields
.field private final ANCHOR_FLY_THRESHOLD_MILLI:I

.field private final ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

.field private checkMetaStatus:Z

.field private isMessageLink:Z

.field private mAllowTransformationLengthChange:Z

.field private mAnchorHeight:I

.field private mAnchorLastMovedIndex:I

.field private mAnchorLastMovedMilli:J

.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCapOld:I

.field private mChangeTimes:I

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurrentAlpha:I

.field private mCurrentDirection:I

.field private mCursorCount:I

.field private final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorDrawableRes:I

.field private mCursorVisible:Z

.field private mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDesiredHeightAtMeasure:I

.field private mDiscardNextActionUp:Z

.field private mDispatchTemporaryDetach:Z

.field private mDispatchToTheOtherAnchor:Z

.field private mDonotPassToLeft:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEasyUpHardDownTriggered:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstDirection:I

.field private mFlags:I

.field private mFnOld:I

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHasCustomContextMenu:Z

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHookIME:Ljava/lang/Runnable;

.field private mHorizontallyScrolling:Z

.field private mIgnoreActionUpEvent:Z

.field private mIgnoreSetText:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field protected mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

.field private mIsChildOfActionBarView:Z

.field private mIsInQuickActioMode:Z

.field private mIsInTextSelectionMode:Z

.field private mIsLongPressed:Z

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastLine:I

.field private mLastScroll:J

.field protected mLayout:Landroid/text/Layout;

.field private mLayoutAlignment:Landroid/text/Layout$Alignment;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeControlledByAp:Z

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPassToLeftAnchor:Z

.field private mPasteWindowHider:Ljava/lang/Runnable;

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPositionListener:Landroid/widget/TextView$PositionListener;

.field private mPreDirection:I

.field private mPreDrawState:I

.field private mPreviousX:F

.field final mRemoveMagnifier:Z

.field private mResolvedDrawables:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field protected mSelectAChar:Z

.field private mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectTxtPaint:Landroid/text/TextPaint;

.field private mSelectionActionMode:Landroid/view/ActionMode;

.field private mSelectionControllerEnabled:Z

.field protected mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

.field private mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSoftInputShownOnFocus:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSquaredTouchSlopDistance:I

.field private mStatusBarWindowOffset:I

.field private mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextAlign:Landroid/widget/TextView$TextAlign;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mTextEditSuggestionItemLayout:I

.field private mTextIsSelectable:Z

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSelectHandleLeftRes:I

.field private mTextSelectHandleRes:I

.field private mTextSelectHandleRightRes:I

.field private mTextSelectedColor:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x1f4

    const/16 v5, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/widget/TextView;->THEMEABLE:Z

    .line 322
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v1, Landroid/widget/TextView;->isTablet:Z

    .line 465
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 466
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 500
    const-string v1, ""

    sput-object v1, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    .line 501
    sput v3, Landroid/widget/TextView;->mTextColorHighlight:I

    .line 6802
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 13249
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 13288
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 13289
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Landroid/widget/TextView;->sTmpPosition:[F

    .line 13297
    sput v6, Landroid/widget/TextView;->BLINK_BLACK:I

    .line 13298
    sput v6, Landroid/widget/TextView;->BLINK_WHITE:I

    .line 13299
    sput-boolean v2, Landroid/widget/TextView;->mCurBlinkBlack:Z

    .line 13300
    sput-boolean v3, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    .line 13303
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-ne v1, v4, :cond_3

    .line 13305
    :cond_0
    const/16 v1, 0xfa

    sput v1, Landroid/widget/TextView;->BLINK_BLACK:I

    .line 13306
    sput v5, Landroid/widget/TextView;->BLINK_WHITE:I

    .line 13307
    sput-boolean v2, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    .line 13328
    :cond_1
    :goto_1
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 13330
    new-instance v1, Landroid/text/SpannedString;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 13331
    const/16 v1, 0x14

    sput v1, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 13337
    new-array v1, v2, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    return-void

    .end local v0           #p:Landroid/graphics/Paint;
    :cond_2
    move v1, v3

    .line 317
    goto :goto_0

    .line 13309
    .restart local v0       #p:Landroid/graphics/Paint;
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3e

    if-eq v1, v4, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x89

    if-ne v1, v4, :cond_1

    .line 13311
    :cond_4
    sput v5, Landroid/widget/TextView;->BLINK_BLACK:I

    .line 13312
    sput v5, Landroid/widget/TextView;->BLINK_WHITE:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 497
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 498
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 70
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 507
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    const/16 v67, 0xff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 268
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 281
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 282
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 285
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 286
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAnchorHeight:I

    .line 287
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRemoveMagnifier:Z

    .line 289
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 290
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 297
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 299
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 314
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    .line 315
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLine:I

    .line 323
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsChildOfActionBarView:Z

    .line 349
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 351
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 352
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 357
    const/16 v67, 0x3

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 396
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 411
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 417
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    .line 423
    sget-object v67, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    .line 429
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mResolvedDrawables:Z

    .line 436
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4883
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isMessageLink:Z

    .line 9105
    new-instance v67, Landroid/widget/TextView$3;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    .line 11382
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAChar:Z

    .line 11385
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    .line 11386
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    .line 11387
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDonotPassToLeft:Z

    .line 11392
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangeTimes:I

    .line 11393
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreviousX:F

    .line 11394
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentDirection:I

    .line 11395
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDirection:I

    .line 11396
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mFirstDirection:I

    .line 13202
    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 13204
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 13215
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 13221
    const v67, 0x6633b5e5

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 13222
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectedColor:I

    .line 13234
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 13240
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 13241
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    .line 13252
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 13254
    const v67, 0x800033

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 13258
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 13260
    const/high16 v67, 0x3f80

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 13261
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 13262
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 13268
    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 13269
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 13270
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 13271
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 13273
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 13274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 13276
    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 13277
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 13278
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 13279
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 13282
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 13283
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 13287
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 13319
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 13326
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 13329
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 13342
    new-instance v67, Landroid/graphics/Rect;

    invoke-direct/range {v67 .. v67}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    .line 13343
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mFlags:I

    .line 13344
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    .line 13345
    new-instance v67, Landroid/widget/TextView$MenuWrapper;

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$MenuWrapper;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    .line 13347
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreSetText:Z

    .line 13429
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHasCustomContextMenu:Z

    .line 13573
    const-wide/16 v67, 0x0

    move-wide/from16 v0, v67

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    .line 13574
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    .line 13575
    const/16 v67, 0x3c

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

    .line 13576
    const/16 v67, 0x64

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->ANCHOR_FLY_THRESHOLD_MILLI:I

    .line 13727
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->checkMetaStatus:Z

    .line 13761
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    .line 508
    const-string v67, ""

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 510
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 511
    .local v47, res:Landroid/content/res/Resources;
    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    .line 513
    .local v17, compat:Landroid/content/res/CompatibilityInfo;
    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v68

    move-object/from16 v0, v68

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v68, v0

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 521
    new-instance v67, Landroid/graphics/Paint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v67, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 525
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 527
    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    .line 529
    const/16 v56, 0x0

    .line 530
    .local v56, textColorHighlight:I
    const/16 v55, 0x0

    .line 531
    .local v55, textColor:Landroid/content/res/ColorStateList;
    const/16 v57, 0x0

    .line 532
    .local v57, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v58, 0x0

    .line 533
    .local v58, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v59, 0xf

    .line 534
    .local v59, textSize:I
    const/16 v63, -0x1

    .line 535
    .local v63, typefaceIndex:I
    const/16 v53, -0x1

    .line 536
    .local v53, styleIndex:I
    const/4 v6, 0x0

    .line 538
    .local v6, allCaps:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v60

    .line 546
    .local v60, theme:Landroid/content/res/Resources$Theme;
    sget-object v67, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/16 v68, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 548
    .local v5, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 549
    .local v8, appearance:Landroid/content/res/TypedArray;
    const/16 v67, 0x0

    const/16 v68, -0x1

    move/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 551
    .local v7, ap:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 552
    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v7, v0, :cond_0

    .line 553
    sget-object v67, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 556
    :cond_0
    if-eqz v8, :cond_7

    .line 557
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    .line 558
    .local v40, n:I
    const/16 v34, 0x0

    .local v34, i:I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_6

    .line 559
    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 561
    .local v9, attr:I
    packed-switch v9, :pswitch_data_0

    .line 558
    :goto_1
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 564
    :pswitch_0
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_5

    .line 565
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v52

    .line 566
    .local v52, skinPackage:Ljava/lang/String;
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_2

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_2

    const/16 v51, 0x1

    .line 567
    .local v51, skinChange:Z
    :goto_2
    if-eqz v51, :cond_4

    .line 568
    sput-object v52, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    .line 570
    if-eqz v52, :cond_1

    const-string v67, ""

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_1

    const-string v67, "default"

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_3

    .line 571
    :cond_1
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    .line 586
    :goto_3
    sput v56, Landroid/widget/TextView;->mTextColorHighlight:I

    goto :goto_1

    .line 566
    .end local v51           #skinChange:Z
    :cond_2
    const/16 v51, 0x0

    goto :goto_2

    .line 575
    .restart local v51       #skinChange:Z
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v61

    .line 576
    .local v61, themeres:Landroid/content/res/Resources;
    const-string v67, "input_text_selection_highlight"

    const-string v68, "color"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v61

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v56

    goto :goto_3

    .line 578
    .end local v61           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v31

    .line 579
    .local v31, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v67, "TextView"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "No skin package matches with the given name"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    .line 584
    goto :goto_3

    .line 582
    .end local v31           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v35

    .line 583
    .local v35, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto :goto_3

    .line 588
    .end local v35           #idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    :cond_4
    sget v56, Landroid/widget/TextView;->mTextColorHighlight:I

    goto/16 :goto_1

    .line 590
    .end local v51           #skinChange:Z
    .end local v52           #skinPackage:Ljava/lang/String;
    :cond_5
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    .line 591
    goto/16 :goto_1

    .line 594
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    .line 595
    goto/16 :goto_1

    .line 598
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    .line 599
    goto/16 :goto_1

    .line 602
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    .line 603
    goto/16 :goto_1

    .line 606
    :pswitch_4
    move/from16 v0, v59

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v59

    .line 607
    goto/16 :goto_1

    .line 610
    :pswitch_5
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    .line 611
    goto/16 :goto_1

    .line 614
    :pswitch_6
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 615
    goto/16 :goto_1

    .line 618
    :pswitch_7
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_1

    .line 623
    .end local v9           #attr:I
    :cond_6
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    .end local v34           #i:I
    .end local v40           #n:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v29

    .line 627
    .local v29, editable:Z
    const/16 v36, 0x0

    .line 628
    .local v36, inputMethod:Ljava/lang/CharSequence;
    const/16 v42, 0x0

    .line 629
    .local v42, numeric:I
    const/16 v18, 0x0

    .line 630
    .local v18, digits:Ljava/lang/CharSequence;
    const/16 v45, 0x0

    .line 631
    .local v45, phone:Z
    const/4 v11, 0x0

    .line 632
    .local v11, autotext:Z
    const/4 v10, -0x1

    .line 633
    .local v10, autocap:I
    const/4 v13, 0x0

    .line 634
    .local v13, buffertype:I
    const/16 v48, 0x0

    .line 635
    .local v48, selectallonfocus:Z
    const/16 v21, 0x0

    .local v21, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 636
    .local v23, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .local v19, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .local v24, drawableStart:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 637
    .local v20, drawableEnd:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 638
    .local v22, drawablePadding:I
    const/16 v30, -0x1

    .line 639
    .local v30, ellipsize:I
    const/16 v50, 0x0

    .line 640
    .local v50, singleLine:Z
    const/16 v39, -0x1

    .line 641
    .local v39, maxlength:I
    const-string v54, ""

    .line 642
    .local v54, text:Ljava/lang/CharSequence;
    const/16 v33, 0x0

    .line 643
    .local v33, hint:Ljava/lang/CharSequence;
    const/16 v49, 0x0

    .line 644
    .local v49, shadowcolor:I
    const/16 v26, 0x0

    .local v26, dx:F
    const/16 v27, 0x0

    .local v27, dy:F
    const/16 v46, 0x0

    .line 645
    .local v46, r:F
    const/16 v43, 0x0

    .line 646
    .local v43, password:Z
    const/16 v37, 0x0

    .line 648
    .local v37, inputType:I
    sget-object v67, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v68, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 651
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    .line 652
    .restart local v40       #n:I
    const/16 v34, 0x0

    .restart local v34       #i:I
    :goto_4
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_d

    .line 653
    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 655
    .restart local v9       #attr:I
    packed-switch v9, :pswitch_data_1

    .line 652
    :cond_8
    :goto_5
    :pswitch_8
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 657
    :pswitch_9
    move/from16 v0, v29

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    .line 658
    goto :goto_5

    .line 661
    :pswitch_a
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    .line 662
    goto :goto_5

    .line 665
    :pswitch_b
    move/from16 v0, v42

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v42

    .line 666
    goto :goto_5

    .line 669
    :pswitch_c
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 670
    goto :goto_5

    .line 673
    :pswitch_d
    move/from16 v0, v45

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v45

    .line 674
    goto :goto_5

    .line 677
    :pswitch_e
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 678
    goto :goto_5

    .line 681
    :pswitch_f
    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 682
    goto :goto_5

    .line 685
    :pswitch_10
    invoke-virtual {v5, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 686
    goto :goto_5

    .line 689
    :pswitch_11
    move/from16 v0, v48

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    .line 690
    goto :goto_5

    .line 693
    :pswitch_12
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_5

    .line 697
    :pswitch_13
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_5

    .line 707
    :pswitch_14
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 708
    goto :goto_5

    .line 711
    :pswitch_15
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 712
    goto :goto_5

    .line 715
    :pswitch_16
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 716
    goto :goto_5

    .line 719
    :pswitch_17
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 720
    goto :goto_5

    .line 723
    :pswitch_18
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 724
    goto :goto_5

    .line 727
    :pswitch_19
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 728
    goto :goto_5

    .line 731
    :pswitch_1a
    move/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 732
    goto :goto_5

    .line 735
    :pswitch_1b
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_5

    .line 739
    :pswitch_1c
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_5

    .line 743
    :pswitch_1d
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_5

    .line 747
    :pswitch_1e
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_5

    .line 751
    :pswitch_1f
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_5

    .line 755
    :pswitch_20
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_5

    .line 759
    :pswitch_21
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_5

    .line 763
    :pswitch_22
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_5

    .line 767
    :pswitch_23
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_5

    .line 771
    :pswitch_24
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_5

    .line 775
    :pswitch_25
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_5

    .line 779
    :pswitch_26
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_5

    .line 783
    :pswitch_27
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    .line 787
    :pswitch_28
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 788
    goto/16 :goto_5

    .line 791
    :pswitch_29
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    .line 792
    goto/16 :goto_5

    .line 795
    :pswitch_2a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-eqz v67, :cond_8

    .line 796
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_5

    .line 801
    :pswitch_2b
    move/from16 v0, v50

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v50

    .line 802
    goto/16 :goto_5

    .line 805
    :pswitch_2c
    move/from16 v0, v30

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 806
    goto/16 :goto_5

    .line 809
    :pswitch_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_5

    .line 813
    :pswitch_2e
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_8

    .line 814
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_5

    .line 819
    :pswitch_2f
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_8

    .line 820
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_5

    .line 825
    :pswitch_30
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    .line 826
    goto/16 :goto_5

    .line 829
    :pswitch_31
    const/high16 v67, 0x3f80

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_5

    .line 833
    :pswitch_32
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_5

    .line 837
    :pswitch_33
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    .line 838
    goto/16 :goto_5

    .line 841
    :pswitch_34
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 842
    goto/16 :goto_5

    .line 845
    :pswitch_35
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 846
    goto/16 :goto_5

    .line 849
    :pswitch_36
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v46

    .line 850
    goto/16 :goto_5

    .line 853
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v67

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 858
    :pswitch_38
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    if-eqz v67, :cond_9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    const-string v68, "default"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_8

    .line 859
    :cond_9
    move/from16 v0, v56

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto/16 :goto_5

    .line 863
    :pswitch_39
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    .line 864
    goto/16 :goto_5

    .line 867
    :pswitch_3a
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    .line 868
    goto/16 :goto_5

    .line 871
    :pswitch_3b
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    .line 872
    goto/16 :goto_5

    .line 875
    :pswitch_3c
    move/from16 v0, v59

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v59

    .line 876
    goto/16 :goto_5

    .line 879
    :pswitch_3d
    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    .line 880
    goto/16 :goto_5

    .line 883
    :pswitch_3e
    move/from16 v0, v53

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 884
    goto/16 :goto_5

    .line 887
    :pswitch_3f
    move/from16 v0, v43

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v43

    .line 888
    goto/16 :goto_5

    .line 891
    :pswitch_40
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v67, v0

    move/from16 v0, v67

    float-to-int v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_5

    .line 895
    :pswitch_41
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_5

    .line 899
    :pswitch_42
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 900
    goto/16 :goto_5

    .line 903
    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_a

    .line 904
    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 906
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_5

    .line 911
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_b

    .line 912
    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 914
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 918
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_c

    .line 919
    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 921
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_5

    .line 926
    :pswitch_46
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 931
    :pswitch_47
    const/16 v67, 0x0

    :try_start_1
    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_5

    .line 932
    :catch_2
    move-exception v28

    .line 933
    .local v28, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 934
    .end local v28           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v28

    .line 935
    .local v28, e:Ljava/io/IOException;
    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 940
    .end local v28           #e:Ljava/io/IOException;
    :pswitch_48
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_5

    .line 944
    :pswitch_49
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_5

    .line 948
    :pswitch_4a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_5

    .line 952
    :pswitch_4b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_5

    .line 956
    :pswitch_4c
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_5

    .line 960
    :pswitch_4d
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    goto/16 :goto_5

    .line 964
    :pswitch_4e
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_5

    .line 968
    .end local v9           #attr:I
    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 970
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 972
    .local v12, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xfff

    move/from16 v64, v0

    .line 974
    .local v64, variation:I
    const/16 v67, 0x81

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_1a

    const/16 v44, 0x1

    .line 976
    .local v44, passwordInputType:Z
    :goto_6
    const/16 v67, 0xe1

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_1b

    const/16 v66, 0x1

    .line 978
    .local v66, webPasswordInputType:Z
    :goto_7
    const/16 v67, 0x12

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_1c

    const/16 v41, 0x1

    .line 981
    .local v41, numberPasswordInputType:Z
    :goto_8
    if-eqz v36, :cond_1e

    .line 985
    :try_start_2
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v14

    .line 991
    .local v14, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/text/method/KeyListener;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    .line 998
    if-eqz v37, :cond_1d

    move/from16 v67, v37

    :goto_9
    :try_start_4
    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_7

    .line 1088
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    and-int/lit8 v67, v67, 0xf

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_2d

    .line 1089
    if-nez v43, :cond_e

    if-eqz v44, :cond_f

    .line 1090
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    move/from16 v0, v67

    or-int/lit16 v0, v0, 0x80

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1093
    :cond_f
    if-eqz v66, :cond_10

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    move/from16 v0, v67

    or-int/lit16 v0, v0, 0xe0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1104
    :cond_10
    :goto_b
    if-eqz v48, :cond_11

    .line 1105
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 1107
    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    if-ne v12, v0, :cond_11

    .line 1108
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1111
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1113
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1114
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1118
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1119
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v50

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1121
    if-eqz v50, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-nez v67, :cond_12

    if-gez v30, :cond_12

    .line 1122
    const/16 v30, 0x3

    .line 1125
    :cond_12
    packed-switch v30, :pswitch_data_2

    .line 1147
    :goto_c
    if-eqz v55, :cond_2f

    .end local v55           #textColor:Landroid/content/res/ColorStateList;
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1149
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1150
    if-eqz v56, :cond_13

    .line 1151
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1153
    :cond_13
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v67, v0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1155
    if-eqz v6, :cond_14

    .line 1156
    new-instance v67, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1159
    :cond_14
    if-nez v43, :cond_15

    if-nez v44, :cond_15

    if-nez v66, :cond_15

    if-eqz v41, :cond_30

    .line 1160
    :cond_15
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1161
    const/16 v63, 0x3

    .line 1167
    :cond_16
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1169
    if-eqz v49, :cond_17

    .line 1170
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1173
    :cond_17
    if-ltz v39, :cond_31

    .line 1174
    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    new-instance v69, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v69

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v69, v67, v68

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1179
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1180
    if-eqz v33, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1187
    :cond_18
    sget-object v67, Lcom/android/internal/R$styleable;->View:[I

    const/16 v68, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v67, v0

    if-nez v67, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-eqz v67, :cond_32

    :cond_19
    const/16 v32, 0x1

    .line 1192
    .local v32, focusable:Z
    :goto_10
    move/from16 v16, v32

    .line 1193
    .local v16, clickable:Z
    move/from16 v38, v32

    .line 1195
    .local v38, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    .line 1196
    const/16 v34, 0x0

    :goto_11
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_33

    .line 1197
    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 1199
    .restart local v9       #attr:I
    sparse-switch v9, :sswitch_data_0

    .line 1196
    :goto_12
    add-int/lit8 v34, v34, 0x1

    goto :goto_11

    .line 974
    .end local v9           #attr:I
    .end local v16           #clickable:Z
    .end local v32           #focusable:Z
    .end local v38           #longClickable:Z
    .end local v41           #numberPasswordInputType:Z
    .end local v44           #passwordInputType:Z
    .end local v66           #webPasswordInputType:Z
    .restart local v55       #textColor:Landroid/content/res/ColorStateList;
    :cond_1a
    const/16 v44, 0x0

    goto/16 :goto_6

    .line 976
    .restart local v44       #passwordInputType:Z
    :cond_1b
    const/16 v66, 0x0

    goto/16 :goto_7

    .line 978
    .restart local v66       #webPasswordInputType:Z
    :cond_1c
    const/16 v41, 0x0

    goto/16 :goto_8

    .line 986
    .restart local v41       #numberPasswordInputType:Z
    :catch_4
    move-exception v31

    .line 987
    .local v31, ex:Ljava/lang/ClassNotFoundException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .line 992
    .end local v31           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v14       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_5
    move-exception v31

    .line 993
    .local v31, ex:Ljava/lang/InstantiationException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .line 994
    .end local v31           #ex:Ljava/lang/InstantiationException;
    :catch_6
    move-exception v31

    .line 995
    .local v31, ex:Ljava/lang/IllegalAccessException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .line 998
    .end local v31           #ex:Ljava/lang/IllegalAccessException;
    :cond_1d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    invoke-interface/range {v67 .. v67}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_5
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_5 .. :try_end_5} :catch_7

    move-result v67

    goto/16 :goto_9

    .line 1001
    :catch_7
    move-exception v28

    .line 1002
    .local v28, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    .line 1004
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v28           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_1e
    if-eqz v18, :cond_20

    .line 1005
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1009
    if-eqz v37, :cond_1f

    move/from16 v67, v37

    :goto_13
    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :cond_1f
    const/16 v67, 0x1

    goto :goto_13

    .line 1011
    :cond_20
    if-eqz v37, :cond_22

    .line 1012
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v67

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1014
    invoke-static/range {v37 .. v37}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v67

    if-nez v67, :cond_21

    const/16 v50, 0x1

    :goto_14
    goto/16 :goto_a

    :cond_21
    const/16 v50, 0x0

    goto :goto_14

    .line 1015
    :cond_22
    if-eqz v45, :cond_23

    .line 1016
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1017
    const/16 v37, 0x3

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    .line 1018
    :cond_23
    if-eqz v42, :cond_28

    .line 1019
    and-int/lit8 v67, v42, 0x2

    if-eqz v67, :cond_26

    const/16 v67, 0x1

    move/from16 v68, v67

    :goto_15
    and-int/lit8 v67, v42, 0x4

    if-eqz v67, :cond_27

    const/16 v67, 0x1

    :goto_16
    move/from16 v0, v68

    move/from16 v1, v67

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1021
    const/16 v37, 0x2

    .line 1022
    and-int/lit8 v67, v42, 0x2

    if-eqz v67, :cond_24

    .line 1023
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x1000

    move/from16 v37, v0

    .line 1025
    :cond_24
    and-int/lit8 v67, v42, 0x4

    if-eqz v67, :cond_25

    .line 1026
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x2000

    move/from16 v37, v0

    .line 1028
    :cond_25
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    .line 1019
    :cond_26
    const/16 v67, 0x0

    move/from16 v68, v67

    goto :goto_15

    :cond_27
    const/16 v67, 0x0

    goto :goto_16

    .line 1029
    :cond_28
    if-nez v11, :cond_29

    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v10, v0, :cond_2a

    .line 1032
    :cond_29
    const/16 v37, 0x1

    .line 1034
    packed-switch v10, :pswitch_data_3

    .line 1051
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1055
    .local v15, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_17
    invoke-static {v11, v15}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1056
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    .line 1036
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_4f
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1037
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x4000

    move/from16 v37, v0

    .line 1038
    goto :goto_17

    .line 1041
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_50
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1042
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x2000

    move/from16 v37, v0

    .line 1043
    goto :goto_17

    .line 1046
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_51
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1047
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x1000

    move/from16 v37, v0

    .line 1048
    goto :goto_17

    .line 1057
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v67, v0

    if-eqz v67, :cond_2b

    .line 1059
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1060
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1061
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1063
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 1065
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_a

    .line 1066
    :cond_2b
    if-eqz v29, :cond_2c

    .line 1067
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1068
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    .line 1070
    :cond_2c
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1072
    packed-switch v13, :pswitch_data_4

    goto/16 :goto_a

    .line 1074
    :pswitch_52
    sget-object v12, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 1075
    goto/16 :goto_a

    .line 1077
    :pswitch_53
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1078
    goto/16 :goto_a

    .line 1080
    :pswitch_54
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_a

    .line 1097
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    and-int/lit8 v67, v67, 0xf

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_10

    .line 1098
    if-eqz v41, :cond_10

    .line 1099
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    or-int/lit8 v67, v67, 0x10

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_b

    .line 1127
    :pswitch_55
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    .line 1130
    :pswitch_56
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    .line 1133
    :pswitch_57
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    .line 1136
    :pswitch_58
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v67

    if-eqz v67, :cond_2e

    .line 1137
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1138
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1143
    :goto_18
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    .line 1140
    :cond_2e
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1141
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_18

    .line 1147
    :cond_2f
    const/high16 v67, -0x100

    invoke-static/range {v67 .. v67}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    goto/16 :goto_d

    .line 1162
    .end local v55           #textColor:Landroid/content/res/ColorStateList;
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, 0xfff

    move/from16 v67, v0

    const/16 v68, 0x81

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_16

    .line 1164
    const/16 v63, 0x3

    goto/16 :goto_e

    .line 1176
    :cond_31
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_f

    .line 1191
    :cond_32
    const/16 v32, 0x0

    goto/16 :goto_10

    .line 1201
    .restart local v9       #attr:I
    .restart local v16       #clickable:Z
    .restart local v32       #focusable:Z
    .restart local v38       #longClickable:Z
    :sswitch_0
    move/from16 v0, v32

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 1202
    goto/16 :goto_12

    .line 1205
    :sswitch_1
    move/from16 v0, v16

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 1206
    goto/16 :goto_12

    .line 1209
    :sswitch_2
    move/from16 v0, v38

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    goto/16 :goto_12

    .line 1213
    .end local v9           #attr:I
    :cond_33
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1215
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1216
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1217
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1219
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1221
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v65

    .line 1222
    .local v65, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual/range {v65 .. v65}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v62

    .line 1223
    .local v62, touchSlop:I
    mul-int v67, v62, v62

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v67, v0

    if-eqz v67, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v67

    if-eqz v67, :cond_34

    .line 1227
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->checkMetaStatus:Z

    .line 1228
    :cond_34
    return-void

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 655
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_37
        :pswitch_8
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_39
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_2c
        :pswitch_27
        :pswitch_12
        :pswitch_13
        :pswitch_22
        :pswitch_1c
        :pswitch_26
        :pswitch_20
        :pswitch_10
        :pswitch_29
        :pswitch_28
        :pswitch_31
        :pswitch_2f
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_2a
        :pswitch_3f
        :pswitch_2b
        :pswitch_11
        :pswitch_2e
        :pswitch_30
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_f
        :pswitch_e
        :pswitch_9
        :pswitch_32
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_16
        :pswitch_1a
        :pswitch_40
        :pswitch_41
        :pswitch_2d
        :pswitch_42
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_8
        :pswitch_8
        :pswitch_4d
        :pswitch_8
        :pswitch_8
        :pswitch_48
        :pswitch_4c
        :pswitch_4e
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 1125
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
    .end packed-switch

    .line 1199
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    .line 1034
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    .line 1072
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch
.end method

.method static synthetic access$10000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10100(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$10200(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10202(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$10300(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    return v0
.end method

.method static synthetic access$10400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10602(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$10700(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    return v0
.end method

.method static synthetic access$10800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$11202(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$11300(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method static synthetic access$11500(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11702(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    return p1
.end method

.method static synthetic access$11800(Landroid/widget/TextView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$11900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$1600(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Landroid/widget/TextView;->mCurBlinkBlack:Z

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 261
    sget v0, Landroid/widget/TextView;->BLINK_WHITE:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 261
    sget v0, Landroid/widget/TextView;->BLINK_BLACK:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->hookIME()V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/widget/TextView;Landroid/text/style/SuggestionRangeSpan;)Landroid/text/style/SuggestionRangeSpan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object p1
.end method

.method static synthetic access$400(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/widget/TextView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$5500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    return-object v0
.end method

.method static synthetic access$6202(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$6300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7002(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$7100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7102(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$7300(Landroid/widget/TextView;)Landroid/widget/TextView$MenuWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    return v0
.end method

.method static synthetic access$7700(Landroid/widget/TextView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void
.end method

.method static synthetic access$7900()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$8100(Landroid/widget/TextView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    return v0
.end method

.method static synthetic access$8102(Landroid/widget/TextView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mPreviousX:F

    return p1
.end method

.method static synthetic access$8200(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    return v0
.end method

.method static synthetic access$8202(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    return p1
.end method

.method static synthetic access$8300(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    return v0
.end method

.method static synthetic access$8302(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    return p1
.end method

.method static synthetic access$8400(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    return v0
.end method

.method static synthetic access$8402(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    return p1
.end method

.method static synthetic access$8500(Landroid/widget/TextView;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getDirection(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mFirstDirection:I

    return v0
.end method

.method static synthetic access$8602(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mFirstDirection:I

    return p1
.end method

.method static synthetic access$8700(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    return v0
.end method

.method static synthetic access$8702(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mLastLine:I

    return v0
.end method

.method static synthetic access$8902(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mLastLine:I

    return p1
.end method

.method static synthetic access$9000(Landroid/widget/TextView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 261
    iget-wide v0, p0, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    return-wide v0
.end method

.method static synthetic access$9002(Landroid/widget/TextView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-wide p1, p0, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    return-wide p1
.end method

.method static synthetic access$9100(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    return v0
.end method

.method static synthetic access$9102(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    return p1
.end method

.method static synthetic access$9200(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    return v0
.end method

.method static synthetic access$9302(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mChangeTimes:I

    return p1
.end method

.method static synthetic access$9402(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mCurrentDirection:I

    return p1
.end method

.method static synthetic access$9502(Landroid/widget/TextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput p1, p0, Landroid/widget/TextView;->mPreDirection:I

    return p1
.end method

.method static synthetic access$9600(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$9602(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$9800(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    return v0
.end method

.method static synthetic access$9900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .parameter "singleLine"
    .parameter "applyTransformation"
    .parameter "changeMaxLines"

    .prologue
    const/4 v0, 0x1

    .line 7601
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 7602
    if-eqz p1, :cond_1

    .line 7603
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 7604
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7605
    if-eqz p2, :cond_0

    .line 7606
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7617
    :cond_0
    :goto_0
    return-void

    .line 7609
    :cond_1
    if-eqz p3, :cond_2

    .line 7610
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7612
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7613
    if-eqz p2, :cond_0

    .line 7614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 6452
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 6454
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 6455
    const/4 v1, 0x0

    .line 6458
    :cond_0
    move v2, v1

    .line 6460
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 6461
    const/high16 v1, 0x10

    .line 6464
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6466
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    .prologue
    const/16 v13, 0x50

    const/4 v10, 0x1

    .line 7147
    const/4 v5, 0x0

    .line 7148
    .local v5, line:I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v13, :cond_0

    .line 7149
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 7152
    :cond_0
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 7153
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 7154
    .local v1, dir:I
    iget v11, p0, Landroid/widget/TextView;->mRight:I

    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v2, v11, v12

    .line 7155
    .local v2, hspace:I
    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    iget v12, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v12

    sub-int v9, v11, v12

    .line 7156
    .local v9, vspace:I
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 7161
    .local v3, ht:I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_4

    .line 7162
    if-ne v1, v10, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7169
    :cond_1
    :goto_0
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_8

    .line 7175
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v4, v11

    .line 7176
    .local v4, left:I
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    .line 7178
    .local v6, right:I
    sub-int v11, v6, v4

    if-ge v11, v2, :cond_6

    .line 7179
    add-int v11, v6, v4

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v2, 0x2

    sub-int v7, v11, v12

    .line 7194
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_1
    if-ge v3, v9, :cond_a

    .line 7195
    const/4 v8, 0x0

    .line 7204
    .local v8, scrolly:I
    :goto_2
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v7, v11, :cond_2

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v8, v11, :cond_c

    .line 7205
    :cond_2
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7208
    :goto_3
    return v10

    .line 7162
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 7164
    :cond_4
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_1

    .line 7165
    if-ne v1, v10, :cond_5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_4
    goto :goto_0

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 7181
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_6
    if-gez v1, :cond_7

    .line 7182
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_1

    .line 7184
    .end local v7           #scrollx:I
    :cond_7
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_1

    .line 7187
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_8
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_9

    .line 7188
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    .line 7189
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 7190
    .restart local v7       #scrollx:I
    goto :goto_1

    .line 7191
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_9
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v7, v11

    .restart local v7       #scrollx:I
    goto :goto_1

    .line 7197
    :cond_a
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v13, :cond_b

    .line 7198
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_2

    .line 7200
    .end local v8           #scrolly:I
    :cond_b
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_2

    .line 7208
    :cond_c
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9335
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9343
    :cond_0
    :goto_0
    return v0

    .line 9339
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9340
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canCut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9323
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9331
    :cond_0
    :goto_0
    return v0

    .line 9327
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 9328
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7703
    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 7704
    .local v0, width:I
    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private canPaste()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9348
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ltz v6, :cond_2

    .line 9355
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 9357
    .local v0, clipboard:Landroid/content/ClipboardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 9360
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 9362
    .local v2, item:Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 9374
    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    .end local v2           #item:Landroid/content/ClipData$Item;
    :cond_0
    :goto_0
    return v4

    .line 9365
    .restart local v0       #clipboard:Landroid/content/ClipboardManager;
    .restart local v2       #item:Landroid/content/ClipData$Item;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9366
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    .end local v2           #item:Landroid/content/ClipData$Item;
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    move v4, v5

    .line 9374
    goto :goto_0

    .line 9369
    :catch_0
    move-exception v1

    .line 9370
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TextView"

    const-string v6, "Security exception"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private canReplaceActionMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11367
    sget-boolean v1, Landroid/widget/TextView;->isTablet:Z

    if-nez v1, :cond_1

    .line 11370
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsChildOfActionBarView:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 9305
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 7094
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 7100
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 7101
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 7102
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 7109
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7113
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 7115
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 7117
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7141
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_1
    return-void

    .line 7102
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .line 7123
    .restart local v2       #hintWant:I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 7125
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 7132
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7133
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 7137
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7138
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7139
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 7053
    const/4 v1, 0x0

    .line 7055
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 7057
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 7058
    const/4 v1, 0x1

    .line 7059
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7063
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 7064
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7066
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 7067
    const/4 v1, 0x1

    .line 7080
    .end local v0           #desiredHeight:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 7081
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7084
    :cond_2
    return-void

    .line 7069
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 7070
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 7071
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7073
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 7074
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkMetaStatus(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "editingBuffer"

    .prologue
    .line 13732
    iget-boolean v2, p0, Landroid/widget/TextView;->checkMetaStatus:Z

    if-nez v2, :cond_1

    .line 13746
    :cond_0
    :goto_0
    return-void

    .line 13734
    :cond_1
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    const/16 v3, 0x800

    invoke-static {p1, v3}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    or-int v0, v2, v3

    .line 13738
    .local v0, caps:I
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 13741
    .local v1, fn:I
    iget v2, p0, Landroid/widget/TextView;->mFnOld:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Landroid/widget/TextView;->mCapOld:I

    if-eq v2, v0, :cond_0

    .line 13742
    :cond_2
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->sendMetaStatusToIME(II)V

    .line 13743
    iput v1, p0, Landroid/widget/TextView;->mFnOld:I

    .line 13744
    iput v0, p0, Landroid/widget/TextView;->mCapOld:I

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 4290
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 4291
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 4293
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4295
    .local v3, defaultWidthInPixels:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 4297
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 4298
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 4299
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 4298
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4306
    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4307
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4308
    return-void
.end method

.method private compressText(F)Z
    .locals 7
    .parameter "width"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    .line 6742
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6760
    :cond_0
    :goto_0
    return v2

    .line 6745
    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 6747
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 6748
    .local v1, textWidth:F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 6749
    .local v0, overflow:F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 6750
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 6751
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 6756
    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 7468
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 7469
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 7470
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 7472
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 7473
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 7474
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 7475
    return-void
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .parameter "x"

    .prologue
    .line 12851
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 12853
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 12854
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 12855
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 12856
    return p1
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .parameter "layout"

    .prologue
    .line 6764
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 6765
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 6766
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 6771
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 6772
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 6773
    const/4 v4, -0x1

    .line 6780
    :goto_1
    return v4

    .line 6771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6776
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 6777
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 6776
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6780
    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private disallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallow"

    .prologue
    .line 13422
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 13423
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 13424
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 13426
    :cond_0
    return-void
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 7
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5610
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 5727
    :goto_0
    return v2

    .line 5614
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5672
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 5673
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 5675
    const/4 v0, 0x1

    .line 5676
    .local v0, doDown:Z
    if-eqz p3, :cond_8

    .line 5678
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 5679
    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 5680
    .local v1, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5681
    const/4 v0, 0x0

    .line 5682
    if-eqz v1, :cond_7

    .line 5689
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    .line 5683
    goto :goto_0

    .line 5616
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5621
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_2

    .line 5624
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5627
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v5, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 5629
    goto :goto_0

    .line 5636
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5638
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 5639
    goto :goto_0

    :cond_4
    move v2, v4

    .line 5641
    goto :goto_0

    .line 5647
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5648
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 5649
    goto :goto_0

    .line 5655
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5656
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 5657
    goto :goto_0

    .line 5665
    :sswitch_3
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_1

    .line 5666
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v2, v4

    .line 5667
    goto/16 :goto_0

    .line 5689
    .restart local v0       #doDown:Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 5685
    :catch_0
    move-exception v2

    .line 5689
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 5693
    :cond_8
    if-eqz v0, :cond_9

    .line 5694
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 5695
    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 5696
    .restart local v1       #handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 5697
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 5698
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    .line 5699
    if-eqz v1, :cond_9

    move v2, v5

    goto/16 :goto_0

    .line 5706
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_b

    .line 5707
    const/4 v0, 0x1

    .line 5708
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_a

    .line 5710
    :try_start_1
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v5, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 5712
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 5713
    if-eqz v1, :cond_a

    move v2, v4

    .line 5714
    goto/16 :goto_0

    .line 5716
    .end local v1           #handled:Z
    :catch_1
    move-exception v2

    .line 5721
    :cond_a
    if-eqz v0, :cond_b

    .line 5722
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5723
    const/4 v2, 0x2

    goto/16 :goto_0

    .end local v0           #doDown:Z
    :cond_b
    move v2, v3

    .line 5727
    goto/16 :goto_0

    .line 5614
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 7

    .prologue
    .line 8912
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    .line 8913
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 8914
    .local v2, spannable:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 8916
    .local v3, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 8917
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 8918
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    .line 8920
    and-int/lit8 v0, v0, -0x2

    .line 8921
    aget-object v4, v3, v1

    invoke-virtual {v4, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 8916
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8925
    .end local v0           #flags:I
    .end local v1           #i:I
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #suggestionSpans:[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 5344
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 5345
    .local v1, translate:Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5346
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 5347
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5344
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5349
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5350
    :cond_3
    return-void
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 9395
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 9391
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 11054
    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 11055
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 11056
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 11058
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private static findNearestNonwhiteOffset(Landroid/text/Spannable;I)I
    .locals 5
    .parameter "sp"
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 13667
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v4, p1, :cond_2

    :cond_0
    move v1, v3

    .line 13703
    :cond_1
    :goto_0
    return v1

    .line 13670
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-le p1, v4, :cond_3

    .line 13671
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    .line 13673
    :cond_3
    const/4 v1, -0x1

    .line 13675
    .local v1, left:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_1
    if-le v0, v3, :cond_4

    .line 13676
    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 13677
    move v1, v0

    .line 13682
    :cond_4
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    .line 13684
    .local v2, right:I
    move v0, p1

    :goto_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 13685
    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_7

    .line 13686
    move v2, v0

    .line 13691
    :cond_5
    if-ne v1, v3, :cond_8

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v2, v4, :cond_8

    .line 13692
    const/4 v1, 0x0

    goto :goto_0

    .line 13675
    .end local v2           #right:I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 13684
    .restart local v2       #right:I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13694
    :cond_8
    if-eq v1, v3, :cond_9

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 13697
    :cond_9
    if-ne v1, v3, :cond_a

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    if-eq v2, v3, :cond_a

    move v1, v2

    .line 13698
    goto :goto_0

    .line 13700
    :cond_a
    sub-int v3, p1, v1

    sub-int v4, v2, p1

    if-le v3, v4, :cond_1

    move v1, v2

    .line 13701
    goto :goto_0
.end method

.method public static findWordEnd(Ljava/lang/CharSequence;I)I
    .locals 6
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x27

    .line 13628
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    :cond_0
    move v3, p1

    .line 13662
    :goto_0
    return v3

    .line 13632
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 13643
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    .line 13644
    add-int/lit8 v3, p1, 0x1

    goto :goto_0

    .line 13647
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 13649
    .local v1, len:I
    :goto_1
    if-ge p1, v1, :cond_4

    .line 13650
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 13651
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 13653
    .local v2, type:I
    if-eq v0, v5, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    .line 13662
    .end local v0           #c:C
    .end local v2           #type:I
    :cond_4
    if-gez p1, :cond_6

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 13649
    .restart local v0       #c:C
    .restart local v2       #type:I
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_6
    move v3, p1

    .line 13662
    goto/16 :goto_0
.end method

.method public static findWordStart(Ljava/lang/CharSequence;I)I
    .locals 6
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x27

    .line 13587
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    :cond_0
    move v1, p1

    .line 13619
    .end local p1
    .local v1, offset:I
    :goto_0
    return v1

    .line 13591
    .end local v1           #offset:I
    .restart local p1
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 13602
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_4

    move v1, p1

    .line 13603
    .end local p1
    .restart local v1       #offset:I
    goto :goto_0

    .line 13606
    .end local v1           #offset:I
    .local v0, c:C
    .local v2, type:I
    .restart local p1
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_4
    if-lez p1, :cond_5

    .line 13607
    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 13608
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 13610
    .restart local v2       #type:I
    if-eq v0, v5, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_5
    move v1, p1

    .line 13619
    .end local p1
    .restart local v1       #offset:I
    goto/16 :goto_0
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1518
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 1519
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1520
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1521
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1527
    :goto_0
    return-void

    .line 1523
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1524
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1525
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 4410
    const/4 v4, 0x0

    .line 4411
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 4413
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4414
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 4415
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 4418
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 4421
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 4422
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4428
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 4430
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 4431
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 4432
    sub-int v4, v0, v3

    .line 4437
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 4425
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 4434
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getCharRange(I)J
    .locals 7
    .parameter "offset"

    .prologue
    .line 9552
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 9553
    .local v4, textLength:I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 9554
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9555
    .local v0, currentChar:C
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9556
    .local v1, nextChar:C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9557
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    .line 9573
    .end local v0           #currentChar:C
    .end local v1           #nextChar:C
    :goto_0
    return-wide v5

    .line 9560
    :cond_0
    if-ge p1, v4, :cond_1

    .line 9561
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 9563
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 9564
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 9565
    .local v2, previousChar:C
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 9566
    .local v3, previousPreviousChar:C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9567
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 9570
    .end local v2           #previousChar:C
    .end local v3           #previousPreviousChar:C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 9571
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 9573
    :cond_3
    invoke-static {p1, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 6990
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 6996
    if-nez p1, :cond_0

    .line 6997
    const/4 v0, 0x0

    .line 7045
    :goto_0
    return v0

    .line 7000
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7001
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 7002
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7004
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7005
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 7006
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7007
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7010
    :cond_1
    add-int/2addr v0, v3

    .line 7012
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 7017
    if-eqz p2, :cond_3

    .line 7018
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 7019
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7021
    if-eqz v1, :cond_2

    .line 7022
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7023
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7026
    :cond_2
    add-int/2addr v0, v3

    .line 7027
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 7034
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 7035
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 7036
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 7043
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7045
    goto :goto_0

    .line 7031
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 7039
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getDirection(F)I
    .locals 2
    .parameter "rawX"

    .prologue
    .line 11398
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/TextView;->mPreDirection:I

    .line 11399
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    .line 11400
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    .line 11404
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iget v1, p0, Landroid/widget/TextView;->mPreDirection:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    .line 11406
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    if-nez v0, :cond_4

    .line 11407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    .line 11412
    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    return v0

    .line 11401
    :cond_3
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 11402
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    goto :goto_0

    .line 11408
    :cond_4
    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 11409
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/TextView;->mFirstDirection:I

    goto :goto_1
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 4247
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4249
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4250
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 4263
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 4264
    .local v0, compoundPaddingTop:I
    iget v5, p0, Landroid/widget/TextView;->mBottom:I

    iget v7, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    .line 4266
    .local v4, vspace:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4267
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 4274
    .local v2, icontop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 4275
    .local v3, scale:F
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    add-int v5, v2, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_1
    move v5, v6

    .line 4267
    goto :goto_0
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "r"
    .parameter "line"

    .prologue
    .line 7458
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 7463
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 7464
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7465
    :cond_1
    return-void
.end method

.method private getLastTapPosition()I
    .locals 4

    .prologue
    .line 8634
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 8635
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 8636
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 8638
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 8639
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8641
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8647
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .prologue
    .line 9577
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 9578
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 9579
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 9580
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 6480
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_0

    .line 6482
    iget-object v1, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    .line 6483
    .local v1, textAlign:Landroid/widget/TextView$TextAlign;
    sget-object v2, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 6527
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6530
    .local v0, alignment:Landroid/text/Layout$Alignment;
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 6532
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    .end local v1           #textAlign:Landroid/widget/TextView$TextAlign;
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object v2

    .line 6488
    .restart local v1       #textAlign:Landroid/widget/TextView$TextAlign;
    :pswitch_0
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    const v3, 0x800007

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 6505
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6506
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6490
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6491
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6493
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6494
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6496
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6497
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6499
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6500
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6502
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6503
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6510
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6511
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6513
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6514
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6516
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6517
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6519
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6521
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_0

    .line 6519
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 6523
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6525
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    :goto_2
    goto :goto_0

    .line 6523
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 6483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6488
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLineAtCoordinate(F)I
    .locals 2
    .parameter "y"

    .prologue
    .line 12860
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 12862
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 12863
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 12864
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 12865
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getOffsetAtCoordinate(IF)I
    .locals 1
    .parameter "line"
    .parameter "x"

    .prologue
    .line 12869
    invoke-direct {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 12870
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getOffsetForHorizontal(IF)I
    .locals 2
    .parameter "line"
    .parameter "x"

    .prologue
    .line 12875
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 12878
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 12879
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 12880
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 12881
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getOwnerViewRoot()Landroid/view/ViewRootImpl;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6421
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 6422
    .local v1, rootViewOfOwner:Landroid/view/View;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 6429
    :goto_0
    return-object v0

    .line 6425
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6426
    .local v0, parentOfRootView:Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_1

    .line 6427
    check-cast v0, Landroid/view/ViewRootImpl;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6429
    goto :goto_0
.end method

.method private getPositionListener()Landroid/widget/TextView$PositionListener;
    .locals 2

    .prologue
    .line 10105
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-nez v0, :cond_0

    .line 10106
    new-instance v0, Landroid/widget/TextView$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$PositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    .line 10108
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    return-object v0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    sget-boolean v0, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 1233
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 9260
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9262
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 9265
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 9232
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 9235
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_0

    .line 9236
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 9238
    .local v0, ap:I
    if-eq v0, v4, :cond_0

    .line 9240
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9242
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 9244
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9248
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_0
    return-object v2
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 9639
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9640
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9641
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9643
    :cond_0
    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 9879
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v3, 0x109009f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/TextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9882
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 9883
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9886
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 9887
    sget v2, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 9889
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9890
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9892
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9893
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 9895
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9898
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9899
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 9901
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 9902
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 9903
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9824
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 4379
    const/4 v4, 0x0

    .line 4380
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 4382
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4383
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 4384
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 4387
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 4390
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 4391
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4397
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 4399
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 4400
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 4401
    sub-int v4, v0, v3

    .line 4406
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 4394
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 4403
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 3754
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 12826
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12828
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    .line 12830
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 12831
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 12832
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 4280
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 4281
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4282
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 4286
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4287
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 12799
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 12800
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 12802
    :cond_0
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 12805
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 12806
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 12808
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 12820
    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-eqz v0, :cond_0

    .line 12821
    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #calls: Landroid/widget/TextView$ChangeWatcher;->hideControllers()V
    invoke-static {v0}, Landroid/widget/TextView$ChangeWatcher;->access$12000(Landroid/widget/TextView$ChangeWatcher;)V

    .line 12823
    :cond_0
    return-void
.end method

.method private hookIME()V
    .locals 3

    .prologue
    .line 9111
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 9112
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 9113
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 9114
    return-void
.end method

.method private invalidateCursor()V
    .locals 1

    .prologue
    .line 4484
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4486
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 4487
    return-void
.end method

.method private invalidateCursor(III)V
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 4490
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 4491
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4492
    .local v1, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4493
    .local v0, end:I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 4495
    .end local v0           #end:I
    .end local v1           #start:I
    :cond_1
    return-void
.end method

.method private invalidateCursorPath()V
    .locals 11

    .prologue
    const/high16 v7, 0x4000

    .line 4441
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 4442
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 4481
    :cond_0
    :goto_0
    return-void

    .line 4444
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4445
    .local v1, horizontalPadding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 4447
    .local v4, verticalPadding:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-nez v5, :cond_3

    .line 4448
    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v6

    .line 4458
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 4460
    .local v3, thick:F
    cmpg-float v5, v3, v7

    if-gez v5, :cond_2

    .line 4461
    const/high16 v3, 0x4000

    .line 4464
    :cond_2
    div-float/2addr v3, v7

    .line 4466
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4468
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4472
    monitor-exit v6

    goto :goto_0

    .end local v3           #thick:F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4474
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 4475
    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4476
    .local v0, bounds:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4474
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 8896
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    .line 8897
    .local v1, spannable:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 8899
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 8900
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 8901
    const/4 v3, 0x1

    .line 8904
    :goto_1
    return v3

    .line 8899
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8904
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8884
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 8888
    :goto_0
    return v2

    .line 8886
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 8888
    .local v0, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isCursorVisible()Z
    .locals 1

    .prologue
    .line 7699
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHWKeyboardOpen()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 13709
    const/4 v1, 0x0

    .line 13712
    .local v1, bHWKBOpen:Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 13713
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 13714
    .local v2, config:Landroid/content/res/Configuration;
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_0

    const/4 v5, 0x3

    iget v6, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v5, v6, :cond_1

    :cond_0
    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    .line 13721
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    :goto_1
    return v4

    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #config:Landroid/content/res/Configuration;
    :cond_1
    move v1, v4

    .line 13714
    goto :goto_0

    .line 13717
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    .line 13718
    .local v3, e:Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 3677
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    .line 10261
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 10262
    .local v0, line:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 10263
    .local v1, lineBottom:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v2, v3

    .line 10264
    .local v2, primaryHorizontal:I
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v3

    return v3
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3758
    and-int/lit16 v0, p0, 0xfff

    .line 3760
    .local v0, variation:I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 12916
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12923
    :cond_0
    :goto_0
    return v1

    .line 12918
    :cond_1
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 12919
    .local v0, line:I
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 12921
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 12922
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 12923
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10221
    sget-object v6, Landroid/widget/TextView;->sTmpPosition:[F

    monitor-enter v6

    .line 10222
    :try_start_0
    sget-object v2, Landroid/widget/TextView;->sTmpPosition:[F

    .line 10223
    .local v2, position:[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 10224
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 10225
    move-object v3, p0

    .line 10227
    .local v3, view:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 10228
    if-eq v3, p0, :cond_0

    .line 10230
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 10231
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 10234
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 10236
    :cond_1
    monitor-exit v6

    .line 10257
    :goto_1
    return v4

    .line 10239
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 10240
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 10243
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 10244
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 10246
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 10247
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 10248
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 10251
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 10254
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 10257
    goto :goto_1

    .line 10254
    .end local v2           #position:[F
    .end local v3           #view:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isTextEditable()Z
    .locals 1

    .prologue
    .line 8984
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3769
    and-int/lit16 v0, p0, 0xfff

    .line 3771
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeBlink()V
    .locals 6

    .prologue
    .line 9088
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9089
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9090
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 9091
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 9092
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9094
    sget-boolean v0, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    if-eqz v0, :cond_2

    .line 9095
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    sget v4, Landroid/widget/TextView;->BLINK_WHITE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 9102
    :cond_1
    :goto_0
    return-void

    .line 9097
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9100
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private makeBlinkandHook()V
    .locals 4

    .prologue
    .line 9116
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 9117
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9118
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9119
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9121
    :cond_0
    return-void
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 15
    .parameter "wantWidth"
    .parameter "boring"
    .parameter "ellipsisWidth"
    .parameter "alignment"
    .parameter "shouldEllipsize"
    .parameter "effectiveEllipsize"
    .parameter "useSaved"

    .prologue
    .line 6673
    const/4 v1, 0x0

    .line 6674
    .local v1, result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    .line 6675
    new-instance v1, Landroid/text/DynamicLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v5, :cond_1

    move-object/from16 v11, p6

    :goto_0
    move/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 6738
    .restart local v1       #result:Landroid/text/Layout;
    :cond_0
    :goto_1
    return-object v1

    .line 6675
    .end local v1           #result:Landroid/text/Layout;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 6680
    .restart local v1       #result:Landroid/text/Layout;
    :cond_2
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 6681
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 6682
    if-eqz p2, :cond_3

    .line 6683
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6687
    :cond_3
    if-eqz p2, :cond_b

    .line 6688
    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_6

    if-eqz p6, :cond_4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_6

    .line 6690
    :cond_4
    if-eqz p7, :cond_5

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_5

    .line 6691
    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    .line 6700
    :goto_2
    if-eqz p7, :cond_0

    move-object v2, v1

    .line 6701
    check-cast v2, Landroid/text/BoringLayout;

    iput-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto :goto_1

    .line 6695
    :cond_5
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_2

    .line 6703
    :cond_6
    if-eqz p5, :cond_8

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_8

    .line 6704
    if-eqz p7, :cond_7

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_7

    .line 6705
    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_1

    .line 6710
    :cond_7
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v11, p3

    invoke-static/range {v2 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_1

    .line 6715
    :cond_8
    if-eqz p5, :cond_a

    .line 6716
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_3
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1

    .end local v1           #result:Landroid/text/Layout;
    :cond_9
    const v14, 0x7fffffff

    goto :goto_3

    .line 6722
    .restart local v1       #result:Landroid/text/Layout;
    :cond_a
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1

    .line 6726
    :cond_b
    if-eqz p5, :cond_d

    .line 6727
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_4
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1

    .end local v1           #result:Landroid/text/Layout;
    :cond_c
    const v14, 0x7fffffff

    goto :goto_4

    .line 6733
    .restart local v1       #result:Landroid/text/Layout;
    :cond_d
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1
.end method

.method private nullLayouts()V
    .locals 1

    .prologue
    .line 6434
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 6435
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 6437
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 6438
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6441
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6444
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6445
    return-void
.end method

.method private onDrop(Landroid/view/DragEvent;)V
    .locals 23
    .parameter "event"

    .prologue
    .line 12953
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12954
    .local v4, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 12955
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 12956
    .local v11, itemCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 12957
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 12958
    .local v10, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 12956
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 12961
    .end local v10           #item:Landroid/content/ClipData$Item;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 12963
    .local v17, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 12964
    .local v12, localState:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 12965
    .local v6, dragLocalState:Landroid/widget/TextView$DragLocalState;
    instance-of v0, v12, Landroid/widget/TextView$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v6, v12

    .line 12966
    check-cast v6, Landroid/widget/TextView$DragLocalState;

    .line 12968
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/TextView$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 12971
    .local v5, dragDropIntoItself:Z
    :goto_1
    if-eqz v5, :cond_4

    .line 12972
    iget v0, v6, Landroid/widget/TextView$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/TextView$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 13009
    :cond_2
    :goto_2
    return-void

    .line 12968
    .end local v5           #dragDropIntoItself:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 12978
    .restart local v5       #dragDropIntoItself:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v18

    .line 12979
    .local v18, originalLength:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v15

    .line 12980
    .local v15, minMax:J
    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v14

    .line 12981
    .local v14, min:I
    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v13

    .line 12983
    .local v13, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 12984
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 12986
    if-eqz v5, :cond_2

    .line 12987
    iget v8, v6, Landroid/widget/TextView$DragLocalState;->start:I

    .line 12988
    .local v8, dragSourceStart:I
    iget v7, v6, Landroid/widget/TextView$DragLocalState;->end:I

    .line 12989
    .local v7, dragSourceEnd:I
    if-gt v13, v8, :cond_5

    .line 12991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v20, v21, v18

    .line 12992
    .local v20, shift:I
    add-int v8, v8, v20

    .line 12993
    add-int v7, v7, v20

    .line 12997
    .end local v20           #shift:I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 13000
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-eq v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 13004
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-ne v8, v0, :cond_8

    add-int/lit8 v19, v8, -0x1

    .line 13006
    .local v19, pos:I
    :goto_3
    add-int/lit8 v21, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_2

    .end local v19           #pos:I
    :cond_8
    move/from16 v19, v8

    .line 13004
    goto :goto_3
.end method

.method private static packRangeInLong(II)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9387
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private paste(II)V
    .locals 13
    .parameter "min"
    .parameter "max"

    .prologue
    .line 11102
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11106
    .local v1, clipboard:Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 11107
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_3

    .line 11108
    const/4 v2, 0x0

    .line 11111
    .local v2, didFirst:Z
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 11112
    .local v5, itemCount:I
    const/4 v6, 0x0

    .line 11115
    .local v6, label:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 11121
    :goto_0
    if-eqz v6, :cond_0

    :try_start_2
    const-string v10, "HTC_MODIFIED_CLIPDATA"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 11124
    const/4 v5, 0x1

    .line 11127
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 11131
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 11132
    .local v9, paste:Ljava/lang/CharSequence;
    if-eqz v9, :cond_1

    .line 11133
    if-nez v2, :cond_2

    .line 11134
    invoke-direct {p0, p1, p2, v9}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v7

    .line 11135
    .local v7, minMax:J
    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result p1

    .line 11136
    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result p2

    .line 11137
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11138
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-interface {v10, p1, p2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11139
    const/4 v2, 0x1

    .line 11127
    .end local v7           #minMax:J
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11116
    .end local v4           #i:I
    .end local v9           #paste:Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 11117
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "TextView"

    const-string v11, "GetLabel fail! Do framework orig behavior"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11118
    const/4 v6, 0x0

    goto :goto_0

    .line 11141
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #i:I
    .restart local v9       #paste:Ljava/lang/CharSequence;
    :cond_2
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-string v12, "\n"

    invoke-interface {v10, v11, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11142
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v11, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 11149
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v2           #didFirst:Z
    .end local v4           #i:I
    .end local v5           #itemCount:I
    .end local v6           #label:Ljava/lang/String;
    .end local v9           #paste:Ljava/lang/CharSequence;
    :catch_1
    move-exception v3

    .line 11150
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "TextView"

    const-string v11, "Security exception"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11152
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 11146
    .restart local v0       #clip:Landroid/content/ClipData;
    .restart local v2       #didFirst:Z
    .restart local v4       #i:I
    .restart local v5       #itemCount:I
    .restart local v6       #label:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 11147
    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutOrCopyTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private prepareCursorControllers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8944
    const/4 v2, 0x0

    .line 8946
    .local v2, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8947
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 8948
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 8949
    .local v1, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_5

    :cond_0
    move v2, v4

    .line 8953
    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 8958
    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_7

    :goto_2
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 8961
    iget-boolean v3, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v3, :cond_3

    .line 8962
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 8963
    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v3, :cond_3

    .line 8964
    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 8965
    iput-object v7, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 8969
    :cond_3
    iget-boolean v3, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_4

    .line 8970
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8971
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v3, :cond_4

    .line 8972
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 8973
    iput-object v7, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 8976
    :cond_4
    return-void

    .restart local v1       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v2, v3

    .line 8949
    goto :goto_0

    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v5, v3

    .line 8953
    goto :goto_1

    :cond_7
    move v4, v3

    .line 8958
    goto :goto_2
.end method

.method private prepareQuickActions()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 11374
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_1

    move v4, v1

    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v9, :cond_0

    move v8, v1

    :cond_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V

    .line 11376
    return-void

    :cond_1
    move v4, v8

    .line 11374
    goto :goto_0
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/16 v6, 0xa

    .line 9834
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 9835
    if-lez p1, :cond_0

    .line 9836
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9837
    .local v1, charBefore:C
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9839
    .local v0, charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9841
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9842
    .local v3, originalLength:I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9845
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 9846
    .local v2, delta:I
    add-int/2addr p1, v2

    .line 9847
    add-int/2addr p2, v2

    .line 9860
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 9861
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9862
    .restart local v1       #charBefore:C
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9864
    .restart local v0       #charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9866
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9875
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 9848
    .restart local v0       #charAfter:C
    .restart local v1       #charBefore:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v0, v6, :cond_0

    .line 9851
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9852
    .restart local v3       #originalLength:I
    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 9854
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 9855
    .restart local v2       #delta:I
    add-int/2addr p1, v2

    .line 9856
    add-int/2addr p2, v2

    goto :goto_0

    .line 9867
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v6, :cond_1

    .line 9870
    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4557
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4559
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_1

    .line 4560
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4561
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4567
    :cond_0
    :goto_0
    return-void

    .line 4562
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4563
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0
.end method

.method private removeIntersectingSpans(IILjava/lang/Class;)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 7985
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 7998
    :cond_0
    return-void

    .line 7986
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 7988
    .local v5, text:Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 7989
    .local v4, spans:[Ljava/lang/Object;,"[TT;"
    array-length v2, v4

    .line 7990
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 7991
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 7992
    .local v3, s:I
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 7995
    .local v0, e:I
    if-eq v0, p1, :cond_0

    if-eq v3, p2, :cond_0

    .line 7996
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 7990
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 6089
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 6090
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 6091
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 6092
    add-int/lit8 v0, v0, -0x1

    .line 6093
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 6095
    :cond_0
    return-void
.end method

.method private removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    .line 13535
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 13536
    check-cast v3, Landroid/text/Spannable;

    .line 13537
    .local v3, spannable:Landroid/text/Spannable;
    const/4 v6, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 13538
    .local v4, spans:[Ljava/lang/Object;
    array-length v1, v4

    .line 13539
    .local v1, i:I
    :cond_0
    :goto_0
    if-lez v1, :cond_2

    .line 13540
    add-int/lit8 v1, v1, -0x1

    .line 13541
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 13542
    .local v5, start:I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 13543
    .local v0, end:I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 13545
    if-ltz v5, :cond_0

    if-le v0, v5, :cond_0

    invoke-interface {v3, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-ne v6, v7, :cond_0

    .line 13546
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13547
    .local v2, spanBuilder:Landroid/text/SpannableStringBuilder;
    const-string v6, ""

    invoke-virtual {v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_0

    .end local v0           #end:I
    .end local v1           #i:I
    .end local v2           #spanBuilder:Landroid/text/SpannableStringBuilder;
    .end local v3           #spannable:Landroid/text/Spannable;
    .end local v4           #spans:[Ljava/lang/Object;
    .end local v5           #start:I
    :cond_1
    move-object v3, p1

    .line 13552
    :cond_2
    return-object v3
.end method

.method private removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"

    .prologue
    .line 13558
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 13559
    check-cast v1, Landroid/text/Spannable;

    .line 13562
    .local v1, spannable:Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    .line 13563
    .local v2, spans:[Landroid/text/Annotation;
    array-length v0, v2

    .line 13564
    .local v0, i:I
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 13565
    add-int/lit8 v0, v0, -0x1

    .line 13566
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "styledtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13568
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 13561
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/Annotation;
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1       #spannable:Landroid/text/Spannable;
    goto :goto_0

    .line 13570
    .restart local v0       #i:I
    .restart local v2       #spans:[Landroid/text/Annotation;
    :cond_2
    return-object v1
.end method

.method private resetMetaStatus()V
    .locals 1

    .prologue
    .line 13729
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mCapOld:I

    iput v0, p0, Landroid/widget/TextView;->mFnOld:I

    .line 13730
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 4328
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 4329
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 4330
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 4332
    :cond_0
    return-void
.end method

.method private selectAll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9399
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9400
    .local v0, length:I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9401
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private selectCurrentWord()Z
    .locals 21

    .prologue
    .line 9409
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v19

    if-nez v19, :cond_0

    .line 9410
    const/16 v19, 0x0

    .line 9514
    :goto_0
    return v19

    .line 9436
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v3

    .line 9437
    .local v3, lastTouchOffsets:J
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v7

    .line 9438
    .local v7, minOffset:I
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v6

    .line 9449
    .local v6, maxOffset:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 9450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 9451
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 9452
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 9453
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v14

    .line 9455
    .local v14, selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-eqz v14, :cond_1

    .line 9456
    invoke-virtual {v14}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v8

    .line 9458
    .end local v14           #selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Landroid/widget/TextView;->findNearestNonwhiteOffset(Landroid/text/Spannable;I)I

    move-result v8

    .line 9459
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_8

    .line 9460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v15

    .line 9461
    .local v15, selectionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Landroid/widget/TextView;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 9462
    .local v13, selectionEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 9463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    check-cast v16, Landroid/text/Spannable;

    .line 9464
    .local v16, sp:Landroid/text/Spannable;
    const-class v19, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v13, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/ReplacementSpan;

    .line 9465
    .local v17, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v2, v0, :cond_4

    .line 9466
    aget-object v19, v17, v2

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 9467
    .local v12, replaceStart:I
    aget-object v19, v17, v2

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 9468
    .local v11, replaceEnd:I
    if-ge v12, v15, :cond_2

    .line 9469
    move v15, v12

    .line 9470
    :cond_2
    if-le v11, v13, :cond_3

    .line 9471
    move v13, v11

    .line 9465
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9478
    .end local v2           #i:I
    .end local v11           #replaceEnd:I
    .end local v12           #replaceStart:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/style/ReplacementSpan;
    :cond_4
    if-ne v15, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v15, :cond_6

    .line 9479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    add-int/lit8 v20, v15, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v15, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9483
    :cond_5
    :goto_2
    if-le v13, v15, :cond_7

    const/16 v19, 0x1

    goto/16 :goto_0

    .line 9480
    :cond_6
    if-eq v15, v13, :cond_5

    .line 9481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v19

    invoke-static {v0, v15, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    .line 9483
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 9487
    .end local v8           #offset:I
    .end local v13           #selectionEnd:I
    .end local v15           #selectionStart:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 9488
    .local v5, length:I
    if-lez v5, :cond_9

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 9494
    .end local v5           #length:I
    :cond_a
    if-ltz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_c

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 9495
    :cond_c
    if-ltz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v6, v0, :cond_e

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 9496
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v18

    .line 9497
    .local v18, wordIterator:Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 9499
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v15

    .line 9500
    .restart local v15       #selectionStart:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_f

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 9502
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v13

    .line 9503
    .restart local v13       #selectionEnd:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_10

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 9505
    :cond_10
    if-ne v15, v13, :cond_11

    .line 9507
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/TextView;->getCharRange(I)J

    move-result-wide v9

    .line 9508
    .local v9, range:J
    invoke-static {v9, v10}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v15

    .line 9509
    invoke-static {v9, v10}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v13

    .line 9513
    .end local v9           #range:J
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v19

    invoke-static {v0, v15, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9514
    if-le v13, v15, :cond_12

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 7970
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 7971
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7972
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7973
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7974
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 7973
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7979
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    .line 7980
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    .line 7981
    return-void
.end method

.method private sendMetaStatusToIME(II)V
    .locals 5
    .parameter "fn"
    .parameter "caps"

    .prologue
    .line 13748
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 13750
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13751
    const-string v0, "TextView_MetaStatus"

    .line 13752
    .local v0, command:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13753
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "FN"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13754
    const-string v3, "CAPS"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13755
    invoke-virtual {v2, p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13757
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 3
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 4357
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_0

    .line 4358
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 4360
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4361
    array-length v2, p2

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    check-cast v1, Landroid/text/InputFilter;

    aput-object v1, v0, v2

    .line 4363
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 4367
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_0
    return-void

    .line 4365
    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setInputType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3787
    and-int/lit8 v2, p1, 0xf

    .line 3789
    .local v2, cls:I
    if-ne v2, v4, :cond_4

    .line 3790
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_0

    move v0, v4

    .line 3792
    .local v0, autotext:Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 3793
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3801
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3823
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3824
    if-eqz p2, :cond_a

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3828
    :goto_3
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_0
    move v0, v5

    .line 3790
    goto :goto_0

    .line 3794
    .restart local v0       #autotext:Z
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 3795
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3796
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 3797
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3799
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3802
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 3803
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_5

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_6

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5
    move v6, v5

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5

    .line 3806
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 3807
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 3815
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3816
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3809
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3810
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3812
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3813
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3818
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 3819
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3821
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3826
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 3807
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 2
    .parameter "singleLine"

    .prologue
    .line 7590
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7591
    if-eqz p1, :cond_1

    .line 7592
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 7597
    :cond_0
    :goto_0
    return-void

    .line 7594
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 1475
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1476
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1477
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1480
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .parameter "clip"

    .prologue
    .line 11155
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 11157
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    .line 11159
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 2349
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2352
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2353
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2354
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2355
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2358
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1256
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1257
    .local v2, hasRelativeDrawables:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1258
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1259
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 1260
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1262
    :cond_1
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1263
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1264
    .local v3, state:[I
    if-eqz p1, :cond_4

    .line 1265
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1266
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1267
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1268
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1270
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1271
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1272
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1276
    :goto_1
    if-eqz p2, :cond_5

    .line 1277
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1278
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1279
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1280
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1282
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1283
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1284
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1289
    .end local v0           #compoundRect:Landroid/graphics/Rect;
    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    .end local v3           #state:[I
    :cond_2
    :goto_2
    return-void

    .end local v2           #hasRelativeDrawables:Z
    :cond_3
    move v2, v4

    .line 1256
    goto :goto_0

    .line 1274
    .restart local v0       #compoundRect:Landroid/graphics/Rect;
    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    .restart local v2       #hasRelativeDrawables:Z
    .restart local v3       #state:[I
    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 1286
    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 3325
    if-nez p1, :cond_0

    .line 3326
    const-string p1, ""

    .line 3330
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3331
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3334
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3336
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 3338
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3339
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 3340
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 3345
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3348
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 3349
    .local v14, n:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v14, :cond_6

    .line 3350
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3352
    .local v16, out:Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    .line 3353
    move-object/from16 p1, v16

    .line 3349
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3342
    .end local v12           #i:I
    .end local v14           #n:I
    .end local v16           #out:Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 3343
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .line 3357
    .restart local v12       #i:I
    .restart local v14       #n:I
    :cond_6
    if-eqz p3, :cond_7

    .line 3358
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    .line 3359
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 3360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3366
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 3368
    .local v15, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 3369
    const/4 v15, 0x1

    .line 3372
    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    .line 3373
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 3374
    .local v19, t:Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 3375
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3376
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 3377
    .local v13, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3384
    .end local v13           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v19           #t:Landroid/text/Editable;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    .line 3387
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    .line 3388
    check-cast v17, Landroid/text/Spannable;

    .line 3393
    .local v17, s2:Landroid/text/Spannable;
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3394
    move-object/from16 p1, v17

    .line 3395
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 3402
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3406
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3407
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3412
    .end local v17           #s2:Landroid/text/Spannable;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 3413
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3415
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    .line 3416
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 3421
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 3423
    .local v20, textLength:I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_18

    move-object/from16 v18, p1

    .line 3424
    check-cast v18, Landroid/text/Spannable;

    .line 3428
    .local v18, sp:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 3429
    .local v21, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 3430
    .local v11, count:I
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    .line 3431
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3430
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 3362
    .end local v11           #count:I
    .end local v15           #needEditableForNotification:Z
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v20           #textLength:I
    .end local v21           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    .line 3378
    .restart local v15       #needEditableForNotification:Z
    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    .line 3379
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    .line 3380
    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    .line 3381
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    .line 3390
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17       #s2:Landroid/text/Spannable;
    goto/16 :goto_4

    .line 3395
    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 3418
    .end local v17           #s2:Landroid/text/Spannable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 3433
    .restart local v11       #count:I
    .restart local v18       #sp:Landroid/text/Spannable;
    .restart local v20       #textLength:I
    .restart local v21       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    .line 3434
    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 3436
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_16

    .line 3440
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3443
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    .line 3444
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3447
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    .line 3448
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 3455
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 3459
    .end local v11           #count:I
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v21           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    .line 3460
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3463
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 3464
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3466
    if-eqz v15, :cond_1a

    .line 3467
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 3471
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 3472
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 1252
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1253
    return-void

    .line 1240
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1241
    goto :goto_0

    .line 1244
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1245
    goto :goto_0

    .line 1248
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5573
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v3, :cond_1

    .line 5589
    :cond_0
    :goto_0
    return v1

    .line 5577
    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 5578
    goto :goto_0

    .line 5581
    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 5582
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 5583
    .local v0, variation:I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    .line 5585
    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5597
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    .line 5598
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    .line 5599
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5600
    .local v0, variation:I
    const/high16 v2, 0x4

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5602
    :cond_0
    const/4 v1, 0x0

    .line 5606
    .end local v0           #variation:I
    :cond_1
    return v1
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 9076
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9084
    :cond_0
    :goto_0
    return v2

    .line 9078
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 9079
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 9081
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 9082
    .local v0, end:I
    if-ltz v0, :cond_0

    .line 9084
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 4158
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4159
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4182
    :goto_0
    return-void

    .line 4163
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_1

    .line 4164
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4165
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900a7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4168
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 4169
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 4170
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 4173
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 4176
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4177
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4178
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4180
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 4181
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private showQuickAction()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 13464
    iget-object v8, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 13465
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 13467
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 13468
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 13469
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 13470
    .local v5, selEnd:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v8, :cond_9

    if-eq v6, v5, :cond_9

    if-ltz v6, :cond_9

    if-ltz v5, :cond_9

    .line 13473
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 13474
    .local v7, startLine:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 13475
    .local v0, endLine:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 13476
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 13477
    if-ne v7, v0, :cond_8

    .line 13478
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 13479
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 13490
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 13491
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    .line 13492
    .local v3, paddingTop:I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_2

    .line 13493
    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v3, v8

    .line 13495
    :cond_2
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 13500
    .end local v0           #endLine:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingTop:I
    .end local v7           #startLine:I
    :goto_0
    iget-object v8, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13501
    iget-object v8, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 13502
    iget-object v8, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->isShowing()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 13507
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 13511
    :goto_1
    iget v8, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    if-eqz v8, :cond_5

    .line 13512
    iget v8, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 13515
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->isShowing()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->isAllDownAnchor()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 13517
    :cond_7
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    .line 13522
    :goto_2
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget v9, p0, Landroid/widget/TextView;->mFlags:I

    invoke-virtual {v8, p0, v4, v9}, Lcom/htc/textselection/HtcTextSelectionManager;->showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V

    .line 13524
    return-void

    .line 13481
    .restart local v0       #endLine:I
    .restart local v7       #startLine:I
    :cond_8
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 13482
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 13483
    move v1, v7

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 13484
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 13485
    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 13483
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 13497
    .end local v0           #endLine:I
    .end local v1           #i:I
    .end local v7           #startLine:I
    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 13509
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_1

    .line 13519
    :cond_b
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    goto :goto_2
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7711
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_1

    .line 7738
    :cond_0
    :goto_0
    return-void

    .line 7713
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7717
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7720
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    .line 7721
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7722
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7723
    .local v0, tmp:Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7724
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7725
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7726
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7727
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7730
    .end local v0           #tmp:Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7733
    :cond_5
    iget-boolean v1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-nez v1, :cond_0

    .line 7734
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startSelectionActionMode()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 10985
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    .line 11050
    :cond_0
    :goto_0
    return v5

    .line 10990
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_3

    .line 10991
    :cond_2
    const-string v4, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10998
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11004
    invoke-direct {p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v3

    .line 11008
    .local v3, willExtract:Z
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 11009
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11010
    iget-object v6, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-virtual {v6, p0, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 11011
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 11013
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_9

    .line 11014
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 11020
    :cond_5
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->prepareQuickActions()V

    .line 11021
    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    .line 11022
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    .line 11034
    :cond_6
    :goto_2
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    iget-boolean v4, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    if-eqz v4, :cond_b

    .line 11040
    .local v2, selectionStarted:Z
    :cond_7
    :goto_3
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 11042
    if-eqz v2, :cond_8

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    if-nez v4, :cond_8

    .line 11044
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 11045
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_8

    .line 11046
    invoke-virtual {v1, p0, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    move v5, v2

    .line 11050
    goto :goto_0

    .line 11016
    .end local v2           #selectionStarted:Z
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->forceShow()V

    goto :goto_1

    .line 11028
    :cond_a
    if-nez v3, :cond_6

    .line 11029
    new-instance v0, Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct {v0, p0, v7}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 11030
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 11031
    iput-boolean v5, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    goto :goto_2

    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_b
    move v2, v5

    .line 11034
    goto :goto_3
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 7762
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 7763
    if-eqz p1, :cond_1

    .line 7764
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7769
    :cond_0
    :goto_0
    return-void

    .line 7766
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 7741
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7744
    iget-boolean v1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-nez v1, :cond_0

    .line 7745
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 7750
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7751
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7752
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7753
    .local v0, tmp:Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7754
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7755
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7756
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7757
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7759
    .end local v0           #tmp:Landroid/text/Layout;
    :cond_1
    return-void
.end method

.method private textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9318
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9319
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private touchPositionIsInSelection()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 10076
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 10077
    .local v4, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 10079
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 10101
    :goto_0
    return v7

    .line 10083
    :cond_0
    if-le v4, v3, :cond_1

    .line 10084
    move v5, v4

    .line 10085
    .local v5, tmp:I
    move v4, v3

    .line 10086
    move v3, v5

    .line 10087
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10090
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 10093
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-nez v2, :cond_2

    .line 10094
    const-string v6, "TextView"

    const-string v8, "selectionController is null"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10098
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 10099
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 10101
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_3

    if-ge v0, v3, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 5330
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 5331
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 5333
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 5335
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5336
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5337
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 5338
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 5339
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5341
    return-void
.end method

.method private updateCursorsPositions()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    .line 5304
    iget v5, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v5, :cond_1

    .line 5305
    iput v9, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 5327
    :cond_0
    :goto_0
    return-void

    .line 5309
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 5310
    .local v3, offset:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5311
    .local v1, line:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 5312
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5314
    .local v0, bottom:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput v5, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 5316
    move v2, v0

    .line 5317
    .local v2, middle:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_2

    .line 5319
    add-int v5, v4, v0

    shr-int/lit8 v2, v5, 0x1

    .line 5322
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v9, v4, v2, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    .line 5324
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_0

    .line 5325
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v7, v2, v0, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    goto :goto_0

    .end local v2           #middle:I
    :cond_3
    move v5, v7

    .line 5314
    goto :goto_1
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "createSpellChecker"

    .prologue
    .line 8184
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 8185
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 8186
    new-instance v0, Landroid/widget/SpellChecker;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 8188
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 8189
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 8192
    :cond_1
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2983
    const/4 v1, 0x0

    .line 2984
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2985
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 2986
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2987
    const/4 v1, 0x1

    .line 2989
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 2990
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2991
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 2992
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2993
    const/4 v1, 0x1

    .line 2996
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 2997
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2998
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2999
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 3000
    const/4 v1, 0x1

    .line 3003
    :cond_2
    if-eqz v1, :cond_3

    .line 3004
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3006
    :cond_3
    return-void
.end method

.method private useHtcTextSelection()Z
    .locals 1

    .prologue
    .line 13418
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 7478
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 7482
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 7483
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 7484
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 7486
    :cond_0
    return v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 7947
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7951
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7952
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2966
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2967
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2975
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 2976
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2979
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2980
    return-void
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 10903
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6279
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 6280
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6281
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 6282
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6283
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 6284
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 6285
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6286
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 6289
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6290
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6296
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 6299
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 6292
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6293
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6294
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 28
    .parameter "offset"

    .prologue
    .line 7217
    const/4 v5, 0x0

    .line 7219
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    move v6, v5

    .line 7380
    .end local v5           #changed:Z
    .local v6, changed:I
    :goto_0
    return v6

    .line 7221
    .end local v6           #changed:I
    .restart local v5       #changed:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 7224
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 7225
    .local v23, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 7226
    .local v19, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 7228
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->floor(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 7229
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->ceil(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 7230
    .local v18, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 7234
    .local v15, ht:I
    sget-object v24, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 7249
    const/4 v11, 0x0

    .line 7253
    .local v11, grav:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    sub-int v14, v24, v25

    .line 7254
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v25

    sub-int v22, v24, v25

    .line 7256
    .local v22, vspace:I
    sub-int v24, v4, v19

    div-int/lit8 v13, v24, 0x2

    .line 7257
    .local v13, hslack:I
    move/from16 v21, v13

    .line 7259
    .local v21, vslack:I
    div-int/lit8 v24, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 7260
    div-int/lit8 v21, v22, 0x4

    .line 7261
    :cond_1
    div-int/lit8 v24, v14, 0x4

    move/from16 v0, v24

    if-le v13, v0, :cond_2

    .line 7262
    div-int/lit8 v13, v14, 0x4

    .line 7264
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7265
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v20, v0

    .line 7267
    .local v20, vs:I
    sub-int v24, v19, v20

    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 7268
    sub-int v20, v19, v21

    .line 7269
    :cond_3
    sub-int v24, v4, v20

    sub-int v25, v22, v21

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 7270
    sub-int v24, v22, v21

    sub-int v20, v4, v24

    .line 7271
    :cond_4
    sub-int v24, v15, v20

    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 7272
    sub-int v20, v15, v22

    .line 7273
    :cond_5
    rsub-int/lit8 v24, v20, 0x0

    if-lez v24, :cond_6

    .line 7274
    const/16 v20, 0x0

    .line 7276
    :cond_6
    if-eqz v11, :cond_8

    .line 7277
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_7

    .line 7278
    sub-int v12, v23, v13

    .line 7280
    :cond_7
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 7281
    sub-int v24, v14, v13

    sub-int v12, v23, v24

    .line 7285
    :cond_8
    if-gez v11, :cond_f

    .line 7286
    sub-int v24, v16, v12

    if-lez v24, :cond_9

    .line 7287
    move/from16 v12, v16

    .line 7288
    :cond_9
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_a

    .line 7289
    sub-int v12, v18, v14

    .line 7336
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 7337
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    if-nez v24, :cond_18

    .line 7338
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7359
    :goto_3
    const/4 v5, 0x1

    .line 7362
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 7366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 7371
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int/lit8 v25, v23, -0x2

    add-int/lit8 v26, v23, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 7373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->offset(II)V

    .line 7375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 7376
    const/4 v5, 0x1

    :cond_e
    move v6, v5

    .line 7380
    .restart local v6       #changed:I
    goto/16 :goto_0

    .line 7236
    .end local v6           #changed:I
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v20           #vs:I
    .end local v21           #vslack:I
    .end local v22           #vspace:I
    :pswitch_0
    const/4 v11, 0x1

    .line 7237
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 7239
    .end local v11           #grav:I
    :pswitch_1
    const/4 v11, -0x1

    .line 7240
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 7242
    .end local v11           #grav:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 7243
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 7245
    .end local v11           #grav:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v24

    move/from16 v0, v24

    neg-int v11, v0

    .line 7246
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 7290
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v20       #vs:I
    .restart local v21       #vslack:I
    .restart local v22       #vspace:I
    :cond_f
    if-lez v11, :cond_11

    .line 7291
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_10

    .line 7292
    sub-int v12, v18, v14

    .line 7293
    :cond_10
    sub-int v24, v16, v12

    if-lez v24, :cond_a

    .line 7294
    move/from16 v12, v16

    goto/16 :goto_2

    .line 7296
    :cond_11
    sub-int v24, v18, v16

    move/from16 v0, v24

    if-gt v0, v14, :cond_12

    .line 7300
    sub-int v24, v18, v16

    sub-int v24, v14, v24

    div-int/lit8 v24, v24, 0x2

    sub-int v12, v16, v24

    goto/16 :goto_2

    .line 7301
    :cond_12
    sub-int v24, v18, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    .line 7306
    sub-int v12, v18, v14

    goto/16 :goto_2

    .line 7307
    :cond_13
    add-int v24, v16, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 7312
    move/from16 v12, v16

    goto/16 :goto_2

    .line 7313
    :cond_14
    move/from16 v0, v16

    if-le v0, v12, :cond_15

    .line 7317
    move/from16 v12, v16

    goto/16 :goto_2

    .line 7318
    :cond_15
    add-int v24, v12, v14

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 7322
    sub-int v12, v18, v14

    goto/16 :goto_2

    .line 7327
    :cond_16
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_17

    .line 7328
    sub-int v12, v23, v13

    .line 7330
    :cond_17
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 7331
    sub-int v24, v14, v13

    sub-int v12, v23, v24

    goto/16 :goto_2

    .line 7340
    :cond_18
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v26, v0

    sub-long v7, v24, v26

    .line 7341
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    sub-int v9, v12, v24

    .line 7342
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    sub-int v10, v20, v24

    .line 7344
    .local v10, dy:I
    const-wide/16 v24, 0xfa

    cmp-long v24, v7, v24

    if-lez v24, :cond_19

    .line 7345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 7346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->getDuration()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 7347
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 7356
    :goto_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_3

    .line 7349
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 7350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7353
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_4

    .line 7234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 9001
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 9002
    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 9003
    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 9004
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 8692
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 8693
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 8695
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 9186
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 9187
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 9191
    :goto_0
    return v0

    .line 9187
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 9191
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 7447
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 7448
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7449
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7450
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7451
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 7452
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 7455
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 9204
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 9196
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9197
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 9199
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public debug(I)V
    .locals 3
    .parameter "depth"

    .prologue
    .line 7491
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 7493
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7494
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7498
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 7500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7501
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 7502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7508
    :cond_0
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7509
    return-void

    .line 7506
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 13172
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 13173
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 8996
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method protected disableUpdateCursorPositionByExtras()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5294
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 5296
    .local v0, extrasBoundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 5300
    :goto_0
    return v1

    :cond_0
    const-string v2, "Fusion_update_cursor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8480
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 8481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8482
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 3010
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3011
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3014
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3017
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3018
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_9

    .line 3019
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 3020
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3021
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3023
    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3024
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3026
    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3027
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3029
    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3030
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3032
    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3033
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3035
    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3036
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3039
    .end local v1           #state:[I
    :cond_9
    return-void
.end method

.method public enableHtcTextSelection(ZI)V
    .locals 4
    .parameter "enable"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13355
    if-eqz p1, :cond_a

    .line 13356
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 13357
    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 13358
    iput-boolean v3, p0, Landroid/widget/TextView;->mIgnoreSetText:Z

    .line 13359
    iput v3, p0, Landroid/widget/TextView;->mFlags:I

    .line 13360
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 13361
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 13362
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13363
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_1

    .line 13364
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 13368
    :cond_1
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 13369
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13371
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 13372
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13374
    :cond_3
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_4

    .line 13375
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13383
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 13384
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-eqz v1, :cond_8

    .line 13386
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13387
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_7

    .line 13388
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_6

    .line 13389
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13391
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_7

    .line 13392
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13397
    :cond_7
    iput-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 13398
    iput-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 13400
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_8
    return-void

    .line 13366
    :cond_9
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    goto :goto_0

    .line 13377
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 13378
    iput-object v2, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 13379
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13380
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    instance-of v1, v1, Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v1, :cond_4

    .line 13381
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1
.end method

.method public enableHtcTextSelection(ZZ)V
    .locals 1
    .parameter "enable"
    .parameter "triggerByLongClick"

    .prologue
    .line 13407
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 13409
    return-void

    .line 13407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 6302
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 6303
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6304
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 6305
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6306
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 6307
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 6310
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 6313
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6314
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 6315
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6316
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 6318
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 5968
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v6, 0x0

    .line 5978
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 5979
    .local v1, content:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 5980
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 5981
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5982
    .local v0, N:I
    if-gez p2, :cond_4

    .line 5983
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5984
    const/4 p2, 0x0

    .line 5985
    move p3, v0

    .line 6018
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 6019
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 6030
    .end local v0           #N:I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 6031
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/16 v8, 0x800

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 6032
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 6034
    :cond_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_2

    .line 6035
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 6037
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 6038
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 6039
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 6040
    const/4 v6, 0x1

    .line 6042
    :cond_3
    return v6

    .line 5989
    .restart local v0       #N:I
    :cond_4
    add-int/2addr p3, p4

    .line 5991
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 5992
    check-cast v4, Landroid/text/Spanned;

    .line 5993
    .local v4, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 5995
    .local v5, spans:[Ljava/lang/Object;
    array-length v2, v5

    .line 5996
    .local v2, i:I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 5997
    add-int/lit8 v2, v2, -0x1

    .line 5998
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 5999
    .local v3, j:I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 6000
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 6001
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 6004
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6005
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6007
    if-le p2, v0, :cond_9

    .line 6008
    move p2, v0

    .line 6012
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 6013
    move p3, v0

    goto :goto_0

    .line 6009
    :cond_9
    if-gez p2, :cond_8

    .line 6010
    const/4 p2, 0x0

    goto :goto_3

    .line 6014
    :cond_a
    if-gez p3, :cond_0

    .line 6015
    const/4 p3, 0x0

    goto :goto_0

    .line 6022
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 6026
    .end local v0           #N:I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6027
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6028
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter
    .parameter "searched"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 9209
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 9210
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9212
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 9213
    .local v0, searchedLowerCase:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 9214
    .local v1, textLowerCase:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9215
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9218
    .end local v0           #searchedLowerCase:Ljava/lang/String;
    .end local v1           #textLowerCase:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 6321
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6323
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 6324
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6325
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 6330
    :cond_1
    :goto_0
    return-void

    .line 6326
    :cond_2
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 6328
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method public forceStartMarquee()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 13764
    iget-boolean v0, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-ne v0, v2, :cond_0

    .line 13767
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 13782
    :cond_0
    :goto_0
    return-void

    .line 13769
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13773
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13776
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 13778
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method public forceStopMarquee()V
    .locals 2

    .prologue
    .line 13786
    iget-boolean v0, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13788
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13789
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 13792
    :cond_0
    return-void
.end method

.method public getAnchorHeight()I
    .locals 1

    .prologue
    .line 11363
    iget v0, p0, Landroid/widget/TextView;->mAnchorHeight:I

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 2215
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    .line 5446
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 5447
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 5455
    :goto_0
    return v1

    .line 5450
    :cond_0
    const/4 v0, 0x0

    .line 5451
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 5452
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 5455
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 4730
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2190
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2136
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2137
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2138
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 2142
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2152
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2153
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2154
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 2158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1598
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1599
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    .line 1601
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1656
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1659
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    .line 1661
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 1656
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1611
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1612
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    .line 1614
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1623
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1624
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1625
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    .line 1627
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1639
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1642
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 1644
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    .line 1639
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1585
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1586
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    .line 1588
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 2458
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 10977
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1359
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1360
    :cond_0
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    .line 1363
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEasyUpHardDownOffset(FFI)I
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "previousOffset"

    .prologue
    .line 12885
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 12886
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_0

    const/4 v6, -0x1

    .line 12909
    :goto_0
    return v6

    .line 12888
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 12890
    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 12891
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 12892
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p2, v6

    .line 12894
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    float-to-int v7, p2

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 12896
    .local v2, line:I
    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 12897
    .local v3, previousLine:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 12898
    .local v5, previousLineTop:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 12899
    .local v4, previousLineBottom:I
    sub-int v6, v4, v5

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 12903
    .local v0, hysteresisThreshold:I
    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_2

    int-to-float v6, v4

    sub-float v6, p2, v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 12904
    move v2, v3

    .line 12909
    :cond_1
    :goto_1
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(IF)I

    move-result v6

    goto :goto_0

    .line 12905
    :cond_2
    if-lez v3, :cond_1

    if-ne v2, v3, :cond_1

    int-to-float v6, v5

    sub-float v6, p2, v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 12906
    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7662
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4087
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 1704
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 1705
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1727
    :cond_0
    :goto_0
    return v0

    .line 1708
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    .line 1709
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 1712
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1713
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1714
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1715
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1717
    .local v2, layoutht:I
    if-ge v2, v4, :cond_0

    .line 1721
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1722
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 1723
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    .line 1724
    :cond_3
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    .line 1727
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 1671
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 1672
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1694
    :cond_0
    :goto_0
    return v3

    .line 1675
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    .line 1676
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    .line 1679
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1680
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1681
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1682
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1684
    .local v2, layoutht:I
    if-ge v2, v4, :cond_0

    .line 1688
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1689
    .local v1, gravity:I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    .line 1691
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 1692
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    .line 1694
    :cond_3
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .parameter "offsetRequired"

    .prologue
    .line 5482
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .parameter "offsetRequired"

    .prologue
    .line 5464
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5473
    :goto_0
    return v1

    .line 5466
    :cond_0
    const/4 v0, 0x0

    .line 5467
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 5468
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 5471
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 5473
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 12
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    .line 5354
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v7, :cond_0

    .line 5355
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5404
    :goto_0
    return-void

    .line 5359
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 5360
    .local v5, selEnd:I
    if-gez v5, :cond_1

    .line 5361
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5365
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 5366
    .local v6, selStart:I
    if-ltz v6, :cond_2

    if-lt v6, v5, :cond_4

    .line 5367
    :cond_2
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 5368
    .local v0, line:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 5369
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5370
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x2

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5371
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 5398
    .end local v0           #line:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    .line 5399
    .local v3, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 5400
    .local v4, paddingTop:I
    iget v7, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x30

    if-eq v7, v8, :cond_3

    .line 5401
    invoke-direct {p0, v11}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    add-int/2addr v4, v7

    .line 5403
    :cond_3
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 5373
    .end local v3           #paddingLeft:I
    .end local v4           #paddingTop:I
    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5374
    .local v2, lineStart:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5375
    .local v1, lineEnd:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 5376
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5377
    if-ne v2, v1, :cond_5

    .line 5378
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5379
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5383
    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_6

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5384
    :cond_6
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_7

    .line 5385
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 5386
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v5, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5387
    iput-boolean v11, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5389
    :cond_7
    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v8

    .line 5390
    :try_start_0
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5391
    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5392
    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 5393
    monitor-exit v8

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 3257
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2693
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 3673
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2603
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    .line 2748
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 3902
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3891
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 3862
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .parameter "create"

    .prologue
    const/4 v0, 0x0

    .line 4070
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_2

    .line 4071
    if-nez p1, :cond_1

    .line 4078
    :cond_0
    :goto_0
    return-object v0

    .line 4072
    :cond_1
    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 4074
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 4075
    if-eqz p1, :cond_0

    .line 4076
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 4078
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 3837
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13026
    iget-boolean v2, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    .line 13037
    :goto_0
    return-object v1

    .line 13030
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 13031
    new-instance v2, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 13033
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13034
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13037
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    goto :goto_0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 9126
    iget v4, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v4, v4

    const v5, 0x40a95555

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 9151
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 9127
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v4, v7, :cond_3

    .line 9129
    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9130
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9131
    .local v2, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9132
    iget v3, v2, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 9136
    .end local v2           #marquee:Landroid/widget/TextView$Marquee;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 9137
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    .line 9138
    .local v1, layoutDirection:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9139
    .local v0, absoluteGravity:I
    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_0

    .line 9151
    .end local v0           #absoluteGravity:I
    .end local v1           #layoutDirection:I
    :cond_3
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v3

    goto :goto_0

    .line 9143
    .restart local v0       #absoluteGravity:I
    .restart local v1       #layoutDirection:I
    :pswitch_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    iget v4, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 9139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 4719
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v2, 0x0

    .line 5424
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 5425
    if-eqz p2, :cond_0

    .line 5426
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5440
    :cond_0
    :goto_0
    return v2

    .line 5431
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 5433
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 5434
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 5435
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5437
    :cond_2
    if-eqz p2, :cond_3

    .line 5438
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5440
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 5411
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2642
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 2535
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12844
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 12847
    :goto_0
    return v1

    .line 12845
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 12846
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 12847
    .local v1, offset:I
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .parameter "who"

    .prologue
    .line 4828
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 4837
    :goto_0
    return v1

    .line 4829
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 4830
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4831
    .local v0, drawables:Landroid/widget/TextView$Drawables;
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_2

    .line 4834
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    goto :goto_0

    .line 4837
    .end local v0           #drawables:Landroid/widget/TextView$Drawables;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 9156
    iget v6, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v7, 0x40a95555

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 9181
    :goto_0
    :pswitch_0
    return v5

    .line 9157
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    .line 9159
    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9160
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9161
    .local v3, marquee:Landroid/widget/TextView$Marquee;
    iget v5, v3, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v6, v3, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 9162
    .end local v3           #marquee:Landroid/widget/TextView$Marquee;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 9163
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    .line 9164
    .local v1, layoutDirection:I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9165
    .local v0, absoluteGravity:I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    .line 9181
    .end local v0           #absoluteGravity:I
    .end local v1           #layoutDirection:I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    .line 9167
    .restart local v0       #absoluteGravity:I
    .restart local v1       #layoutDirection:I
    :pswitch_2
    iget v5, p0, Landroid/widget/TextView;->mRight:I

    iget v6, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 9169
    .local v4, textWidth:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 9170
    .local v2, lineWidth:F
    int-to-float v5, v4

    sub-float v5, v2, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 9175
    .end local v2           #lineWidth:F
    .end local v4           #textWidth:I
    :pswitch_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 9165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 4735
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 13041
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 13042
    const/4 v1, 0x0

    .line 13052
    :goto_0
    return-object v1

    .line 13045
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 13046
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 13048
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13049
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13052
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7524
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7516
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public final getSoftInputShownOnFocus()Z
    .locals 1

    .prologue
    .line 2558
    iget-boolean v0, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 9526
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9527
    .local v0, locale:Ljava/util/Locale;
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 9529
    .local v2, textServicesManager:Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 9530
    .local v1, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 9531
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 9533
    .restart local v0       #locale:Ljava/util/Locale;
    :cond_0
    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 4725
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 1782
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    .line 1764
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    .line 1754
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 1773
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2569
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 2572
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 9545
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 9546
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9548
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8044
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8045
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 8046
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 8048
    :cond_1
    if-eqz v0, :cond_2

    .line 8049
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 8050
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_3

    .line 8051
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8052
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 8057
    :goto_0
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 8060
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 8061
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8062
    return-void

    .line 8054
    :cond_3
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8055
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 13015
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 7531
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7532
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7534
    .local v0, selectionEnd:I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 13022
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideControllers()V
    .locals 0

    .prologue
    .line 12815
    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 12816
    invoke-direct {p0}, Landroid/widget/TextView;->hideSpanControllers()V

    .line 12817
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5749
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    .line 5750
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5752
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .parameter "drawable"

    .prologue
    .line 4777
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4778
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4779
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/TextView;->mScrollX:I

    .line 4780
    .local v7, scrollX:I
    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    .line 4785
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4786
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_0

    .line 4787
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    .line 4788
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4789
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4790
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4792
    .local v9, vspace:I
    iget v10, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 4793
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4818
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4821
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    return-void

    .line 4794
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    .line 4795
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4796
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4797
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4799
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 4800
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4801
    goto :goto_0

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    .line 4802
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4803
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4804
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4806
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4807
    iget v10, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 4808
    goto :goto_0

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    .line 4809
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4810
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4811
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4813
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4814
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .parameter "start"
    .parameter "end"
    .parameter "invalidateCursor"

    .prologue
    .line 4503
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    .line 4504
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 4554
    :goto_0
    return-void

    .line 4506
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 4507
    .local v8, lineStart:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 4515
    .local v10, top:I
    if-lez v8, :cond_1

    .line 4516
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 4521
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 4522
    move v7, v8

    .line 4526
    .local v7, lineEnd:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 4528
    .local v2, bottom:I
    if-eqz p3, :cond_3

    .line 4529
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v5, v12, :cond_3

    .line 4530
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4531
    .local v3, bounds:Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4532
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4529
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4524
    .end local v2           #bottom:I
    .end local v3           #bounds:Landroid/graphics/Rect;
    .end local v5           #i:I
    .end local v7           #lineEnd:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7       #lineEnd:I
    goto :goto_1

    .line 4536
    .restart local v2       #bottom:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 4537
    .local v4, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 4540
    .local v11, verticalPadding:I
    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    .line 4541
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 4542
    .local v6, left:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 4543
    .local v9, right:I
    add-int/2addr v6, v4

    .line 4544
    add-int/2addr v9, v4

    .line 4551
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 4547
    .end local v6           #left:I
    .end local v9           #right:I
    :cond_4
    move v6, v4

    .line 4548
    .restart local v6       #left:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9       #right:I
    goto :goto_3
.end method

.method isInBatchEditMode()Z
    .locals 2

    .prologue
    .line 13056
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 13057
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_1

    .line 13058
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 13060
    :goto_0
    return v1

    .line 13058
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 13060
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 9662
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9663
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 4714
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionsEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 10929
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v4, 0xf

    if-eq v4, v2, :cond_1

    .line 10935
    :cond_0
    :goto_0
    return v3

    .line 10930
    :cond_1
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-gtz v4, :cond_0

    .line 10933
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    if-lez v4, :cond_3

    move v0, v2

    .line 10934
    .local v0, ps_flag:Z
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v4, 0xff0

    .line 10935
    .local v1, variation:I
    if-nez v0, :cond_2

    const/16 v4, 0x30

    if-eq v1, v4, :cond_2

    const/16 v4, 0x50

    if-eq v1, v4, :cond_2

    const/16 v4, 0x40

    if-eq v1, v4, :cond_2

    const/16 v4, 0xa0

    if-ne v1, v4, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0           #ps_flag:Z
    .end local v1           #variation:I
    :cond_3
    move v0, v3

    .line 10933
    goto :goto_1
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 4880
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 4752
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4753
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    .line 4754
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4755
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4757
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4758
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4760
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 4761
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4763
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 4764
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4766
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 4767
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4769
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 4770
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4773
    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32
    .parameter "wantWidth"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 6544
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 6547
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 6548
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 6550
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6552
    if-gez p1, :cond_0

    .line 6553
    const/16 p1, 0x0

    .line 6555
    :cond_0
    if-gez p2, :cond_1

    .line 6556
    const/16 p2, 0x0

    .line 6559
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 6560
    .local v6, alignment:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v2, :cond_b

    const/4 v7, 0x1

    .line 6561
    .local v7, shouldEllipsize:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_c

    const/16 v31, 0x1

    .line 6563
    .local v31, switchEllipsize:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6564
    .local v8, effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 6566
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 6569
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_3

    .line 6570
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    .line 6573
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_d

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6575
    if-eqz v31, :cond_4

    .line 6576
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_e

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6578
    .local v15, oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_f

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6582
    .end local v15           #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_10

    const/4 v7, 0x1

    .line 6583
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 6586
    if-eqz v7, :cond_5

    move/from16 p2, p1

    .line 6588
    :cond_5
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_6

    .line 6589
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 6591
    if-eqz p4, :cond_6

    .line 6592
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6596
    :cond_6
    if-eqz p4, :cond_17

    .line 6597
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_12

    if-eqz v7, :cond_7

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_12

    .line 6599
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_11

    .line 6600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6610
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6648
    :cond_8
    :goto_7
    if-eqz p6, :cond_9

    .line 6649
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6652
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_a

    .line 6653
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_a

    .line 6654
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    .line 6657
    .local v30, height:I
    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_1a

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_1a

    .line 6658
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6667
    .end local v30           #height:I
    :cond_a
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6668
    return-void

    .line 6560
    .end local v7           #shouldEllipsize:Z
    .end local v8           #effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    .end local v31           #switchEllipsize:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 6561
    .restart local v7       #shouldEllipsize:Z
    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 6573
    .restart local v8       #effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    .restart local v31       #switchEllipsize:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 6576
    :cond_e
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    .line 6578
    .restart local v15       #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 6582
    .end local v15           #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 6605
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_6

    .line 6611
    :cond_12
    if-eqz v7, :cond_14

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_14

    .line 6612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_13

    .line 6613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6619
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6624
    :cond_14
    if-eqz v7, :cond_16

    .line 6625
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_9
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_15
    const v29, 0x7fffffff

    goto :goto_9

    .line 6631
    :cond_16
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6635
    :cond_17
    if-eqz v7, :cond_19

    .line 6636
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_a
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_18
    const v29, 0x7fffffff

    goto :goto_a

    .line 6642
    :cond_19
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6661
    .restart local v30       #height:I
    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_8
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    .line 7392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 7393
    const/16 v17, 0x0

    .line 7442
    :goto_0
    return v17

    .line 7395
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 7396
    .local v12, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 7397
    .local v3, end:I
    if-eq v12, v3, :cond_1

    .line 7398
    const/16 v17, 0x0

    goto :goto_0

    .line 7403
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 7405
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 7406
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 7407
    .local v2, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 7408
    .local v16, vspace:I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 7409
    .local v15, vslack:I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 7410
    div-int/lit8 v15, v16, 0x4

    .line 7411
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .line 7413
    .local v14, vs:I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 7414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 7421
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 7422
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7423
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 7424
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 7427
    .local v11, rightChar:I
    if-ge v7, v11, :cond_6

    move v9, v7

    .line 7428
    .local v9, lowChar:I
    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    .line 7430
    .local v4, highChar:I
    :goto_3
    move v10, v12

    .line 7431
    .local v10, newStart:I
    if-ge v10, v9, :cond_8

    .line 7432
    move v10, v9

    .line 7437
    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    .line 7438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7439
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7415
    .end local v4           #highChar:I
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #lowChar:I
    .end local v10           #newStart:I
    .end local v11           #rightChar:I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    .line 7416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v11       #rightChar:I
    :cond_6
    move v9, v11

    .line 7427
    goto :goto_2

    .restart local v9       #lowChar:I
    :cond_7
    move v4, v11

    .line 7428
    goto :goto_3

    .line 7433
    .restart local v4       #highChar:I
    .restart local v10       #newStart:I
    :cond_8
    if-le v10, v4, :cond_4

    .line 7434
    move v10, v4

    goto :goto_4

    .line 7442
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4642
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4644
    iput-boolean v3, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 4646
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 4647
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 4648
    iput-boolean v3, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4651
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4654
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 4655
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4657
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 4658
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4662
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 4664
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    .line 4665
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 6355
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 5898
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 6167
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 6178
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 6179
    new-instance v0, Landroid/widget/TextView$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/TextView$CorrectionHighlighter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    .line 6184
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 6185
    return-void

    .line 6181
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x0

    .line 4941
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    .line 4942
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4948
    .local v0, drawableState:[I
    :goto_0
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v4, :cond_2

    .line 4953
    array-length v2, v0

    .line 4954
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 4955
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    .line 4956
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 4957
    .local v3, nonPressedState:[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4958
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4964
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #nonPressedState:[I
    :goto_2
    return-object v3

    .line 4944
    .end local v0           #drawableState:[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4945
    .restart local v0       #drawableState:[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 4954
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2
    move-object v3, v0

    .line 4964
    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 10
    .parameter "outAttrs"

    .prologue
    const/high16 v9, 0x4000

    const/high16 v8, 0x800

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5902
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5903
    iget-object v3, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v3, :cond_0

    .line 5904
    new-instance v3, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v3, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v3, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5906
    new-array v1, v4, [I

    .line 5907
    .local v1, posInWindow:[I
    new-array v2, v4, [I

    .line 5908
    .local v2, posOnScreen:[I
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 5909
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5910
    iget-object v3, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v3, v3, Landroid/widget/TextView$InputMethodState;->mOnScreenOffset:[I

    aget v4, v2, v6

    aget v5, v1, v6

    sub-int/2addr v4, v5

    aput v4, v3, v6

    .line 5911
    iget-object v3, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v3, v3, Landroid/widget/TextView$InputMethodState;->mOnScreenOffset:[I

    aget v4, v2, v7

    aget v5, v1, v7

    sub-int/2addr v4, v5

    aput v4, v3, v7

    .line 5914
    .end local v1           #posInWindow:[I
    .end local v2           #posOnScreen:[I
    :cond_0
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5915
    iget-object v3, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v3, :cond_5

    .line 5916
    iget-object v3, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v3, v3, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5917
    iget-object v3, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v3, v3, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 5918
    iget-object v3, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v3, v3, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 5919
    iget-object v3, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v3, v3, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 5920
    iget-object v3, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v3, v3, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 5924
    :goto_0
    const/16 v3, 0x82

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5925
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v8

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5927
    :cond_1
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5928
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x400

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5930
    :cond_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_3

    .line 5932
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_6

    .line 5935
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v3, v3, 0x5

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5941
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5942
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v9

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5945
    :cond_3
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v3}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5947
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v9

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5949
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 5950
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_7

    .line 5951
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 5952
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 5953
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 5954
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 5958
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v0

    .line 5922
    :cond_5
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 5939
    :cond_6
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v3, v3, 0x6

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 5958
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4669
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4671
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4672
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_0

    .line 4673
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4674
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4677
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 4678
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 4681
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_2

    .line 4682
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v2, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4685
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_3

    .line 4686
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 4689
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_4

    .line 4690
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 4693
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4695
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 4697
    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_5

    .line 4698
    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v1}, Landroid/widget/SpellChecker;->closeSession()V

    .line 4701
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 4705
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    if-eqz v1, :cond_6

    .line 4706
    iput-boolean v3, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 4707
    invoke-direct {p0, v3}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 4710
    :cond_6
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 12928
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 12948
    :goto_0
    return v1

    .line 12930
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v1

    goto :goto_0

    .line 12933
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move v1, v2

    .line 12934
    goto :goto_0

    .line 12937
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 12938
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v1, v2

    .line 12939
    goto :goto_0

    .line 12942
    .end local v0           #offset:I
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/TextView;->onDrop(Landroid/view/DragEvent;)V

    move v1, v2

    .line 12943
    goto :goto_0

    .line 12928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 52
    .parameter "canvas"

    .prologue
    .line 4969
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_0

    .line 4970
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    .line 4971
    .local v40, observer:Landroid/view/ViewTreeObserver;
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4972
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4975
    .end local v40           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v11, 0x40a95555

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_1

    .line 5282
    :goto_0
    return-void

    .line 4977
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4980
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4982
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    .line 4983
    .local v25, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v27

    .line 4984
    .local v27, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    .line 4985
    .local v26, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v24

    .line 4986
    .local v24, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v43, v0

    .line 4987
    .local v43, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v44, v0

    .line 4988
    .local v44, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v42, v0

    .line 4989
    .local v42, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v39, v0

    .line 4990
    .local v39, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v18, v0

    .line 4991
    .local v18, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v46, v0

    .line 4993
    .local v46, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v30, v0

    .line 4994
    .local v30, dr:Landroid/widget/TextView$Drawables;
    if-eqz v30, :cond_5

    .line 5000
    sub-int v6, v18, v46

    sub-int v6, v6, v24

    sub-int v49, v6, v27

    .line 5001
    .local v49, vspace:I
    sub-int v6, v42, v39

    sub-int v6, v6, v26

    sub-int v35, v6, v25

    .line 5005
    .local v35, hspace:I
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 5006
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5007
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v6, v6, v43

    int-to-float v6, v6

    add-int v11, v44, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v49, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5010
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5011
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5016
    :cond_2
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 5017
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5018
    add-int v6, v43, v42

    sub-int v6, v6, v39

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v6, v11

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v44, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v49, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5020
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5021
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5026
    :cond_3
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 5027
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5028
    add-int v6, v43, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v11, v11, v44

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5030
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5031
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5036
    :cond_4
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 5037
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5038
    add-int v6, v43, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v44, v18

    sub-int v11, v11, v46

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5041
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5042
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5046
    .end local v35           #hspace:I
    .end local v49           #vspace:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v23, v0

    .line 5048
    .local v23, color:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v6, :cond_6

    .line 5049
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5052
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    .line 5053
    .local v37, layout:Landroid/text/Layout;
    move/from16 v29, v23

    .line 5055
    .local v29, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 5056
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_7

    .line 5057
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v23, v0

    .line 5060
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    .line 5063
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5064
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_9

    .line 5066
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 5068
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v11

    iput-object v11, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 5070
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5075
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v33

    .line 5076
    .local v33, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v32

    .line 5078
    .local v32, extendedPaddingBottom:I
    add-int v6, v25, v43

    int-to-float v0, v6

    move/from16 v20, v0

    .line 5079
    .local v20, clipLeft:F
    add-int v6, v33, v44

    int-to-float v0, v6

    move/from16 v22, v0

    .line 5080
    .local v22, clipTop:F
    sub-int v6, v42, v39

    sub-int v6, v6, v26

    add-int v6, v6, v43

    int-to-float v0, v6

    move/from16 v21, v0

    .line 5081
    .local v21, clipRight:F
    sub-int v6, v18, v46

    sub-int v6, v6, v32

    add-int v6, v6, v44

    int-to-float v0, v6

    move/from16 v19, v0

    .line 5083
    .local v19, clipBottom:F
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_a

    .line 5084
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 5085
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 5087
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v22, v22, v6

    .line 5088
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 5091
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5093
    const/16 v48, 0x0

    .line 5094
    .local v48, voffsetText:I
    const/16 v47, 0x0

    .line 5099
    .local v47, voffsetCursor:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v6, v6, 0x70

    const/16 v11, 0x30

    if-eq v6, v11, :cond_b

    .line 5100
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v48

    .line 5101
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v47

    .line 5103
    :cond_b
    move/from16 v0, v25

    int-to-float v6, v0

    add-int v11, v33, v48

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5106
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v38

    .line 5107
    .local v38, layoutDirection:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v38

    invoke-static {v6, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v17

    .line 5108
    .local v17, absoluteGravity:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v11, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v11, 0x1

    if-eq v6, v11, :cond_d

    .line 5110
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_c

    and-int/lit8 v6, v17, 0x7

    const/4 v11, 0x3

    if-eq v6, v11, :cond_c

    .line 5112
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v6, v11

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5116
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5117
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5121
    :cond_d
    const/16 v34, 0x0

    .line 5122
    .local v34, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 5123
    .local v8, selEnd:I
    const/16 v31, 0x0

    .line 5131
    .local v31, drawCursor:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v6, :cond_12

    .line 5133
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 5134
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 5136
    if-ltz v7, :cond_12

    .line 5137
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_f

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5139
    :cond_f
    if-ne v7, v8, :cond_1d

    .line 5140
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/TextView;->mShowCursor:J

    sub-long/2addr v11, v13

    sget v6, Landroid/widget/TextView;->BLINK_BLACK:I

    sget v13, Landroid/widget/TextView;->BLINK_WHITE:I

    add-int/2addr v6, v13

    int-to-long v13, v6

    rem-long/2addr v11, v13

    sget v6, Landroid/widget/TextView;->BLINK_BLACK:I

    int-to-long v13, v6

    cmp-long v6, v11, v13

    if-gez v6, :cond_1c

    .line 5144
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_10

    .line 5145
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5146
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v11, v12}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5147
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorsPositions()V

    .line 5148
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5152
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5153
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_11

    .line 5154
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5157
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x4000

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 5162
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCursorCount:I

    if-lez v6, :cond_1b

    const/16 v31, 0x1

    .line 5164
    :goto_1
    const/4 v6, 0x1

    sput-boolean v6, Landroid/widget/TextView;->mCurBlinkBlack:Z

    .line 5198
    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v36, v0

    .line 5199
    .local v36, ims:Landroid/widget/TextView$InputMethodState;
    sub-int v28, v47, v48

    .line 5200
    .local v28, cursorOffsetVertical:I
    if-eqz v36, :cond_17

    move-object/from16 v0, v36

    iget v6, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_17

    .line 5201
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 5202
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_17

    .line 5203
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5204
    const/16 v41, 0x0

    .line 5205
    .local v41, reported:Z
    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_13

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_14

    .line 5209
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v41

    .line 5211
    :cond_14
    if-nez v41, :cond_16

    if-eqz v34, :cond_16

    .line 5212
    const/4 v9, -0x1

    .line 5213
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 5214
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_15

    .line 5215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v45, v0

    check-cast v45, Landroid/text/Spannable;

    .line 5216
    .local v45, sp:Landroid/text/Spannable;
    invoke-static/range {v45 .. v45}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 5217
    invoke-static/range {v45 .. v45}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v45           #sp:Landroid/text/Spannable;
    :cond_15
    move-object/from16 v6, p0

    .line 5219
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 5225
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v41           #reported:Z
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz v34, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->disableUpdateCursorPositionByExtras()Z

    move-result v6

    if-nez v6, :cond_17

    .line 5226
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5227
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    aput v14, v6, v11

    .line 5229
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5230
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5231
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mOnScreenOffset:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    int-to-float v11, v11

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mOnScreenOffset:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5232
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, v28

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5234
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v36

    iget-object v13, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v36

    iget-object v14, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v50, 0x3fe0

    add-double v14, v14, v50

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 5239
    :try_start_0
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5249
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-eqz v6, :cond_18

    .line 5250
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 5253
    :cond_18
    if-eqz v31, :cond_19

    .line 5254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 5257
    const/16 v34, 0x0

    .line 5261
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 5262
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mTextSelectedColor:I

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 5263
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5267
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 5268
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5270
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5280
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 5162
    .end local v28           #cursorOffsetVertical:I
    .end local v36           #ims:Landroid/widget/TextView$InputMethodState;
    :cond_1b
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 5166
    :cond_1c
    const/4 v6, 0x0

    sput-boolean v6, Landroid/widget/TextView;->mCurBlinkBlack:Z

    goto/16 :goto_2

    .line 5167
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5168
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_1e

    .line 5169
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5170
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5171
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5175
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5176
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_1f

    .line 5177
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5180
    :cond_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    goto/16 :goto_2

    .line 5242
    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v28       #cursorOffsetVertical:I
    .restart local v36       #ims:Landroid/widget/TextView$InputMethodState;
    :catch_0
    move-exception v6

    goto/16 :goto_3
.end method

.method public onEditorAction(I)V
    .locals 21
    .parameter "actionCode"

    .prologue
    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v18, v0

    .line 3943
    .local v18, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v18, :cond_4

    .line 3944
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    .line 3945
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4001
    :cond_0
    :goto_0
    return-void

    .line 3956
    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 3957
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 3958
    .local v20, v:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 3959
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3960
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3966
    .end local v20           #v:Landroid/view/View;
    :cond_2
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 3967
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 3968
    .restart local v20       #v:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 3969
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3970
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3976
    .end local v20           #v:Landroid/view/View;
    :cond_3
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 3977
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 3978
    .local v19, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3979
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 3985
    .end local v19           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 3986
    .local v17, h:Landroid/os/Handler;
    if-eqz v17, :cond_0

    .line 3987
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3988
    .local v3, eventTime:J
    const/16 v14, 0x3f3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3994
    const/16 v2, 0x3f3

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 6363
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8500
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 8503
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8504
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8508
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 8510
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8630
    :goto_0
    return-void

    .line 8514
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 8516
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 8518
    if-eqz p1, :cond_f

    .line 8519
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 8520
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 8524
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_d

    if-nez v9, :cond_d

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_d

    move v6, v1

    .line 8526
    .local v6, isFocusHighlighted:Z
    :goto_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v6, :cond_e

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 8528
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_1

    if-ltz v9, :cond_1

    if-gez v8, :cond_7

    .line 8531
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 8532
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_2

    .line 8533
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8536
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    .line 8537
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v3, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 8545
    :cond_3
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_5

    :cond_4
    if-ltz v9, :cond_5

    if-ltz v8, :cond_5

    .line 8556
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8559
    :cond_5
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_6

    .line 8560
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    .line 8563
    :cond_6
    iput-boolean v1, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 8566
    .end local v7           #lastTapPosition:I
    :cond_7
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 8567
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8569
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8

    .line 8570
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 8571
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8574
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->resetMetaStatus()V

    .line 8576
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlinkandHook()V

    .line 8578
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 8579
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 8583
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8584
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8585
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 8586
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 8588
    :cond_a
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8623
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8625
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_c

    .line 8626
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 8629
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_d
    move v6, v2

    .line 8524
    goto/16 :goto_1

    .restart local v6       #isFocusHighlighted:Z
    :cond_e
    move v0, v2

    .line 8526
    goto/16 :goto_2

    .line 8591
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_f
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    .line 8592
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 8595
    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 8597
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_12

    .line 8600
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 8601
    .restart local v9       #selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 8602
    .restart local v8       #selEnd:I
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8604
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8605
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8606
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 8607
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 8609
    :cond_11
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8611
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8618
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :goto_4
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_b

    .line 8619
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_3

    .line 8613
    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8614
    invoke-direct {p0}, Landroid/widget/TextView;->downgradeEasyCorrectionSpans()V

    goto :goto_4
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 8929
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8931
    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 8932
    const/4 v0, 0x1

    .line 8940
    :goto_0
    return v0

    .line 8934
    :catch_0
    move-exception v0

    .line 8940
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 9598
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9600
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9601
    .local v0, isPassword:Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9603
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 9604
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9605
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 9606
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9608
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 9612
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9614
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9615
    .local v0, isPassword:Z
    if-nez v0, :cond_0

    .line 9616
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 9618
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 9619
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5516
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 5517
    .local v0, which:I
    if-nez v0, :cond_0

    .line 5519
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 5522
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 5527
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5529
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 5530
    .local v2, which:I
    if-nez v2, :cond_0

    .line 5532
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 5563
    :goto_0
    return v3

    .line 5534
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    .line 5536
    goto :goto_0

    .line 5539
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 5546
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5547
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_4

    .line 5548
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 5549
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 5550
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 5551
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 5553
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    .line 5563
    goto :goto_0

    .line 5555
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5556
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 5557
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 5558
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 5559
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 5487
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 5488
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move v0, v2

    .line 5490
    .local v0, isInSelectionMode:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 5491
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 5492
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 5493
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 5494
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5511
    .end local v0           #isInSelectionMode:Z
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_1
    return v2

    .line 5488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5497
    .restart local v0       #isInSelectionMode:Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 5498
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 5499
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_3

    .line 5500
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 5502
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5503
    if-eqz v0, :cond_4

    .line 5504
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_1

    .line 5511
    .end local v0           #isInSelectionMode:Z
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 9271
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 9272
    .local v0, filteredMetaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9273
    sparse-switch p1, :sswitch_data_0

    .line 9296
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 9275
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9276
    const v1, 0x102001f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9280
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9281
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9285
    :sswitch_2
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9286
    const v1, 0x1020021

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9290
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9291
    const v1, 0x1020022

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9273
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5756
    const/4 v1, 0x0

    .line 5758
    .local v1, bDefOnClickListenerExist:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5759
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 5894
    :goto_0
    return v5

    .line 5762
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5881
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_a

    .line 5885
    iget-object v7, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5886
    .local v2, h:Z
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    .line 5887
    if-eqz v2, :cond_a

    move v5, v6

    goto :goto_0

    .line 5764
    .end local v2           #h:Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5782
    instance-of v5, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_3

    move-object v0, p0

    .line 5783
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 5784
    .local v0, atv:Landroid/widget/AutoCompleteTextView;
    iget-object v5, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->hasWrap()Z

    move-result v1

    .line 5790
    .end local v0           #atv:Landroid/widget/AutoCompleteTextView;
    :goto_1
    if-nez v1, :cond_2

    .line 5794
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5796
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 5797
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 5798
    if-eqz v3, :cond_2

    iget-boolean v5, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v5, :cond_2

    .line 5799
    invoke-virtual {v3, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5804
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 5787
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v1

    goto :goto_1

    .line 5807
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5808
    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v5, v5, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v5, v5, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v5, :cond_4

    .line 5811
    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v7, v5, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 5812
    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v5, v5, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    .line 5814
    goto/16 :goto_0

    .line 5818
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5837
    :cond_5
    instance-of v5, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_6

    move-object v0, p0

    .line 5838
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 5839
    .restart local v0       #atv:Landroid/widget/AutoCompleteTextView;
    iget-object v5, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->hasWrap()Z

    move-result v1

    .line 5845
    .end local v0           #atv:Landroid/widget/AutoCompleteTextView;
    :goto_2
    if-nez v1, :cond_9

    .line 5849
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 5851
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_8

    .line 5852
    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 5853
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5842
    .end local v4           #v:Landroid/view/View;
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v1

    goto :goto_2

    .line 5863
    .restart local v4       #v:Landroid/view/View;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    .line 5864
    goto/16 :goto_0

    .line 5865
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_9

    .line 5869
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 5870
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_9

    invoke-virtual {v3, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5871
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5876
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #v:Landroid/view/View;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 5890
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_b

    .line 5891
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    .line 5892
    goto/16 :goto_0

    .line 5894
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 5762
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 9538
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9539
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 6806
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 6807
    .local v25, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 6808
    .local v15, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 6809
    .local v26, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 6814
    .local v16, heightSize:I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6815
    .local v5, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6817
    .local v6, hintBoring:Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    .line 6818
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    .line 6821
    :cond_0
    const/4 v9, -0x1

    .line 6822
    .local v9, des:I
    const/4 v13, 0x0

    .line 6824
    .local v13, fromexisting:Z
    const/high16 v2, 0x4000

    move/from16 v0, v25

    if-ne v0, v2, :cond_7

    .line 6826
    move/from16 v23, v26

    .line 6910
    .local v23, width:I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 6911
    .local v3, want:I
    move/from16 v22, v3

    .line 6913
    .local v22, unpaddedWidth:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x10

    .line 6915
    :cond_2
    move v4, v3

    .line 6916
    .local v4, hintWant:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_17

    move/from16 v18, v4

    .line 6918
    .local v18, hintWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    .line 6919
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6946
    :cond_3
    :goto_2
    const/high16 v2, 0x4000

    if-ne v15, v2, :cond_21

    .line 6948
    move/from16 v14, v16

    .line 6949
    .local v14, height:I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 6965
    :cond_4
    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v21, v2, v7

    .line 6966
    .local v21, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    .line 6967
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 6974
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v22

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v21

    if-le v2, v0, :cond_22

    .line 6977
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6986
    .end local v21           #unpaddedHeight:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 6987
    return-void

    .line 6828
    .end local v3           #want:I
    .end local v4           #hintWant:I
    .end local v14           #height:I
    .end local v18           #hintWidth:I
    .end local v22           #unpaddedWidth:I
    .end local v23           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_8

    .line 6829
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    .line 6832
    :cond_8
    if-gez v9, :cond_12

    .line 6833
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 6834
    if-eqz v5, :cond_9

    .line 6835
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6841
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_13

    .line 6842
    :cond_a
    if-gez v9, :cond_b

    .line 6843
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    .line 6846
    :cond_b
    move/from16 v23, v9

    .line 6851
    .restart local v23       #width:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 6852
    .local v11, dr:Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_c

    .line 6853
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6854
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6857
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_11

    .line 6858
    const/16 v17, -0x1

    .line 6861
    .local v17, hintDes:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_d

    .line 6862
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    .line 6865
    :cond_d
    if-gez v17, :cond_e

    .line 6866
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v7, v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 6867
    if-eqz v6, :cond_e

    .line 6868
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6872
    :cond_e
    if-eqz v6, :cond_f

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_14

    .line 6873
    :cond_f
    if-gez v17, :cond_10

    .line 6874
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 6878
    :cond_10
    move/from16 v18, v17

    .line 6883
    .restart local v18       #hintWidth:I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 6884
    move/from16 v23, v18

    .line 6888
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v23, v23, v2

    .line 6890
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_15

    .line 6891
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 6896
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    .line 6897
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6903
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6905
    const/high16 v2, -0x8000

    move/from16 v0, v25

    if-ne v0, v2, :cond_1

    .line 6906
    move/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto/16 :goto_0

    .line 6838
    .end local v11           #dr:Landroid/widget/TextView$Drawables;
    .end local v23           #width:I
    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 6848
    :cond_13
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v23, v0

    .restart local v23       #width:I
    goto/16 :goto_6

    .line 6880
    .restart local v11       #dr:Landroid/widget/TextView$Drawables;
    .restart local v17       #hintDes:I
    :cond_14
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18       #hintWidth:I
    goto :goto_7

    .line 6893
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto :goto_8

    .line 6899
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_9

    .line 6916
    .end local v11           #dr:Landroid/widget/TextView$Drawables;
    .restart local v3       #want:I
    .restart local v4       #hintWant:I
    .restart local v22       #unpaddedWidth:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v18

    goto/16 :goto_1

    .line 6922
    .restart local v18       #hintWidth:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_19

    move/from16 v0, v18

    if-ne v0, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v23, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1d

    :cond_19
    const/16 v19, 0x1

    .line 6927
    .local v19, layoutChanged:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1a

    if-eqz v13, :cond_1e

    if-ltz v9, :cond_1e

    if-gt v9, v3, :cond_1e

    :cond_1a
    const/16 v24, 0x1

    .line 6932
    .local v24, widthChanged:Z
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_1f

    :cond_1b
    const/16 v20, 0x1

    .line 6934
    .local v20, maximumChanged:Z
    :goto_c
    if-nez v19, :cond_1c

    if-eqz v20, :cond_3

    .line 6935
    :cond_1c
    if-nez v20, :cond_20

    if-eqz v24, :cond_20

    .line 6936
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 6922
    .end local v19           #layoutChanged:Z
    .end local v20           #maximumChanged:Z
    .end local v24           #widthChanged:Z
    :cond_1d
    const/16 v19, 0x0

    goto :goto_a

    .line 6927
    .restart local v19       #layoutChanged:Z
    :cond_1e
    const/16 v24, 0x0

    goto :goto_b

    .line 6932
    .restart local v24       #widthChanged:Z
    :cond_1f
    const/16 v20, 0x0

    goto :goto_c

    .line 6938
    .restart local v20       #maximumChanged:Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .line 6951
    .end local v19           #layoutChanged:Z
    .end local v20           #maximumChanged:Z
    .end local v24           #widthChanged:Z
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .line 6953
    .local v10, desired:I
    move v14, v10

    .line 6954
    .restart local v14       #height:I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 6956
    const/high16 v2, -0x8000

    if-ne v15, v2, :cond_4

    .line 6957
    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_3

    .line 6979
    .end local v10           #desired:I
    .restart local v21       #unpaddedHeight:I
    :cond_22
    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 6982
    .end local v21           #unpaddedHeight:I
    :catch_0
    move-exception v12

    .line 6983
    .local v12, e:Ljava/lang/NullPointerException;
    const-string v2, "TextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLayout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mText="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 9585
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9587
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9588
    .local v0, isPassword:Z
    if-nez v0, :cond_0

    .line 9589
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9590
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9591
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9594
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4573
    iget v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v4, v2, :cond_1

    .line 4637
    :cond_0
    :goto_0
    return v2

    .line 4577
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_2

    .line 4578
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4581
    :cond_2
    const/4 v0, 0x0

    .line 4583
    .local v0, changed:Z
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_8

    .line 4588
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4590
    .local v1, curs:I
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4592
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4600
    :cond_3
    if-gez v1, :cond_4

    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x50

    if-ne v4, v5, :cond_4

    .line 4602
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4614
    :cond_4
    if-ltz v1, :cond_5

    .line 4615
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 4624
    .end local v1           #curs:I
    :cond_5
    :goto_1
    iget-boolean v4, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-eqz v4, :cond_6

    .line 4625
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 4626
    iput-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 4632
    :cond_6
    instance-of v4, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4633
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 4636
    :cond_7
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4637
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 4618
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 23
    .parameter "action"
    .parameter "data"

    .prologue
    .line 6377
    const-string v4, "com.htc.android.htcime.adjustMetaState"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6378
    if-eqz p2, :cond_0

    .line 6379
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 6382
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    .line 6383
    const/4 v4, 0x1

    .line 6416
    :goto_1
    return v4

    .line 6381
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    goto :goto_0

    .line 6384
    :cond_1
    const-string v4, "com.htc.android.htcime.touchPoint"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6385
    if-eqz p2, :cond_4

    .line 6386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6387
    .local v2, now:J
    const-string v4, "POINT_X"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v21

    .line 6388
    .local v21, x:F
    const-string v4, "POINT_Y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v22

    .line 6389
    .local v22, y:F
    const-string v4, "MOTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 6390
    .local v6, motion:I
    const-string v4, "LONG_PRESS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 6391
    .local v18, bLongClick:Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getOwnerViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 6393
    .local v20, root:Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_3

    .line 6394
    if-eqz v18, :cond_2

    .line 6395
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->performLongClick()Z

    .line 6409
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 6397
    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 6398
    .local v8, pp:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 6400
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 6401
    .local v9, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, v21

    iput v0, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 6402
    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, v22

    iput v0, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 6403
    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 6404
    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 6406
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 6407
    .local v19, evt:Landroid/view/MotionEvent;
    const/16 v4, 0x3ee

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v10, v11}, Landroid/view/ViewRootImpl;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_2

    .line 6412
    .end local v8           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v9           #pc:[Landroid/view/MotionEvent$PointerCoords;
    .end local v19           #evt:Landroid/view/MotionEvent;
    :cond_3
    const-string v4, "TextView"

    const-string v5, "onPrivateIMECommand, rootView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6416
    .end local v2           #now:J
    .end local v6           #motion:I
    .end local v18           #bLongClick:Z
    .end local v20           #root:Landroid/view/ViewRootImpl;
    .end local v21           #x:F
    .end local v22           #y:F
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 3181
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    .line 3182
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3228
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 3186
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 3187
    .local v3, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3190
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 3191
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3194
    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    .line 3195
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    .line 3196
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3198
    .local v1, len:I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_6

    .line 3199
    :cond_3
    const-string v2, ""

    .line 3201
    .local v2, restored:Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 3202
    const-string v2, "(restored) "

    .line 3205
    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    .end local v1           #len:I
    .end local v2           #restored:Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 3220
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 3222
    .local v0, error:Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3209
    .end local v0           #error:Ljava/lang/CharSequence;
    .restart local v1       #len:I
    :cond_6
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3212
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    .line 3213
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 3110
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 3113
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 3114
    .local v5, save:Z
    const/4 v8, 0x0

    .line 3115
    .local v8, start:I
    const/4 v2, 0x0

    .line 3117
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    .line 3118
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 3119
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3120
    if-gez v8, :cond_0

    if-ltz v2, :cond_1

    .line 3122
    :cond_0
    const/4 v5, 0x1

    .line 3126
    :cond_1
    if-eqz v5, :cond_5

    .line 3127
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3129
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 3130
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 3132
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_4

    .line 3141
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3143
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 3144
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3147
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 3148
    iget-object v10, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v6, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3150
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 3155
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ltz v8, :cond_3

    if-ltz v2, :cond_3

    .line 3156
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 3159
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 3164
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_2
    return-object v7

    .line 3152
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_5
    move-object v7, v9

    .line 3164
    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"
    .parameter "oldHoriz"
    .parameter "oldVert"

    .prologue
    .line 10270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10271
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-eqz v0, :cond_0

    .line 10272
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->onScrollChanged()V

    .line 10274
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 7934
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 7935
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 4844
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 4845
    iput p1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4846
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4847
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_5

    .line 4848
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4849
    :cond_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4850
    :cond_1
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4851
    :cond_2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4852
    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4853
    :cond_4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4855
    :cond_5
    const/4 v1, 0x1

    .line 4859
    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    :goto_0
    return v1

    .line 4858
    :cond_6
    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4859
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 8486
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 8489
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8494
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 8495
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8496
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .line 7924
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14
    .parameter "id"

    .prologue
    .line 9696
    const/4 v4, 0x0

    .line 9697
    .local v4, min:I
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9700
    .local v3, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v11

    if-nez v11, :cond_0

    iget-boolean v11, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v11, :cond_1

    .line 9702
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 9703
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 9705
    .local v5, selEnd:I
    const/4 v11, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9706
    const/4 v11, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9709
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 9820
    const/4 v11, 0x0

    :goto_0
    return v11

    .line 9711
    :sswitch_0
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v11, v4, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 9712
    .local v10, urls:[Landroid/text/style/URLSpan;
    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_4

    .line 9713
    const/4 v0, 0x0

    .line 9714
    .local v0, clip:Landroid/content/ClipData;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 9715
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 9716
    .local v9, uri:Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 9717
    const/4 v11, 0x0

    invoke-static {v11, v9}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 9714
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9719
    :cond_2
    new-instance v11, Landroid/content/ClipData$Item;

    invoke-direct {v11, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v11}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 9722
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v0, :cond_4

    .line 9723
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9726
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v2           #i:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9727
    const/4 v11, 0x1

    goto :goto_0

    .line 9731
    .end local v10           #urls:[Landroid/text/style/URLSpan;
    :sswitch_1
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_5

    .line 9733
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    .line 9735
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 9739
    :goto_3
    const/4 v11, 0x1

    goto :goto_0

    .line 9737
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_3

    .line 9743
    :sswitch_2
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_6

    .line 9745
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    .line 9749
    :goto_4
    const/4 v11, 0x1

    goto :goto_0

    .line 9747
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_4

    .line 9754
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    .line 9756
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v11, :cond_7

    iget v11, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7

    .line 9757
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 9759
    :cond_7
    const/4 v11, 0x1

    goto :goto_0

    .line 9762
    :sswitch_4
    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->paste(II)V

    .line 9763
    const/4 v11, 0x1

    goto :goto_0

    .line 9768
    :sswitch_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9771
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9772
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9773
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 9778
    :sswitch_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9781
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9782
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 9786
    :sswitch_7
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9787
    .local v7, str:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9788
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 9790
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9792
    .local v2, i:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9793
    const-string v11, "new_search"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9794
    const-string v11, "query"

    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9796
    :try_start_0
    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9802
    .end local v2           #i:Landroid/content/Intent;
    :cond_8
    :goto_5
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 9797
    .restart local v2       #i:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 9798
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "HtcTextSelection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 9805
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #i:Landroid/content/Intent;
    .end local v7           #str:Ljava/lang/String;
    :sswitch_8
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9806
    .local v8, strContent:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9808
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.htc.app.SHARE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9809
    .restart local v2       #i:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9810
    const-string v11, "SHARED_CONTENT"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9811
    const-string v11, "ORIGINAL_URL"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9812
    const-string v11, "LONG_URL"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9813
    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 9817
    .end local v2           #i:Landroid/content/Intent;
    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 9814
    :catch_1
    move-exception v1

    .line 9815
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 9709
    nop

    :sswitch_data_0
    .sparse-switch
        0x54d -> :sswitch_7
        0x54e -> :sswitch_8
        0x102001f -> :sswitch_3
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_6
        0x1020022 -> :sswitch_4
        0x1020023 -> :sswitch_0
        0x1020028 -> :sswitch_1
        0x102002d -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "event"

    .prologue
    .line 8714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 8716
    .local v4, action:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 8717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8720
    :cond_0
    if-nez v4, :cond_1

    .line 8721
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastDownPositionX:F

    .line 8722
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastDownPositionY:F

    .line 8726
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 8727
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 8729
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 8730
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 8734
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 8741
    .local v17, superResult:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    .line 8743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 8744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 8746
    const/4 v7, 0x0

    .line 8747
    .local v7, composingToSelection:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 8748
    const/4 v6, -0x1

    .line 8749
    .local v6, candStart:I
    const/4 v5, -0x1

    .line 8750
    .local v5, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    check-cast v16, Landroid/text/Spannable;

    .line 8751
    .local v16, sp:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    .line 8752
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 8753
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_2

    .line 8754
    move-object/from16 v0, v16

    invoke-static {v0, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8755
    const/4 v7, 0x1

    .line 8759
    .end local v5           #candEnd:I
    .end local v6           #candStart:I
    .end local v16           #sp:Landroid/text/Spannable;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v19

    if-nez v19, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    .line 8760
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 8762
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 8763
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 8768
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 8769
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 8770
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 8771
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 8773
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 8776
    .end local v7           #composingToSelection:Z
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 8877
    .end local v17           #superResult:Z
    :cond_8
    :goto_0
    return v17

    .line 8780
    .restart local v17       #superResult:Z
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->shouldIgnoreActionUpEvent()Z

    move-result v19

    if-nez v19, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v18, 0x1

    .line 8784
    .local v18, touchIsFinished:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isMessageLink:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_a

    .line 8787
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 8790
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 8792
    const/4 v8, 0x0

    .line 8795
    .local v8, handled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    .line 8796
    .local v13, oldSelStart:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    .line 8799
    .local v12, oldSelEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 8801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v8, v8, v19

    .line 8804
    :cond_c
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 8808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v21

    const-class v22, Landroid/text/style/ClickableSpan;

    invoke-interface/range {v19 .. v22}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 8811
    .local v10, links:[Landroid/text/style/ClickableSpan;
    array-length v0, v10

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 8812
    const/16 v19, 0x0

    aget-object v19, v10, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 8813
    const/4 v8, 0x1

    .line 8817
    .end local v10           #links:[Landroid/text/style/ClickableSpan;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 8818
    if-eqz v18, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v19

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    .line 8820
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 8821
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 8823
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 8825
    if-eqz v9, :cond_14

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v19, 0x1

    :goto_2
    or-int v8, v8, v19

    .line 8828
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v19

    if-eqz v19, :cond_15

    const/4 v14, 0x1

    .line 8829
    .local v14, selectAllGotFocus:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8830
    if-nez v14, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_17

    .line 8831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 8833
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 8835
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v19

    if-nez v19, :cond_11

    .line 8836
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorInsideEasyCorrectionSpan()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 8837
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->showSuggestions()V

    .line 8846
    :cond_11
    :goto_4
    const/4 v8, 0x1

    .line 8872
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #selectAllGotFocus:Z
    :cond_12
    :goto_5
    if-eqz v8, :cond_8

    .line 8873
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 8780
    .end local v8           #handled:Z
    .end local v12           #oldSelEnd:I
    .end local v13           #oldSelStart:I
    .end local v18           #touchIsFinished:Z
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 8825
    .restart local v8       #handled:Z
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v12       #oldSelEnd:I
    .restart local v13       #oldSelStart:I
    .restart local v18       #touchIsFinished:Z
    :cond_14
    const/16 v19, 0x0

    goto :goto_2

    .line 8828
    :cond_15
    const/4 v14, 0x0

    goto :goto_3

    .line 8838
    .restart local v14       #selectAllGotFocus:Z
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 8839
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    goto :goto_4

    .line 8843
    :cond_17
    if-nez v14, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 8844
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v19

    #calls: Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView$InsertionPointCursorController;->access$2100(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$InsertionHandleView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithoutInsertionHandle()V

    goto :goto_4

    .line 8850
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #selectAllGotFocus:Z
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_1b

    if-ltz v13, :cond_1b

    if-eq v13, v12, :cond_1b

    .line 8853
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 8854
    .local v15, smcc:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v11

    .line 8855
    .local v11, offset:I
    if-lt v11, v13, :cond_1a

    if-ge v11, v12, :cond_1a

    .line 8856
    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v19

    if-nez v19, :cond_19

    .line 8858
    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 8859
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_5

    .line 8861
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_5

    .line 8863
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_5

    .line 8865
    .end local v11           #offset:I
    .end local v15           #smcc:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_12

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v4, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    .line 8868
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_5
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 9019
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9021
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9022
    const/4 v0, 0x1

    .line 9026
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 8680
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8681
    if-eqz p2, :cond_0

    .line 8682
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8684
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 8652
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 8654
    if-eqz p1, :cond_1

    .line 8655
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 8656
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 8657
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlinkandHook()V

    .line 8675
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8676
    return-void

    .line 8660
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2

    .line 8661
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 8664
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 8665
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_3

    .line 8666
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 8669
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8670
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    .line 8671
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->onParentLostFocus()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v5, 0x0

    .line 9919
    const/4 v8, 0x0

    .line 9920
    .local v8, handled:Z
    const/4 v13, 0x1

    .line 9922
    .local v13, vibrate:Z
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9923
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 9924
    const/4 v8, 0x1

    .line 9933
    :cond_0
    if-nez v8, :cond_e

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_e

    .line 9934
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 9935
    .local v4, hasClipData:Z
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_a

    .line 9936
    if-eqz v4, :cond_2

    .line 9942
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9943
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 9944
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopupDelay()V

    .line 9946
    :cond_2
    const/4 v8, 0x1

    .line 9947
    const/4 v13, 0x0

    .line 9948
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 9987
    .end local v4           #hasClipData:Z
    :cond_3
    :goto_0
    if-nez v8, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_5

    .line 9988
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->touchPositionIsInSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_f

    .line 9991
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 9992
    .local v12, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 9993
    .local v7, end:I
    invoke-direct {p0, v12, v7}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 9994
    .local v11, selectedText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    invoke-static {v0, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    .line 9995
    .local v6, data:Landroid/content/ClipData;
    new-instance v9, Landroid/widget/TextView$DragLocalState;

    invoke-direct {v9, p0, v12, v7}, Landroid/widget/TextView$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 9996
    .local v9, localState:Landroid/widget/TextView$DragLocalState;
    invoke-direct {p0, v11}, Landroid/widget/TextView;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v9, v5}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 9997
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9998
    const/4 v8, 0x1

    .line 10014
    .end local v6           #data:Landroid/content/ClipData;
    .end local v7           #end:I
    .end local v9           #localState:Landroid/widget/TextView$DragLocalState;
    .end local v11           #selectedText:Ljava/lang/CharSequence;
    .end local v12           #start:I
    :cond_5
    :goto_1
    if-nez v8, :cond_12

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v0, :cond_12

    .line 10025
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10026
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 10028
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 10030
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 10031
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10033
    invoke-direct {p0, v14}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 10034
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 10035
    iput-boolean v14, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 10036
    const/4 v8, 0x1

    .line 10037
    const/4 v13, 0x0

    .line 10064
    :cond_7
    :goto_2
    if-eqz v13, :cond_8

    .line 10065
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 10068
    :cond_8
    if-eqz v8, :cond_9

    .line 10069
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 10072
    :cond_9
    return v8

    .line 9949
    .restart local v4       #hasClipData:Z
    :cond_a
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 9950
    if-eqz v4, :cond_d

    .line 9956
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_b

    .line 9957
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 9958
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V

    .line 9959
    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    .line 9960
    iget-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 9961
    new-instance v0, Landroid/widget/TextView$4;

    invoke-direct {v0, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    .line 9968
    :cond_c
    iget-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9970
    :cond_d
    const/4 v8, 0x1

    .line 9971
    const/4 v13, 0x0

    .line 9972
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    goto/16 :goto_0

    .line 9977
    .end local v4           #hasClipData:Z
    :cond_e
    if-nez v8, :cond_3

    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->isPositionOnText(FF)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9979
    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    .line 9980
    .local v10, offset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9981
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9982
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopup()V

    .line 9983
    const/4 v8, 0x1

    .line 9984
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 10002
    .end local v10           #offset:I
    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 10003
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 10005
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 10006
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    .line 10007
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 10008
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 10043
    :cond_12
    if-nez v8, :cond_7

    .line 10044
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10045
    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    .line 10047
    .restart local v10       #offset:I
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 10048
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10049
    invoke-direct {p0, v5}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 10050
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 10051
    iput-boolean v5, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 10052
    const/4 v0, -0x1

    if-eq v10, v0, :cond_13

    .line 10053
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10056
    .end local v10           #offset:I
    :cond_13
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v8

    move v13, v8

    .line 10058
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10059
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 10060
    invoke-direct {p0, v5}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    goto/16 :goto_2
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "spannable"

    .prologue
    .line 3168
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 3170
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3171
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 3172
    .local v0, flags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 3174
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3177
    .end local v0           #flags:I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"

    .prologue
    .line 10877
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 10879
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 10880
    check-cast v1, Landroid/text/Spannable;

    .line 10886
    .local v1, spannable:Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 10887
    .local v2, spans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 10888
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 10887
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10882
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10883
    .restart local v1       #spannable:Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 10891
    .end local v1           #spannable:Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 7960
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 7961
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 7963
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 7964
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7967
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 13180
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 13181
    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 6046
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6047
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_2

    .line 6048
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6049
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 6050
    :cond_0
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6051
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6052
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 6053
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 6054
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 6055
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 6059
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 6060
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6062
    :cond_1
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6068
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 6070
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6071
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6072
    iput v9, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6073
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6074
    const/4 v0, 0x1

    .line 6080
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public resetErrorChangedFlag()V
    .locals 1

    .prologue
    .line 5742
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 5743
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    .line 13155
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    .line 13156
    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .locals 2

    .prologue
    .line 6470
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6472
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    if-ne v0, v1, :cond_1

    .line 6475
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 6477
    :cond_1
    return-void
.end method

.method protected resolveDrawables()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 13105
    iget-boolean v1, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    if-eqz v1, :cond_1

    .line 13152
    :cond_0
    :goto_0
    return-void

    .line 13109
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    .line 13113
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 13114
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_0

    .line 13118
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 13119
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 13137
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 13138
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 13140
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 13141
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 13143
    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 13144
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 13146
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 13147
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 13151
    :cond_4
    :goto_1
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_0

    .line 13121
    :pswitch_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 13122
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 13124
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 13125
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 13127
    :cond_5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 13128
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 13130
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 13131
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_1

    .line 13119
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method protected resolveTextDirection()V
    .locals 4

    .prologue
    .line 13065
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13066
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 13094
    :goto_0
    return-void

    .line 13071
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 13074
    .local v0, defaultIsRtl:Z
    :goto_1
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 13077
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedTextDirection()I

    move-result v1

    .line 13078
    .local v1, textDir:I
    packed-switch v1, :pswitch_data_0

    .line 13081
    if-eqz v0, :cond_2

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_2
    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 13071
    .end local v0           #defaultIsRtl:Z
    .end local v1           #textDir:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 13081
    .restart local v0       #defaultIsRtl:Z
    .restart local v1       #textDir:I
    :cond_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 13085
    :pswitch_0
    sget-object v2, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 13088
    :pswitch_1
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 13091
    :pswitch_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 13078
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 9626
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 9630
    :goto_0
    return-void

    .line 9629
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 9648
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 9650
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9651
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 9652
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 9653
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 9654
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9655
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 8030
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8031
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8032
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8033
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8034
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 8033
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8037
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8006
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8007
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8009
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 8010
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8011
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8012
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8013
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8017
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_1
    add-int v3, p2, p4

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    .line 8022
    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 8023
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2
    .parameter "allCaps"

    .prologue
    .line 7560
    if-eqz p1, :cond_0

    .line 7561
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7565
    :goto_0
    return-void

    .line 7563
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2510
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 2511
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 1
    .parameter "pad"

    .prologue
    .line 2169
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2170
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 2171
    if-eqz v0, :cond_0

    .line 2172
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2181
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2182
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2183
    return-void

    .line 2175
    :cond_1
    if-nez v0, :cond_2

    .line 2176
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2178
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1798
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1800
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 1803
    .local v2, drawables:Z
    :goto_0
    if-nez v2, :cond_8

    .line 1805
    if-eqz v1, :cond_1

    .line 1806
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    .line 1807
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1896
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1897
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1898
    return-void

    .end local v2           #drawables:Z
    :cond_2
    move v2, v4

    .line 1800
    goto :goto_0

    .line 1811
    .restart local v2       #drawables:Z
    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1812
    :cond_4
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1813
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1814
    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1815
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1816
    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1817
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1818
    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1819
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1820
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1821
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1822
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 1826
    :cond_8
    if-nez v1, :cond_9

    .line 1827
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1830
    :cond_9
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    .line 1831
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1833
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1835
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 1836
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1838
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1840
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 1841
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1843
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1845
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 1846
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1848
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1850
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1853
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1855
    .local v3, state:[I
    if-eqz p1, :cond_e

    .line 1856
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1857
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1858
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1859
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1860
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1865
    :goto_2
    if-eqz p3, :cond_f

    .line 1866
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1867
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1868
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1869
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1870
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1875
    :goto_3
    if-eqz p2, :cond_10

    .line 1876
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1877
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1878
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1879
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1880
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1885
    :goto_4
    if-eqz p4, :cond_11

    .line 1886
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1887
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1888
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1889
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1890
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 1862
    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    .line 1872
    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    .line 1882
    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 1892
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1968
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1970
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 1973
    .local v2, drawables:Z
    :goto_0
    if-nez v2, :cond_8

    .line 1975
    if-eqz v1, :cond_1

    .line 1976
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    .line 1977
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2066
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2067
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2068
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2069
    return-void

    .end local v2           #drawables:Z
    :cond_2
    move v2, v4

    .line 1970
    goto :goto_0

    .line 1981
    .restart local v2       #drawables:Z
    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1982
    :cond_4
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1983
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1984
    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1985
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1986
    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1987
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1988
    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1989
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1990
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1991
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1992
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 1996
    :cond_8
    if-nez v1, :cond_9

    .line 1997
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2000
    :cond_9
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    .line 2001
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2003
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2005
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 2006
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2008
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 2010
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 2011
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2013
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2015
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 2016
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2018
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 2020
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2023
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2025
    .local v3, state:[I
    if-eqz p1, :cond_e

    .line 2026
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2027
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2028
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2029
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2030
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2035
    :goto_2
    if-eqz p3, :cond_f

    .line 2036
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2037
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2038
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2039
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2040
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2045
    :goto_3
    if-eqz p2, :cond_10

    .line 2046
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2047
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2048
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2049
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2050
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2055
    :goto_4
    if-eqz p4, :cond_11

    .line 2056
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2057
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2058
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2059
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2060
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2032
    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    .line 2042
    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    .line 2052
    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 2062
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 2091
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2092
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2093
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2098
    return-void

    :cond_1
    move-object v4, v1

    .line 2093
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 2116
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2117
    if-eqz p1, :cond_0

    .line 2118
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2120
    :cond_0
    if-eqz p3, :cond_1

    .line 2121
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2123
    :cond_1
    if-eqz p2, :cond_2

    .line 2124
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2126
    :cond_2
    if-eqz p4, :cond_3

    .line 2127
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2129
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2130
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 1917
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1918
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1922
    return-void

    :cond_1
    move-object v4, v1

    .line 1918
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1938
    if-eqz p1, :cond_0

    .line 1939
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1941
    :cond_0
    if-eqz p3, :cond_1

    .line 1942
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1944
    :cond_1
    if-eqz p2, :cond_2

    .line 1945
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1947
    :cond_2
    if-eqz p4, :cond_3

    .line 1948
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1950
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1951
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 13196
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13197
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7687
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 7688
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 7689
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7691
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7694
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 7696
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter "actionModeCallback"

    .prologue
    .line 10968
    iput-object p1, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 10969
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 3266
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 3267
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3268
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 7635
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 7636
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7638
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7639
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7640
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7641
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7644
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2916
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2917
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2919
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2920
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2921
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1293
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1297
    :cond_0
    if-nez p1, :cond_1

    .line 1299
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1300
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1301
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1304
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1305
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1306
    if-eqz p1, :cond_2

    .line 1308
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1309
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1313
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4100
    if-nez p1, :cond_0

    .line 4101
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 4109
    :goto_0
    return-void

    .line 4103
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4106
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4107
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 4121
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4123
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 4124
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4125
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4126
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 4127
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4130
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4142
    :goto_0
    if-nez p1, :cond_3

    .line 4143
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_1

    .line 4144
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4145
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 4148
    :cond_0
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 4155
    :cond_1
    :goto_1
    return-void

    .line 4134
    :pswitch_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4139
    :cond_2
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4151
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4152
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_1

    .line 4127
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 6102
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 6103
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 6104
    if-nez v1, :cond_3

    .line 6105
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6124
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 6125
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 6126
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 6127
    .local v4, start:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 6129
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 6130
    .local v2, end:I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 6132
    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6135
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 6136
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6140
    :goto_3
    return-void

    .line 6106
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_4

    .line 6107
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6108
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 6110
    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 6111
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6112
    .restart local v4       #start:I
    if-le v4, v0, :cond_5

    move v4, v0

    .line 6113
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6114
    .restart local v2       #end:I
    if-le v2, v0, :cond_6

    move v2, v0

    .line 6115
    :cond_6
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6116
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 6128
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_7
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .line 6131
    .restart local v2       #end:I
    :cond_8
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    .line 6138
    :cond_9
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 6146
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 6147
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 6152
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6153
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    .line 4341
    if-nez p1, :cond_0

    .line 4342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4345
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 4347
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 4348
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4350
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 4315
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 4316
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 4317
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4318
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 4322
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4324
    return v6
.end method

.method public setFreezesText(Z)V
    .locals 0
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3245
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 3246
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .parameter "gravity"

    .prologue
    const v4, 0x800007

    .line 2654
    and-int v0, p1, v4

    if-nez v0, :cond_0

    .line 2655
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 2657
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 2658
    or-int/lit8 p1, p1, 0x30

    .line 2661
    :cond_1
    const/4 v7, 0x0

    .line 2663
    .local v7, newLayout:Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    .line 2665
    const/4 v7, 0x1

    .line 2668
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 2669
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2670
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 2673
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2675
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 2677
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2678
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 2680
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2684
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4
    return-void

    .line 2678
    .restart local v1       #want:I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2846
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2847
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2849
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2850
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2851
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2468
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 2469
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 2470
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2472
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3662
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3663
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3643
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 3645
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3646
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3649
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3650
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3652
    :cond_1
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2583
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2584
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2585
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 2593
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2594
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2595
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .parameter "whether"

    .prologue
    .line 2729
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 2730
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2732
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2733
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2734
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2735
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2738
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3877
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3878
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3880
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3881
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3882
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 3849
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3850
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3852
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3853
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .parameter "includepad"

    .prologue
    .line 6791
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 6792
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6794
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 6795
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6796
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6797
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6800
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4053
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 4054
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 4055
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 4056
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 4057
    return-void
.end method

.method public setInputType(I)V
    .locals 12
    .parameter "type"

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3697
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 3698
    .local v5, wasPassword:Z
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 3699
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 3700
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 3701
    .local v2, isPassword:Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 3702
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 3703
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_6

    .line 3704
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3705
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3720
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    .line 3724
    .local v4, singleLine:Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    .line 3727
    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 3730
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3731
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3734
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3735
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3736
    :cond_5
    return-void

    .line 3706
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #singleLine:Z
    :cond_6
    if-eqz v3, :cond_8

    .line 3707
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 3708
    const/4 v0, 0x1

    .line 3711
    :cond_7
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_0

    .line 3712
    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    .line 3714
    :cond_9
    invoke-direct {p0, v10, v10}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3715
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 3716
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    .line 3720
    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .parameter "input"

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1446
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1448
    if-eqz p1, :cond_2

    .line 1450
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1462
    :goto_1
    iget-object v2, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_0

    .line 1463
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1464
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v2, v2, -0xff1

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1470
    :cond_0
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1471
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1472
    :cond_1
    return-void

    .line 1451
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 1452
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0

    .line 1458
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1

    .line 1466
    :cond_3
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v2, v2, -0xff1

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_2
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2948
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2949
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2950
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2952
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 2953
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2954
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2955
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2958
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2827
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2828
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2830
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2831
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2832
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2622
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2623
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2624
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 2632
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2633
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2634
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2523
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 2524
    return-void
.end method

.method public setMarqueeControlledAp(Z)V
    .locals 0
    .parameter "controlled"

    .prologue
    .line 13796
    iput-boolean p1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    .line 13797
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .parameter "marqueeLimit"

    .prologue
    .line 7653
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 7654
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2888
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2889
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2891
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2892
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2893
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2810
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2811
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2813
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2814
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2815
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2793
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2794
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2796
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2797
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2798
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2902
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2903
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2905
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2906
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2907
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2860
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2861
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2863
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2864
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2865
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2777
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2778
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2780
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2781
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2782
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2761
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2762
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2764
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2765
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2766
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2874
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2875
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2877
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2878
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2879
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .parameter "movement"

    .prologue
    .line 1502
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1504
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 1505
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1510
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1512
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_2

    .line 1513
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 1515
    :cond_2
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3915
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3916
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3918
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3919
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2195
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 2199
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2203
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2204
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2205
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2711
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2712
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2714
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2715
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2716
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2717
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2720
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 4015
    const-string v0, "com.htc.textselection:enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4016
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 4027
    :goto_0
    return-void

    .line 4019
    :cond_0
    const-string v0, "com.htc.textselection:enabled_longClickable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4020
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    goto :goto_0

    .line 4025
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 4026
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRawInputType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3783
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3784
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 9030
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9031
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7673
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 7675
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 7676
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7678
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    .line 8699
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 8701
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8703
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 8704
    if-eqz p1, :cond_1

    .line 8705
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8710
    :cond_0
    :goto_0
    return-void

    .line 8707
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 2484
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2486
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 2487
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 2488
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 2490
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2491
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 7544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 7545
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7581
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 7582
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 7583
    return-void
.end method

.method public final setSoftInputShownOnFocus(Z)V
    .locals 0
    .parameter "show"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2547
    iput-boolean p1, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    .line 2548
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 13188
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 13189
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 3274
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 3275
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3627
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3628
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 3631
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3632
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3291
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3292
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 3316
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3318
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 3321
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 3482
    const/4 v0, 0x0

    .line 3484
    .local v0, oldlen:I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 3485
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3493
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 3494
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3495
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3500
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 3501
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 3506
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3507
    return-void

    .line 3497
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 3503
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 2223
    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2231
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2232
    .local v1, color:I
    if-eqz v1, :cond_2

    .line 2234
    sget-boolean v9, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v9, :cond_1

    .line 2235
    invoke-direct {p0}, Landroid/widget/TextView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2236
    .local v4, skinPackage:Ljava/lang/String;
    sget-object v9, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v3, 0x1

    .line 2238
    .local v3, skinChange:Z
    :goto_0
    if-eqz v3, :cond_a

    .line 2239
    sput-object v4, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    .line 2241
    if-eqz v4, :cond_0

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "default"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2256
    :cond_0
    :goto_1
    sput v1, Landroid/widget/TextView;->mTextColorHighlight:I

    .line 2261
    .end local v3           #skinChange:Z
    .end local v4           #skinPackage:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 2264
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2266
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_3

    .line 2267
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2270
    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 2272
    .local v7, ts:I
    if-eqz v7, :cond_4

    .line 2273
    int-to-float v9, v7

    invoke-direct {p0, v9}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2276
    :cond_4
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2278
    if-eqz v2, :cond_5

    .line 2279
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 2282
    :cond_5
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2284
    if-eqz v2, :cond_6

    .line 2285
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 2290
    :cond_6
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2292
    .local v8, typefaceIndex:I
    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2295
    .local v5, styleIndex:I
    invoke-direct {p0, v8, v5}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 2297
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2299
    new-instance v9, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2302
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2303
    return-void

    .line 2236
    .end local v2           #colors:Landroid/content/res/ColorStateList;
    .end local v5           #styleIndex:I
    .end local v7           #ts:I
    .end local v8           #typefaceIndex:I
    .restart local v4       #skinPackage:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 2246
    .restart local v3       #skinChange:Z
    :cond_9
    :try_start_0
    iget-object v9, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 2247
    .local v6, themeres:Landroid/content/res/Resources;
    const-string v9, "input_text_selection_highlight"

    const-string v10, "color"

    invoke-virtual {v6, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 2258
    .end local v6           #themeres:Landroid/content/res/Resources;
    :cond_a
    sget v1, Landroid/widget/TextView;->mTextColorHighlight:I

    goto :goto_2

    .line 2252
    :catch_0
    move-exception v9

    goto :goto_1

    .line 2249
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2425
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2426
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2427
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 2435
    if-nez p1, :cond_0

    .line 2436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2439
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2440
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2441
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .parameter "selectable"

    .prologue
    const/4 v0, 0x0

    .line 4898
    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-ne v1, p1, :cond_2

    .line 4900
    iget-boolean v1, p0, Landroid/widget/TextView;->isMessageLink:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 4901
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4935
    :cond_1
    :goto_0
    return-void

    .line 4906
    :cond_2
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 4909
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 4910
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 4911
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4912
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4913
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 4916
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/LinkMovementMethod;

    if-eqz v1, :cond_7

    .line 4918
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->isMessageLink:Z

    .line 4925
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4927
    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreSetText:Z

    if-nez v0, :cond_6

    .line 4930
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_8

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4934
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    goto :goto_0

    .line 4920
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView;->isMessageLink:Z

    goto :goto_1

    .line 4930
    :cond_8
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3304
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3305
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 3610
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 3611
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3612
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3614
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3616
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 3617
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 3618
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3623
    :cond_1
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2375
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2376
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 2377
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2379
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2380
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2381
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2382
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2385
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2323
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2324
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 2336
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2339
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2340
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2344
    .local v1, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2346
    return-void

    .line 2342
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1546
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 1553
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1557
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1560
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_2

    .line 1561
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1562
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v1, -0xff1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1568
    :cond_2
    :goto_1
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 1569
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 1570
    .local v0, method2:Landroid/text/method/TransformationMethod2;
    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 1571
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 1576
    .end local v0           #method2:Landroid/text/method/TransformationMethod2;
    :goto_3
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1564
    :cond_3
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v1, -0xff1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_1

    .restart local v0       #method2:Landroid/text/method/TransformationMethod2;
    :cond_4
    move v1, v2

    .line 1570
    goto :goto_2

    .line 1573
    .end local v0           #method2:Landroid/text/method/TransformationMethod2;
    :cond_5
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_3
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 2398
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2399
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2401
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2402
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2403
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2404
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2407
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1326
    if-lez p2, :cond_4

    .line 1327
    if-nez p1, :cond_1

    .line 1328
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1333
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1335
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1336
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 1337
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1338
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1344
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 1330
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1335
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 1338
    goto :goto_2

    .line 1340
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1341
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1342
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2932
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2933
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2935
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2936
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2937
    return-void
.end method

.method public shouldIgnoreActionUpEvent()Z
    .locals 1

    .prologue
    .line 9014
    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    return v0
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 10895
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 10896
    new-instance v0, Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SuggestionsPopupWindow;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    .line 10898
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 10899
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->show()V

    .line 10900
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 7
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v6, 0x1

    .line 8072
    const/4 v4, 0x0

    .line 8073
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 8075
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8077
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    .line 8078
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8079
    const/4 v4, 0x1

    .line 8080
    move v2, p4

    .line 8082
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8083
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8086
    :cond_0
    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    .line 8087
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8088
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8089
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 8093
    :cond_2
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_5

    .line 8094
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8095
    const/4 v4, 0x1

    .line 8096
    move v3, p4

    .line 8098
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    .line 8099
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8102
    :cond_3
    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    .line 8103
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8104
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8108
    .end local v0           #end:I
    :cond_5
    if-eqz v4, :cond_8

    .line 8109
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_8

    .line 8110
    if-gez v3, :cond_6

    .line 8111
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 8113
    :cond_6
    if-gez v2, :cond_7

    .line 8114
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 8116
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 8120
    :cond_8
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_9

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_b

    .line 8121
    :cond_9
    if-eqz v1, :cond_a

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_14

    .line 8122
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8123
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8124
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8130
    :cond_b
    :goto_0
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 8131
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8132
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 8133
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 8136
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 8137
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_15

    .line 8138
    :cond_d
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 8145
    :cond_e
    :goto_1
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 8148
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 8149
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_16

    .line 8150
    if-ltz p3, :cond_10

    .line 8151
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 8152
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8154
    :cond_f
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 8155
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8158
    :cond_10
    if-ltz p4, :cond_12

    .line 8159
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 8160
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8162
    :cond_11
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 8163
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8175
    :cond_12
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    .line 8176
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->removeSpellCheckSpan(Landroid/text/style/SpellCheckSpan;)V

    .line 8178
    :cond_13
    return-void

    .line 8126
    .restart local p2
    :cond_14
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0

    .line 8140
    :cond_15
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_1

    .line 8170
    :cond_16
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_2
.end method

.method public stopSelectionActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11068
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_4

    .line 11069
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 11071
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 11075
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11076
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 11080
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 11082
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 11083
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11084
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 11087
    :cond_1
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    .line 11089
    iget-boolean v0, p0, Landroid/widget/TextView;->isMessageLink:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 11091
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 11096
    :cond_2
    :goto_1
    return-void

    .line 11078
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 11094
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11095
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    goto :goto_1
.end method

.method public stopTextSelectionMode()V
    .locals 0

    .prologue
    .line 11063
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 11064
    return-void
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 6333
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6334
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6336
    .local v0, curs:I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 6337
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6340
    :cond_1
    if-ltz v0, :cond_2

    .line 6341
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6342
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6343
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 6346
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6347
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "who"

    .prologue
    .line 4741
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 4742
    .local v0, verified:Z
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 4743
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4747
    :goto_0
    return v1

    .line 4743
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 4747
    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter "imm"

    .prologue
    .line 13162
    if-eqz p1, :cond_0

    .line 13163
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 13165
    :cond_0
    return-void
.end method

.method public setCursorDrawableRes(I)V
    .locals 3
    .parameter "cursorDrawableRes"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mCursorCount:I

    return-void
.end method