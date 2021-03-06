.class Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# static fields
.field private static final QUERY_TIMEOUT:I = 0x3e7

.field private static final QUERY_WAIT_TIME:I = 0x3e8


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mCwList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field private mStartTime:J

.field private mTimeOut:Z

.field final synthetic this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 276
    .local v1, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 278
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private notifyAndMove(IZ)V
    .locals 6
    .parameter "token"
    .parameter "isFinal"

    .prologue
    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v2, listensCode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 430
    .local v0, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 432
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v3, p1, v4, v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0

    .line 438
    .end local v0           #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_1
    if-eqz p2, :cond_2

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    #calls: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->release()V
    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V

    .line 440
    :cond_2
    return-void
.end method

.method private writeTimeOutToFile(Ljava/lang/String;)V
    .locals 10
    .parameter "str"

    .prologue
    .line 258
    const-string v4, "/data/data/com.android.phone/citimeout.txt"

    .line 260
    .local v4, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "/data/data/com.android.phone/citimeout.txt"

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v5, randomFile:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 262
    .local v2, fileLength:J
    long-to-double v6, v2

    const-wide/high16 v8, 0x4120

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 263
    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 265
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nQuery ci cost time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #fileLength:J
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CallerInfoAsyncQuery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeTimeOutToFile fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 216
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 283
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_0

    .line 284
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 302
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v3, "CallerInfoAsyncQuery"

    const-string v4, "Handle time out processing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v3, "TimeOut happend"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->writeTimeOutToFile(Ljava/lang/String;)V

    .line 291
    iput-boolean v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mTimeOut:Z

    .line 292
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 293
    .local v2, token:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 295
    .local v1, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 296
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/CallerInfo;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    iput-boolean v5, v0, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    .line 299
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 301
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->notifyAndMove(IZ)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 320
    move-object v1, p2

    check-cast v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 321
    .local v1, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v1, :cond_0

    .line 326
    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mTimeOut:Z

    if-eqz v4, :cond_2

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mStartTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->writeTimeOutToFile(Ljava/lang/String;)V

    .line 352
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 353
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v5, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_2
    const/16 v4, 0x3e7

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 362
    :cond_3
    iget v4, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 365
    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 417
    .local v0, ciQuery:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v4, :cond_8

    .line 418
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 424
    :goto_3
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->notifyAndMove(IZ)V

    goto :goto_0

    .line 366
    .end local v0           #ciQuery:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    iget v4, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 367
    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .restart local v0       #ciQuery:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_2

    .line 369
    .end local v0           #ciQuery:Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v4, p3, v5}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoViaNumber(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 372
    .restart local v0       #ciQuery:Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 374
    .local v3, newCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-eq v3, v0, :cond_7

    .line 375
    move-object v0, v3

    .line 406
    :cond_7
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

<<<<<<< VENDOR #Conflict 0
    const-string v5, "country_detector"
======= #Conflict 0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->isEmptyHook(Ljava/lang/CharSequence;)Z
>>>>>>> BOSP #Conflict 0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 409
    .local v2, detector:Landroid/location/CountryDetector;
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

<<<<<<< VENDOR #Conflict 1
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;
======= #Conflict 1
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfo;->updateGeoDescriptionAndLabel(Landroid/content/Context;Ljava/lang/String;)V
>>>>>>> BOSP #Conflict 1

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2

    .line 420
    .end local v2           #detector:Landroid/location/CountryDetector;
    .end local v3           #newCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CallerInfo;->copyFrom(Lcom/android/internal/telephony/CallerInfo;)V

    .line 421
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    goto :goto_3
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 226
    if-eqz p2, :cond_4

    instance-of v2, p2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 227
    check-cast v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 229
    .local v0, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v4, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v5, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v2, v6, :cond_3

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCwList:Ljava/util/ArrayList;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v2, v4, :cond_2

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mStartTime:J

    .line 237
    const/16 v2, 0x3e7

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 238
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 239
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 254
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v0           #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :goto_1
    return-void

    .line 241
    .restart local v0       #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_2
    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v5, :cond_1

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eq v2, v6, :cond_1

    goto :goto_1

    .line 246
    :cond_3
    const-string v2, "CallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQuery: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    .end local v0           #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_4
    const-string v2, "CallerInfoAsyncQuery"

    const-string v3, "Cookie is null or isn\'t a object of CookieWrapper, ignoring startQuery() request."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isEmptyHook(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    return v0
.end method
