.class Lcom/meizu/widget/inputmethod/VoiceView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/inputmethod/VoiceView;->createAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/inputmethod/VoiceView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/inputmethod/VoiceView;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/meizu/widget/inputmethod/VoiceView$1;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$1;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->access$302(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z

    .line 748
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$1;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->access$302(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z

    .line 743
    return-void
.end method
