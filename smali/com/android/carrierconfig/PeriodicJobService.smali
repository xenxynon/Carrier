.class public final Lcom/android/carrierconfig/PeriodicJobService;
.super Landroid/app/job/JobService;
.source "PeriodicJobService.java"


# static fields
.field private static final RETRY_DOWNLOAD_TIME:J

.field private static mCarrierUpdateVersion:I

.field private static mContext:Landroid/content/Context;

.field private static mJobScheduler:Landroid/app/job/JobScheduler;

.field private static mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/carrierconfig/PeriodicJobService;->RETRY_DOWNLOAD_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelDownloadJob(Landroid/content/Context;)V
    .locals 1

    .line 49
    sget-object p0, Lcom/android/carrierconfig/PeriodicJobService;->mJobScheduler:Landroid/app/job/JobScheduler;

    const/16 v0, 0x7cf

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public static schedulePeriodicDownloadJob(Landroid/content/Context;Ljava/net/URL;I)V
    .locals 4

    .line 27
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v1, 0x7cf

    .line 28
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    const-string v3, "PeriodicJobService"

    if-eqz v2, :cond_0

    const-string p0, "download job already scheduled."

    .line 29
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 32
    :cond_0
    sput-object p1, Lcom/android/carrierconfig/PeriodicJobService;->mUrl:Ljava/net/URL;

    .line 33
    sput-object p0, Lcom/android/carrierconfig/PeriodicJobService;->mContext:Landroid/content/Context;

    .line 34
    sput p2, Lcom/android/carrierconfig/PeriodicJobService;->mCarrierUpdateVersion:I

    .line 35
    sput-object v0, Lcom/android/carrierconfig/PeriodicJobService;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 36
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance p2, Landroid/content/ComponentName;

    const-class v2, Lcom/android/carrierconfig/PeriodicJobService;

    invoke-direct {p2, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p1, v1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v1, Lcom/android/carrierconfig/PeriodicJobService;->RETRY_DOWNLOAD_TIME:J

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x3

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const-string p0, "schedule download job failed!"

    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "schedule download job"

    .line 44
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x7cf

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/android/carrierconfig/PeriodicJobService;->mUrl:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    sget-object v1, Lcom/android/carrierconfig/PeriodicJobService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;-><init>(Landroid/app/job/JobService;Landroid/content/Context;)V

    sget-object p0, Lcom/android/carrierconfig/PeriodicJobService;->mUrl:Ljava/net/URL;

    sget v1, Lcom/android/carrierconfig/PeriodicJobService;->mCarrierUpdateVersion:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->downloadFileFromServer(Ljava/net/URL;Landroid/app/job/JobParameters;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
