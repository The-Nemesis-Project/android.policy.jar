.class Lcom/android/internal/policy/impl/GlobalActions$4$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$4;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$4;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$4;)V
    .registers 2

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$4$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 720
    return-void
.end method
