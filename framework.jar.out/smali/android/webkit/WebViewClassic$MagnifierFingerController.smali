.class Landroid/webkit/WebViewClassic$MagnifierFingerController;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierFingerController"
.end annotation


# instance fields
.field private final mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 691
    return-void
.end method

.method private show(III)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "handleId"

    .prologue
    .line 708
    const/high16 v1, 0x3f80

    .line 709
    .local v1, scale:F
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)I

    move-result v2

    #calls: Landroid/webkit/WebViewClassic;->nativeIsHandleLeft(II)Z
    invoke-static {v2, p3}, Landroid/webkit/WebViewClassic;->access$1300(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mStartFontSize:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1400(Landroid/webkit/WebViewClassic;)I

    move-result v0

    .line 710
    .local v0, fontsize:I
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    .line 711
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->MAGNIFY_TEXT_MAX_SIZE:F
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 713
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->MAGNIFY_TEXT_MAX_SIZE:F
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 715
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    .line 716
    return-void

    .line 709
    .end local v0           #fontsize:I
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mEndFontSize:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1500(Landroid/webkit/WebViewClassic;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 740
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    .line 694
    const/4 v6, 0x4

    new-array v1, v6, [I

    .line 695
    .local v1, handles:[I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V
    invoke-static {v6, v1}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;[I)V

    .line 696
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    .line 697
    .local v3, rectLeft:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x1

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v5

    .line 698
    .local v5, rectTop:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x2

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v4

    .line 699
    .local v4, rectRight:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x3

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v2

    .line 700
    .local v2, rectBottom:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    int-to-float v8, v4

    int-to-float v9, v2

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 701
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 702
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    .line 705
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    goto :goto_0
.end method

.method public showSelecting()V
    .locals 8

    .prologue
    .line 723
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1800(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    if-ne v6, v7, :cond_0

    const/4 v1, 0x0

    .line 725
    .local v1, handleId:I
    :goto_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int v2, v6, v7

    .line 726
    .local v2, x:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1900(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v6

    iget-object v6, v6, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v6, Landroid/graphics/PointF;->y:F

    .line 727
    .local v4, y1:F
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1900(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v6

    iget-object v6, v6, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v6, Landroid/graphics/PointF;->y:F

    .line 728
    .local v5, y2:F
    sub-float v0, v5, v4

    .line 729
    .local v0, h:F
    const v6, 0x3f19999a

    mul-float/2addr v6, v0

    add-float/2addr v6, v4

    float-to-int v3, v6

    .line 730
    .local v3, y:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int v3, v6, v7

    .line 731
    invoke-direct {p0, v2, v3, v1}, Landroid/webkit/WebViewClassic$MagnifierFingerController;->show(III)V

    .line 732
    return-void

    .line 723
    .end local v0           #h:F
    .end local v1           #handleId:I
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #y1:F
    .end local v5           #y2:F
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showSingleWord(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebViewClassic$MagnifierFingerController;->show(III)V

    .line 720
    return-void
.end method
