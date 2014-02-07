.class Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$5;
.super Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startStandbyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .param p2, "x0"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .registers 1

    .prologue
    .line 547
    return-void
.end method
