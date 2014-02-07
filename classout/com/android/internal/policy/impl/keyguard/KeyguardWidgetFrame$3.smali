.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;
.super Ljava/lang/Object;
.source "KeyguardWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidgetDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .registers 2

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)I

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)V

    .line 486
    return-void
.end method
