.class public Lcom/samsung/voiceshell/WakeUpUtils;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUpUtils"

.field private static final VERSION:Ljava/lang/String; = "2.1.6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    const-string v0, "2.1.6"

    return-object v0
.end method

.method public static IsFileExist(Ljava/lang/String;)Z
    .registers 5
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "fileHandle":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 29
    const-string v1, "WakeUpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFileExist: There is no ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    .line 33
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x1

    goto :goto_2a
.end method

.method public static ReadString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "mFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 43
    const-string v6, "WakeUpUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadString: There is no ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2a
    :goto_2a
    return-object v5

    .line 47
    :cond_2b
    const/4 v3, 0x0

    .line 50
    .local v3, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_2c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_5e
    .catchall {:try_start_2c .. :try_end_31} :catchall_6e

    .line 51
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 53
    .local v0, "data":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_3d} :catch_81
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3d} :catch_7e
    .catchall {:try_start_31 .. :try_end_3d} :catchall_7b

    .line 55
    const/4 v3, 0x0

    .line 57
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_3e
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_4e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_5e
    .catchall {:try_start_3e .. :try_end_43} :catchall_6e

    .line 69
    if-eqz v3, :cond_47

    .line 73
    :try_start_45
    throw v3
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_46} :catch_49

    .line 74
    const/4 v3, 0x0

    :cond_47
    :goto_47
    move-object v5, v6

    .line 79
    goto :goto_2a

    .line 76
    :catch_49
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_47

    .line 59
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4e
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_6e

    .line 69
    if-eqz v3, :cond_2a

    .line 73
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    .line 74
    const/4 v3, 0x0

    goto :goto_2a

    .line 76
    :catch_59
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a

    .line 63
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5e
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6e

    .line 69
    if-eqz v3, :cond_2a

    .line 73
    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_69

    .line 74
    const/4 v3, 0x0

    goto :goto_2a

    .line 76
    :catch_69
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_6e
    move-exception v5

    :goto_6f
    if-eqz v3, :cond_75

    .line 73
    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_76

    .line 74
    const/4 v3, 0x0

    .line 79
    :cond_75
    :goto_75
    throw v5

    .line 76
    :catch_76
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_75

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catchall_7b
    move-exception v5

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_6f

    .line 63
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_7e
    move-exception v1

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_5f

    .line 59
    .end local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_81
    move-exception v1

    move-object v3, v4

    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_4f
.end method
