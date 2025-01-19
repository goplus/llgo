package runtime

// llgo:skip gcStart gcMarkDone gcSweep gcMarkTermination gcBgMarkStartWorkers gcBgMarkPrepare gcBgMarkWorker gcMarkWorkAvailable gcResetMarkState
type _mgcSkip struct{}

type gcMarkWorkerMode int
