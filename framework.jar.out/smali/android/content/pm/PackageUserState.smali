.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:I

.field public enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public guestHideComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installed:Z

.field public notLaunched:Z

.field public stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 45
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 46
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 47
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 48
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    .line 50
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    .line 52
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->guestHideComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->guestHideComponents:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_0
    iput-object v1, p0, Landroid/content/pm/PackageUserState;->guestHideComponents:Ljava/util/HashSet;

    .line 54
    return-void

    :cond_1
    move-object v0, v1

    .line 48
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 50
    goto :goto_1
.end method
