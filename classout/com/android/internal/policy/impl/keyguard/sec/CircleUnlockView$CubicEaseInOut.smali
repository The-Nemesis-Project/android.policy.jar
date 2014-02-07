.class public Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$CubicEaseInOut;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubicEaseInOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V
    .registers 2

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$CubicEaseInOut;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$CubicEaseInOut;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 7
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x40000000

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000

    .line 642
    div-float/2addr p1, v2

    const/high16 v1, 0x3f800000

    cmpg-float v1, p1, v1

    if-gez v1, :cond_13

    .line 643
    mul-float v1, v2, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float v0, v1, v3

    .line 647
    .local v0, "r":F
    :goto_12
    return v0

    .line 645
    .end local v0    # "r":F
    :cond_13
    sub-float/2addr p1, v4

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    add-float v0, v1, v3

    .restart local v0    # "r":F
    goto :goto_12
.end method
