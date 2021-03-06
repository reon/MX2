.class public Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider;->getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFormData()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clearUsernamePassword()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getDatabaseInstanceSync()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasFormData()Z
    .locals 1

    .prologue
    .line 105
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method
