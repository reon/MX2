.class Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MzHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerShadowBuilder"
.end annotation


# instance fields
.field private mShadowView:Landroid/view/View;

.field final synthetic this$0:Lcom/meizu/widget/MzHorizontalListView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzHorizontalListView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "shadowView"
    .parameter "position"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    .line 520
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 521
    iput-object p2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    .line 522
    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 527
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 529
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 530
    .local v1, width:I
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 532
    .local v0, height:I
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 534
    iget v2, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 535
    return-void
.end method
