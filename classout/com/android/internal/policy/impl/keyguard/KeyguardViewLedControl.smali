.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;
.super Ljava/lang/Object;
.source "LedController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public off()V
    .registers 7

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 4685
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4687
    .local v2, "out":Ljava/io/FileWriter;
    const-string v1, "0"

    .line 4702
    :try_start_8
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_2f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3f

    .line 4703
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_4d
    .catchall {:try_start_10 .. :try_end_17} :catchall_4a

    .line 4708
    if-eqz v3, :cond_2d

    .line 4710
    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_46

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lock_light"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2d
    :goto_2d
    move-object v2, v3

    .line 4715
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_2e
    :goto_2e
    return-void

    .line 4704
    :catch_2f
    move-exception v0

    .line 4705
    .local v0, "e":Ljava/io/IOException;
    :goto_30
    :try_start_30
    const-string v4, "KeyguardViewLedControl"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3f

    .line 4708
    if-eqz v2, :cond_2e

    .line 4710
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2e

    .line 4711
    :catch_3d
    move-exception v4

    goto :goto_2e

    .line 4708
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3f
    move-exception v4

    :goto_40
    if-eqz v2, :cond_45

    .line 4710
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_48

    .line 4712
    :cond_45
    :goto_45
    throw v4

    .line 4711
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_46
    move-exception v4

    goto :goto_2d

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_48
    move-exception v5

    goto :goto_45

    .line 4708
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_4a
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_40

    .line 4704
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_4d
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_30
.end method

.method public on()V
    .registers 8

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 4685
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4687
    .local v2, "out":Ljava/io/FileWriter;
    const-string v1, "1"

    .line 4702
    :try_start_8
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_42
    .catchall {:try_start_8 .. :try_end_f} :catchall_52

    .line 4703
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_60
    .catchall {:try_start_10 .. :try_end_17} :catchall_5d

    .line 4708
    if-eqz v3, :cond_40

    .line 4710
    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v4, "flashlight"

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewLedControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_light"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_40
    :goto_40
    move-object v2, v3

    .line 4715
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_41
    :goto_41
    return-void

    .line 4704
    :catch_42
    move-exception v0

    .line 4705
    .local v0, "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string v4, "KeyguardViewLedControl"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_52

    .line 4708
    if-eqz v2, :cond_41

    .line 4710
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_41

    .line 4711
    :catch_50
    move-exception v4

    goto :goto_41

    .line 4708
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v4

    :goto_53
    if-eqz v2, :cond_58

    .line 4710
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    .line 4712
    :cond_58
    :goto_58
    throw v4

    .line 4711
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_59
    move-exception v4

    goto :goto_40

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_5b
    move-exception v5

    goto :goto_58

    .line 4708
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_5d
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_53

    .line 4704
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_60
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_43
.end method
