.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
.super Landroid/database/ContentObserver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserverForSPen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3607
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 3608
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3609
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3612
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3613
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "lock_screen_quick_note"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3615
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3617
    return-void
.end method

.method public onChange(Z)V
    .registers 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3621
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_quick_note"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3a

    move v0, v2

    .line 3624
    .local v0, "SNoteEnable":Z
    :goto_13
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3c

    move v1, v2

    .line 3627
    .local v1, "bHapticEnabled":Z
    :goto_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-eqz v2, :cond_39

    .line 3628
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDoubleTapStateBySettingMenu(Z)V

    .line 3629
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setHapticEnabled(Z)V

    .line 3631
    :cond_39
    return-void

    .end local v0    # "SNoteEnable":Z
    .end local v1    # "bHapticEnabled":Z
    :cond_3a
    move v0, v3

    .line 3621
    goto :goto_13

    .restart local v0    # "SNoteEnable":Z
    :cond_3c
    move v1, v3

    .line 3624
    goto :goto_25
.end method
