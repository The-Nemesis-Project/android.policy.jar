.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedEventDivider:Landroid/widget/ImageView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->CALL_PKG:Ljava/lang/String;

    .line 324
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    .line 326
    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->EMAIL_PKG:Ljava/lang/String;

    .line 333
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MISSED_EVENT_UPDATE:I

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_CALL_EMAIL:I

    .line 337
    const/16 v0, 0x7b

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_MSG:I

    .line 339
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 341
    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 355
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    .line 370
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 384
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MissedEvent ()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I
    .registers 7
    .param p1, "mode"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 470
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 473
    .local v0, "mNM":Landroid/app/NotificationManager;
    if-nez v0, :cond_f

    .line 496
    :cond_e
    :goto_e
    return v1

    .line 476
    :cond_f
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v2, :cond_52

    .line 477
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 484
    :cond_1b
    :goto_1b
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v2, :cond_6e

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6e

    .line 485
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 486
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_e

    .line 478
    :cond_52
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v2, :cond_61

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 480
    :cond_61
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v2, :cond_1b

    .line 481
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 489
    :cond_6e
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-eq p1, v2, :cond_76

    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v2, :cond_e

    :cond_76
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_e

    .line 491
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 492
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_a4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_e
.end method

.method private handleMissedEventUpdate()V
    .registers 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 414
    return-void
.end method

.method private updateMissedEvent()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/16 v5, 0x3e7

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "nCallCount":I
    const/4 v3, 0x0

    .line 419
    .local v3, "nMsgCount":I
    const/4 v0, 0x0

    .line 420
    .local v0, "bUpdatedCallCount":Z
    const/4 v1, 0x0

    .line 422
    .local v1, "bUpdatedMsgCount":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-nez v4, :cond_12

    .line 466
    :cond_11
    :goto_11
    return-void

    .line 425
    :cond_12
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v2

    .line 426
    if-le v2, v5, :cond_ba

    .line 427
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 431
    :goto_1c
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v3

    .line 432
    if-le v3, v5, :cond_be

    .line 433
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 437
    :goto_26
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 438
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_58
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 442
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_8a
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-nez v4, :cond_c2

    .line 446
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :goto_93
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-nez v4, :cond_d3

    .line 452
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :goto_9c
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    if-eqz v4, :cond_b5

    .line 458
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e4

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e4

    .line 460
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    :cond_b5
    :goto_b5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getCallMsgTTSMessage()V

    goto/16 :goto_11

    .line 429
    :cond_ba
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    goto/16 :goto_1c

    .line 435
    :cond_be
    iput v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    goto/16 :goto_26

    .line 448
    :cond_c2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_93

    .line 454
    :cond_d3
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9c

    .line 462
    :cond_e4
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b5
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .registers 10

    .prologue
    const v8, 0x104093a

    const v7, 0x1040939

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 500
    const-string v0, ""

    .line 501
    .local v0, "TTSMessage":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-lez v1, :cond_59

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-lez v1, :cond_59

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x104093b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 525
    :goto_58
    return-void

    .line 508
    :cond_59
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-le v1, v5, :cond_73

    .line 509
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 512
    :cond_73
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-le v1, v5, :cond_8d

    .line 513
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 516
    :cond_8d
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-ne v1, v5, :cond_a0

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040937

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 519
    :cond_a0
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-ne v1, v5, :cond_b3

    .line 520
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040938

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 523
    :cond_b3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040936

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_58
.end method

.method public getMissedEventCount()I
    .registers 3

    .prologue
    .line 528
    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    sget-object v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 397
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 400
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 408
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 390
    const v0, 0x10202b0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 391
    const v0, 0x10202b2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 392
    const v0, 0x10202b1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    .line 393
    return-void
.end method
