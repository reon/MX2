.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final DEFAULT_STATES:[I = null

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PENDING_DRAG_DELAY:I = 0xb4

.field private static final PRESSED_STATES:[I = null

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mDrawOverlay:Z

.field private mFloatOffsetRight:I

.field private mFloatOffsetTop:I

.field private mFloatTextSize:I

.field private mHandler:Landroid/os/Handler;

.field mInitialTouchY:F

.field private mItemCount:I

.field mList:Landroid/widget/AbsListView;

.field mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mOverlayTextOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field mPendingDrag:Z

.field private mPosition:I

.field private mScaledTouchSlop:I

.field mScrollCompleted:Z

.field private mScrollFade:Landroid/widget/FastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbH:I

.field mThumbW:I

.field mThumbY:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackPadding:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const/4 v0, 0x4

    sput v0, Landroid/widget/FastScroller;->MIN_PAGES:I

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/widget/FastScroller;->PRESSED_STATES:[I

    .line 59
    new-array v0, v2, [I

    sput-object v0, Landroid/widget/FastScroller;->DEFAULT_STATES:[I

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/FastScroller;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "context"
    .parameter "listView"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 134
    iput v1, p0, Landroid/widget/FastScroller;->mFloatOffsetTop:I

    .line 135
    iput v1, p0, Landroid/widget/FastScroller;->mFloatOffsetRight:I

    .line 136
    iput v1, p0, Landroid/widget/FastScroller;->mFloatTextSize:I

    .line 137
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/FastScroller;->mTrackPadding:I

    .line 138
    iput v1, p0, Landroid/widget/FastScroller;->mOverlayTextOffset:I

    .line 141
    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 165
    iput-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 166
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 752
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 753
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 754
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 755
    return-void
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 16
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    .line 698
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 700
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_3

    .line 701
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    mul-int v13, v13, p1

    sub-int v14, p3, p2

    div-int v8, v13, v14

    .line 747
    :goto_0
    return v8

    .line 705
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FastScroller;->mListOffset:I

    sub-int p1, p1, v13

    .line 706
    if-gez p1, :cond_4

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v8

    goto :goto_0

    .line 709
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FastScroller;->mListOffset:I

    sub-int p3, p3, v13

    .line 711
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getVerticalBarPaddingBottom()I

    move-result v14

    sub-int v12, v13, v14

    .line 715
    .local v12, trackHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    .line 716
    .local v9, section:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 719
    .local v11, sectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v13

    .line 720
    .local v10, sectionCount:I
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v14, v14

    if-ne v13, v14, :cond_6

    .line 721
    move/from16 v5, p3

    .line 726
    .local v5, nextSectionPos:I
    :goto_1
    sub-int v7, v5, v11

    .line 728
    .local v7, positionsInSection:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 729
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_7

    const/4 v2, 0x0

    .line 731
    .local v2, incrementalPos:F
    :goto_2
    int-to-float v13, v11

    sub-float v13, v2, v13

    int-to-float v14, v7

    div-float v6, v13, v14

    .line 732
    .local v6, posWithinSection:F
    int-to-float v13, v9

    add-float/2addr v13, v6

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v12

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 733
    .local v8, result:I
    const/4 v13, 0x0

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 738
    if-lez p1, :cond_5

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_5

    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 740
    .local v3, lastChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 742
    .local v4, lastItemVisible:F
    const/high16 v13, 0x3f80

    invoke-static {v13, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 743
    int-to-float v13, v8

    sub-int v14, v12, v8

    int-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v8, v13

    .line 746
    .end local v3           #lastChild:Landroid/view/View;
    .end local v4           #lastItemVisible:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v13

    add-int/2addr v8, v13

    .line 747
    goto/16 :goto_0

    .line 723
    .end local v1           #child:Landroid/view/View;
    .end local v2           #incrementalPos:F
    .end local v5           #nextSectionPos:I
    .end local v6           #posWithinSection:F
    .end local v7           #positionsInSection:I
    .end local v8           #result:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .restart local v5       #nextSectionPos:I
    goto :goto_1

    .line 729
    .restart local v1       #child:Landroid/view/View;
    .restart local v7       #positionsInSection:I
    :cond_7
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v13, v14

    goto :goto_2
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget-object v8, Landroid/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 275
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Landroid/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 276
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 279
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 280
    const/4 v7, 0x5

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, res:Landroid/content/res/Resources;
    const v7, 0x10501f7

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mFloatOffsetTop:I

    .line 284
    const v7, 0x10501f8

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mFloatOffsetRight:I

    .line 285
    const v7, 0x10501f9

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mFloatTextSize:I

    .line 286
    const v7, 0x10501fb

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mTrackPadding:I

    .line 287
    const v7, 0x10501fc

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mOverlayTextOffset:I

    .line 289
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 291
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 293
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 294
    new-instance v7, Landroid/widget/FastScroller$ScrollFade;

    invoke-direct {v7, p0}, Landroid/widget/FastScroller$ScrollFade;-><init>(Landroid/widget/FastScroller;)V

    iput-object v7, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 295
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 299
    iget v7, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v7, :cond_2

    .line 301
    const v7, 0x10501fa

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    .line 302
    iget-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Landroid/widget/FastScroller;->mFloatTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    :goto_0
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 310
    .local v3, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 311
    .local v4, textColorNormal:I
    iget-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_0

    .line 316
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8, v6, v6}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 319
    :cond_0
    iput v6, p0, Landroid/widget/FastScroller;->mState:I

    .line 320
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawableState()V

    .line 322
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 329
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    const v5, 0x10501fd

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 335
    .local v0, barPadding:I
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0, v0, v6, v6}, Landroid/view/View;->setScrollBarPadding(IIII)V

    .line 337
    .end local v0           #barPadding:I
    :cond_1
    return-void

    .line 305
    .end local v3           #textColor:Landroid/content/res/ColorStateList;
    .end local v4           #textColorNormal:I
    :cond_2
    const v7, 0x1050015

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    .line 306
    iget-object v7, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .restart local v3       #textColor:Landroid/content/res/ColorStateList;
    .restart local v4       #textColorNormal:I
    :cond_3
    move v5, v6

    .line 326
    goto :goto_1
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 184
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v0, Landroid/widget/FastScroller;->PRESSED_STATES:[I

    .line 186
    .local v0, state:[I
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 192
    :cond_1
    return-void

    .line 184
    .end local v0           #state:[I
    :cond_2
    sget-object v0, Landroid/widget/FastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 247
    .local v0, viewWidth:I
    iget v1, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 255
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 256
    return-void

    .line 249
    :pswitch_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateOverlayFloating()V
    .locals 6

    .prologue
    .line 960
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 961
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 962
    .local v0, pos:Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FastScroller;->mFloatOffsetRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 963
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 964
    iget v1, p0, Landroid/widget/FastScroller;->mFloatOffsetTop:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 965
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 966
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 971
    .end local v0           #pos:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 259
    iput-object p2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbH:I

    .line 269
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 270
    return-void

    .line 266
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 267
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 768
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 769
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 772
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 774
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 777
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 778
    return-void
.end method

.method cancelPendingDrag()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 760
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbY:I

    move/from16 v21, v0

    .line 355
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v20

    .line 356
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 358
    .local v13, scrollFade:Landroid/widget/FastScroller$ScrollFade;
    const/4 v5, -0x1

    .line 359
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 360
    invoke-virtual {v13}, Landroid/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v5

    .line 361
    const/16 v22, 0x68

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    mul-int/lit8 v23, v5, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 364
    :cond_2
    const/4 v8, 0x0

    .line 365
    .local v8, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 373
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    add-int v24, v24, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 377
    .end local v8           #left:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 379
    .local v14, thumbBounds:Landroid/graphics/Rect;
    iget v8, v14, Landroid/graphics/Rect;->left:I

    .line 381
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/FastScroller;->mTrackPadding:I

    .line 382
    .local v9, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 383
    .local v18, trackWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v8

    div-int/lit8 v23, v18, 0x2

    sub-int v17, v22, v23

    .line 384
    .local v17, trackLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v23

    add-int v23, v23, v9

    add-int v24, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    sub-int v25, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVerticalBarPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    .end local v8           #left:I
    .end local v9           #padding:I
    .end local v14           #thumbBounds:Landroid/graphics/Rect;
    .end local v17           #trackLeft:I
    .end local v18           #trackWidth:I
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    const/16 v22, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mDrawOverlay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 399
    const/4 v8, 0x0

    .line 400
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 403
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 412
    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 415
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 416
    .local v11, pos:Landroid/graphics/RectF;
    int-to-float v0, v8

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->left:F

    .line 417
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->right:F

    .line 418
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->top:F

    .line 419
    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 425
    .end local v8           #left:I
    .end local v11           #pos:Landroid/graphics/RectF;
    .end local v16           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 427
    .local v10, paint:Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 428
    .local v6, descent:F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 429
    .local v12, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 430
    .local v15, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 432
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v7, v22, 0x2

    .line 433
    .local v7, hOff:I
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v19, v22, 0x2

    .line 434
    .local v19, vOff:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x4

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 367
    .end local v6           #descent:F
    .end local v7           #hOff:I
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v12           #rectF:Landroid/graphics/RectF;
    .end local v15           #tmpRect:Landroid/graphics/Rect;
    .end local v19           #vOff:I
    .restart local v8       #left:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    mul-int v22, v22, v5

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xd0

    move/from16 v22, v0

    sub-int v8, v20, v22

    .line 368
    goto/16 :goto_1

    .line 370
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    mul-int v23, v23, v5

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xd0

    move/from16 v23, v0

    add-int v8, v22, v23

    goto/16 :goto_1

    .line 407
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_2

    .line 439
    .end local v8           #left:I
    .restart local v6       #descent:F
    .restart local v7       #hOff:I
    .restart local v10       #paint:Landroid/graphics/Paint;
    .restart local v12       #rectF:Landroid/graphics/RectF;
    .restart local v15       #tmpRect:Landroid/graphics/Rect;
    .restart local v19       #vOff:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v25

    float-to-int v0, v6

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayTextOffset:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 443
    .end local v6           #descent:F
    .end local v7           #hOff:I
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v12           #rectF:Landroid/graphics/RectF;
    .end local v15           #tmpRect:Landroid/graphics/Rect;
    .end local v19           #vOff:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 444
    if-nez v5, :cond_8

    .line 445
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto/16 :goto_0

    .line 446
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 449
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    add-int v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 400
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method getSectionsFromIndexer()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 539
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 540
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 541
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 542
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mListOffset:I

    .line 543
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 545
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 546
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 547
    .local v1, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_2

    .line 548
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 549
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 550
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 551
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 552
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 568
    :cond_2
    :goto_0
    return-void

    .line 556
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_3
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 557
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 558
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 559
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 560
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 561
    :cond_4
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 564
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_5
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 565
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, inTrack:Z
    iget v3, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    .line 905
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 913
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 905
    goto :goto_0

    .line 908
    :pswitch_0
    iget v3, p0, Landroid/widget/FastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 913
    goto :goto_1

    .line 902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 797
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 783
    :pswitch_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 786
    const/4 v0, 0x1

    goto :goto_1

    .line 788
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 789
    invoke-virtual {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 794
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 1
    .parameter "oldCount"
    .parameter "newCount"

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 474
    :cond_0
    return-void
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, itemCountChanged:Z
    iget v3, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-eq v3, p4, :cond_0

    if-lez p3, :cond_0

    .line 481
    iput p4, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 482
    const/4 v1, 0x1

    .line 483
    iget v3, p0, Landroid/widget/FastScroller;->mItemCount:I

    div-int/2addr v3, p3

    sget v6, Landroid/widget/FastScroller;->MIN_PAGES:I

    if-lt v3, v6, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 485
    :cond_0
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v3, :cond_1

    .line 486
    iget v3, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-lez v3, :cond_6

    .line 487
    iget v3, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-le v3, p3, :cond_4

    .line 488
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 500
    :cond_1
    :goto_1
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v3, :cond_7

    .line 501
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v3, :cond_2

    .line 502
    invoke-virtual {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 525
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v3, v5

    .line 483
    goto :goto_0

    .line 489
    :cond_4
    iget v3, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-ne v3, p3, :cond_1

    .line 490
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 491
    .local v2, lastBottom:I
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 493
    .local v0, firstTop:I
    sub-int v3, v2, v0

    iget-object v6, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mLongList:Z

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_3

    .line 497
    .end local v0           #firstTop:I
    .end local v2           #lastBottom:I
    :cond_6
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mLongList:Z

    goto :goto_1

    .line 506
    :cond_7
    sub-int v3, p4, p3

    if-lez v3, :cond_8

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v8, :cond_8

    .line 507
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FastScroller;->getThumbPositionForListPosition(III)I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 509
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    if-eqz v3, :cond_8

    .line 510
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 511
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 514
    :cond_8
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 515
    iget v3, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    if-ne p2, v3, :cond_9

    if-eqz v1, :cond_2

    .line 518
    :cond_9
    iput p2, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    .line 519
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v8, :cond_2

    .line 520
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/widget/FastScroller;->setState(I)V

    .line 521
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v3, :cond_2

    .line 522
    iget-object v3, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 572
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 456
    iget v0, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 459
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOverlayFloating()V

    .line 468
    return-void

    .line 462
    :pswitch_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v2, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "me"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 801
    iget v9, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v9, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v7

    .line 805
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 807
    .local v0, action:I
    if-nez v0, :cond_3

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 809
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v9

    if-nez v9, :cond_2

    .line 810
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    move v7, v8

    .line 811
    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 814
    invoke-virtual {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 816
    :cond_3
    if-ne v0, v8, :cond_9

    .line 817
    iget-boolean v9, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    if-eqz v9, :cond_5

    .line 819
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 821
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v4

    .line 822
    .local v4, topOffset:I
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/view/View;->getVerticalBarPaddingBottom()I

    move-result v1

    .line 823
    .local v1, bottomOffset:I
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 825
    .local v5, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v9, v10

    add-int/lit8 v3, v9, 0xa

    .line 826
    .local v3, newThumbY:I
    if-ge v3, v4, :cond_8

    .line 827
    move v3, v4

    .line 831
    :cond_4
    :goto_1
    iput v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 832
    iget v9, p0, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v10, v5, v10

    sub-int/2addr v10, v4

    sub-int/2addr v10, v1

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 834
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 837
    .end local v1           #bottomOffset:I
    .end local v3           #newThumbY:I
    .end local v4           #topOffset:I
    .end local v5           #viewHeight:I
    :cond_5
    iget v9, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v9, v11, :cond_0

    .line 838
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v9, :cond_6

    .line 842
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 843
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 845
    :cond_6
    invoke-virtual {p0, v12}, Landroid/widget/FastScroller;->setState(I)V

    .line 846
    iget-object v2, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 847
    .local v2, handler:Landroid/os/Handler;
    iget-object v7, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v7, :cond_7

    .line 849
    iget-object v7, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v2, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    :cond_7
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    move v7, v8

    .line 853
    goto/16 :goto_0

    .line 828
    .end local v2           #handler:Landroid/os/Handler;
    .restart local v1       #bottomOffset:I
    .restart local v3       #newThumbY:I
    .restart local v4       #topOffset:I
    .restart local v5       #viewHeight:I
    :cond_8
    iget v9, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v9, v3

    sub-int v10, v5, v1

    if-le v9, v10, :cond_4

    .line 829
    iget v9, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v9, v5, v9

    sub-int v3, v9, v1

    goto :goto_1

    .line 855
    .end local v1           #bottomOffset:I
    .end local v3           #newThumbY:I
    .end local v4           #topOffset:I
    .end local v5           #viewHeight:I
    :cond_9
    if-ne v0, v12, :cond_11

    .line 856
    iget-boolean v9, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    if-eqz v9, :cond_c

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 858
    .local v6, y:F
    iget v9, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_c

    .line 859
    invoke-virtual {p0, v11}, Landroid/widget/FastScroller;->setState(I)V

    .line 860
    iget-object v9, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v9, :cond_a

    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v9, :cond_a

    .line 861
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 863
    :cond_a
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v9, :cond_b

    .line 864
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 865
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 868
    :cond_b
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 869
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 873
    .end local v6           #y:F
    :cond_c
    iget v9, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v9, v11, :cond_0

    .line 874
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getVerticalBarPaddingTop()I

    move-result v4

    .line 875
    .restart local v4       #topOffset:I
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getVerticalBarPaddingBottom()I

    move-result v1

    .line 876
    .restart local v1       #bottomOffset:I
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 878
    .restart local v5       #viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v9, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v7, v9

    add-int/lit8 v3, v7, 0xa

    .line 879
    .restart local v3       #newThumbY:I
    if-ge v3, v4, :cond_e

    .line 880
    move v3, v4

    .line 884
    :cond_d
    :goto_2
    iget v7, p0, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v12, :cond_f

    move v7, v8

    .line 885
    goto/16 :goto_0

    .line 881
    :cond_e
    iget v7, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v7, v3

    sub-int v9, v5, v1

    if-le v7, v9, :cond_d

    .line 882
    iget v7, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v7, v5, v7

    sub-int v3, v7, v1

    goto :goto_2

    .line 887
    :cond_f
    iput v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 889
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v7, :cond_10

    .line 890
    iget v7, p0, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v7, v4

    int-to-float v7, v7

    iget v9, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v9, v5, v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v1

    int-to-float v9, v9

    div-float/2addr v7, v9

    invoke-virtual {p0, v7}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_10
    move v7, v8

    .line 892
    goto/16 :goto_0

    .line 894
    .end local v1           #bottomOffset:I
    .end local v3           #newThumbY:I
    .end local v4           #topOffset:I
    .end local v5           #viewHeight:I
    :cond_11
    if-ne v0, v11, :cond_0

    .line 895
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0
.end method

.method scrollTo(F)V
    .locals 23
    .parameter "position"

    .prologue
    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 576
    .local v2, count:I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 577
    const/high16 v20, 0x3f80

    int-to-float v0, v2

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x4100

    div-float v7, v20, v21

    .line 578
    .local v7, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 580
    .local v18, sections:[Ljava/lang/Object;
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 581
    move-object/from16 v0, v18

    array-length v9, v0

    .line 582
    .local v9, nSections:I
    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v15, v0

    .line 583
    .local v15, section:I
    if-lt v15, v9, :cond_0

    .line 584
    add-int/lit8 v15, v9, -0x1

    .line 587
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v16

    .line 589
    .local v16, sectionForFirstPosition:I
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 590
    move/from16 v15, v16

    .line 593
    :cond_1
    move v3, v15

    .line 594
    .local v3, exactSection:I
    move/from16 v17, v15

    .line 595
    .local v17, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 602
    .local v8, index:I
    move v10, v2

    .line 603
    .local v10, nextIndex:I
    move v13, v8

    .line 604
    .local v13, prevIndex:I
    move v14, v15

    .line 605
    .local v14, prevSection:I
    add-int/lit8 v12, v15, 0x1

    .line 607
    .local v12, nextSection:I
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 612
    :cond_2
    if-ne v10, v8, :cond_4

    .line 614
    :cond_3
    if-lez v15, :cond_4

    .line 615
    add-int/lit8 v15, v15, -0x1

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 617
    if-eq v13, v8, :cond_5

    .line 618
    move v14, v15

    .line 619
    move/from16 v17, v15

    .line 634
    :cond_4
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .line 636
    .local v11, nextNextSection:I
    :goto_1
    if-ge v11, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v10, :cond_6

    .line 637
    add-int/lit8 v11, v11, 0x1

    .line 638
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 621
    .end local v11           #nextNextSection:I
    :cond_5
    if-nez v15, :cond_3

    .line 624
    const/16 v17, 0x0

    .line 625
    goto :goto_0

    .line 643
    .restart local v11       #nextNextSection:I
    :cond_6
    int-to-float v0, v14

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 644
    .local v6, fPrev:F
    int-to-float v0, v12

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v5, v20, v21

    .line 645
    .local v5, fNext:F
    if-ne v14, v3, :cond_9

    sub-float v20, p1, v6

    cmpg-float v20, v20, v7

    if-gez v20, :cond_9

    .line 646
    move v8, v13

    .line 652
    :goto_2
    add-int/lit8 v20, v2, -0x1

    move/from16 v0, v20

    if-le v8, v0, :cond_7

    add-int/lit8 v8, v2, -0x1

    .line 654
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    .line 656
    .local v4, expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 685
    .end local v3           #exactSection:I
    .end local v4           #expList:Landroid/widget/ExpandableListView;
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionForFirstPosition:I
    :goto_3
    if-ltz v17, :cond_12

    .line 686
    aget-object v20, v18, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    .line 687
    .local v19, text:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    :cond_8
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    .line 692
    .end local v19           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 648
    .restart local v3       #exactSection:I
    .restart local v5       #fNext:F
    .restart local v6       #fPrev:F
    .restart local v9       #nSections:I
    .restart local v10       #nextIndex:I
    .restart local v11       #nextNextSection:I
    .restart local v12       #nextSection:I
    .restart local v13       #prevIndex:I
    .restart local v14       #prevSection:I
    .restart local v15       #section:I
    .restart local v16       #sectionForFirstPosition:I
    :cond_9
    sub-int v20, v10, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v6

    mul-float v20, v20, v21

    sub-float v21, v5, v6

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v8, v13, v20

    goto/16 :goto_2

    .line 658
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v8

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 661
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AdapterView;->setSelection(I)V

    goto/16 :goto_3

    .line 664
    .end local v3           #exactSection:I
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v8           #index:I
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionForFirstPosition:I
    .end local v17           #sectionIndex:I
    :cond_c
    int-to-float v0, v2

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v8, v0

    .line 666
    .restart local v8       #index:I
    add-int/lit8 v20, v2, -0x1

    move/from16 v0, v20

    if-le v8, v0, :cond_d

    add-int/lit8 v8, v2, -0x1

    .line 668
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    .line 670
    .restart local v4       #expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 678
    .end local v4           #expList:Landroid/widget/ExpandableListView;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_10

    .line 679
    const/16 v17, -0x1

    .restart local v17       #sectionIndex:I
    goto/16 :goto_3

    .line 672
    .end local v17           #sectionIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v8

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 675
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_6

    .line 681
    :cond_10
    const/16 v17, 0x0

    .restart local v17       #sectionIndex:I
    goto/16 :goto_3

    .line 687
    .restart local v19       #text:Ljava/lang/String;
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 690
    .end local v19           #text:Ljava/lang/String;
    :cond_12
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .parameter "alwaysShow"

    .prologue
    const/4 v2, 0x2

    .line 170
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 171
    if-eqz p1, :cond_1

    .line 172
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 175
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 199
    :cond_0
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mPosition:I

    .line 200
    packed-switch p1, :pswitch_data_0

    .line 203
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    :goto_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOverlayFloating()V

    .line 211
    return-void

    .line 196
    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_0

    .line 236
    :goto_0
    :pswitch_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 237
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawableState()V

    .line 238
    return-void

    .line 220
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 224
    :pswitch_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 225
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 229
    :cond_0
    :pswitch_3
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 233
    .local v0, viewWidth:I
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method startPendingDrag()V
    .locals 4

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 764
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 765
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 341
    return-void
.end method
