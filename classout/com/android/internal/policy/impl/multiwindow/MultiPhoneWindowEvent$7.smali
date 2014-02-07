.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;
.super Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2

    .prologue
    .line 3222
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onArrangeStateUpdate(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3224
    return-void
.end method

.method public onMinimizeUpdate(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3223
    return-void
.end method
