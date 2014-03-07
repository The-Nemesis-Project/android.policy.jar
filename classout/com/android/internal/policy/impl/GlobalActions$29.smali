.class Lcom/android/internal/policy/impl/GlobalActions$29;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 4

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$29;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$29;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string p0, "com.sec.android.app.launcher"

    invoke-static {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions;->access$902(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;)V

    .line 358
    return-void
.end method
