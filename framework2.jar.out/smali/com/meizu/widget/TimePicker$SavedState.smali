.class Lcom/meizu/widget/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/widget/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/meizu/widget/TimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/widget/TimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mHour:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/widget/TimePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/meizu/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .parameter "superState"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 309
    iput p2, p0, Lcom/meizu/widget/TimePicker$SavedState;->mHour:I

    .line 310
    iput p3, p0, Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/meizu/widget/TimePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/widget/TimePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 301
    iget v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/TimePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 301
    iget v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mHour:I

    return v0
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    iget v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    return-void
.end method
