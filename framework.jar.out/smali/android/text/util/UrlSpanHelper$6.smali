.class final Landroid/text/util/UrlSpanHelper$6;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showWarning(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openUri:Landroid/net/Uri;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 508
    return-void
.end method
