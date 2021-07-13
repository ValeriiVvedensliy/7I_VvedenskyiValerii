class SportCar: Car {
    var mark: String
    var year: String
    var isEngineRun: Bool
    var isWindowOpen: Bool
    
    init(mark: String, year: String, isEngineRun: Bool, isWindowOpen: Bool) {
        self.mark = mark
        self.year = year
        self.isEngineRun = isEngineRun
        self.isWindowOpen = isWindowOpen
    }
}
