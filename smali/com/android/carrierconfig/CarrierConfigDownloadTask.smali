.class public final Lcom/android/carrierconfig/CarrierConfigDownloadTask;
.super Ljava/lang/Object;
.source "CarrierConfigDownloadTask.java"


# instance fields
.field private final ACTION_ONLINE_XML_DOWNLOADED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final jobService:Landroid/app/job/JobService;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/android/carrierconfig/CarrierConfigDownloadTask;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetjobService(Lcom/android/carrierconfig/CarrierConfigDownloadTask;)Landroid/app/job/JobService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->jobService:Landroid/app/job/JobService;

    return-object p0
.end method

.method constructor <init>(Landroid/app/job/JobService;Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarrierConfigDownloadTask"

    .line 21
    iput-object v0, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->TAG:Ljava/lang/String;

    const-string v0, "android.carrier.action.ONLINE_XML_DOWNLOADED"

    .line 22
    iput-object v0, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->ACTION_ONLINE_XML_DOWNLOADED:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->jobService:Landroid/app/job/JobService;

    .line 29
    iput-object p2, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/net/URL;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 55
    :try_start_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 56
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 58
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "Online.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 63
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_0

    :try_start_4
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_3

    :try_start_6
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 54
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_5

    :try_start_9
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz p1, :cond_6

    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
.end method

.method public downloadFileFromServer(Ljava/net/URL;Landroid/app/job/JobParameters;I)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;-><init>(Lcom/android/carrierconfig/CarrierConfigDownloadTask;Ljava/net/URL;Landroid/app/job/JobParameters;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
