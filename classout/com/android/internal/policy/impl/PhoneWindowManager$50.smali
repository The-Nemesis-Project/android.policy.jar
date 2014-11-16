.class Lcom/android/internal/policy/impl/PhoneWindowManager$50;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .registers 3

    .prologue
    .line 10778
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$50;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$50;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 10781
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$50;->val$key:I

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 10785
    :goto_a
    return-void

    .line 10782
    :catch_b
    move-exception v0

    .line 10783
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method
