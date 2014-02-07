.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 2

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v6, 0x0

    .line 890
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    .line 914
    :goto_a
    return-void

    .line 892
    :pswitch_b
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;

    move-result-object v1

    .line 893
    .local v1, "flatMotionContext":Landroid/hardware/scontext/SContextFlatMotion;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextFlatMotion;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_66

    .line 905
    :goto_16
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSContextChanged() flat motion mIsFlatMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "pref"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 907
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 908
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "flat"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    .line 895
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :pswitch_53
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    goto :goto_16

    .line 900
    :pswitch_5a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    goto :goto_16

    .line 890
    :pswitch_data_60
    .packed-switch 0x14
        :pswitch_b
    .end packed-switch

    .line 893
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_53
        :pswitch_5a
    .end packed-switch
.end method
