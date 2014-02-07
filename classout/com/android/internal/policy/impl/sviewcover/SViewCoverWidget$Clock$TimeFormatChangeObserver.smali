.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeFormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .registers 3

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 253
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;Z)Z

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    .line 259
    return-void
.end method
