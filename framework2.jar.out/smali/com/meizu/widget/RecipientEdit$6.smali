.class Lcom/meizu/widget/RecipientEdit$6;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1177
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1178
    .local v3, text1:Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1179
    .local v4, text2:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1180
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    .local v1, data:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v5}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    .line 1182
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    invoke-virtual {v0, p3}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->isGroupData(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1183
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->addGroupData(J)I
    invoke-static {v5, p4, p5}, Lcom/meizu/widget/RecipientEdit;->access$2600(Lcom/meizu/widget/RecipientEdit;J)I

    .line 1192
    :goto_0
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;
    invoke-static {v5}, Lcom/meizu/widget/RecipientEdit;->access$2700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1193
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;
    invoke-static {v5}, Lcom/meizu/widget/RecipientEdit;->access$2700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;->onRecipientFirstAdd()V

    .line 1195
    :cond_0
    return-void

    .line 1185
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1186
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v5, v2}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 1188
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$6;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v5, v1, v2}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method
