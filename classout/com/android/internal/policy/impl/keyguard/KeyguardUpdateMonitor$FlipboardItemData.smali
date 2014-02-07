.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlipboardItemData"
.end annotation


# instance fields
.field public appPackage:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public getMore:I

.field public id:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public streamId:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public time:J

.field public title:Ljava/lang/String;

.field public wallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V
    .registers 4
    .param p1, "itemData"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .prologue
    .line 1502
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    .line 1487
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    .line 1488
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    .line 1489
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    .line 1490
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    .line 1491
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    .line 1492
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    .line 1493
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    .line 1494
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    .line 1495
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->setData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V

    .line 1504
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "wallpaperPath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "author"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "appPackage"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "target"    # Ljava/lang/String;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "streamId"    # Ljava/lang/String;
    .param p11, "getMore"    # I

    .prologue
    .line 1498
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    .line 1487
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    .line 1488
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    .line 1489
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    .line 1490
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    .line 1491
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    .line 1492
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    .line 1493
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    .line 1494
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    .line 1495
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    .line 1499
    invoke-virtual/range {p0 .. p11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1500
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    .registers 13

    .prologue
    .line 1526
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public clone(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    .registers 3
    .param p1, "itemData"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .prologue
    .line 1530
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->clone()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)V
    .registers 14
    .param p1, "itemData"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .prologue
    .line 1521
    iget-object v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    iget-object v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    iget v11, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1523
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "wallpaperPath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "author"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "appPackage"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "target"    # Ljava/lang/String;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "streamId"    # Ljava/lang/String;
    .param p11, "getMore"    # I

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    .line 1509
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    .line 1510
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    .line 1511
    iput-wide p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    .line 1512
    iput-object p6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    .line 1513
    iput-object p7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    .line 1514
    iput-object p8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    .line 1515
    iput-object p9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    .line 1516
    iput-object p10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    .line 1517
    iput p11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    .line 1518
    return-void
.end method
