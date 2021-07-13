
class SettingsCar: Setting {
    private var car: Car
    
    init(car: Car?) {
        guard let car = car else {
            fatalError()
        }
        
        self.car = car
    }
    
    func runCar() throws{
        if car.isEngineRun {
            throw CarsError.CarIsRun
        }
        
        print("\(car.mark) is running")
    }
    
    func stopCar() throws {
        if car.isEngineRun {
            print("\(car.mark) stoped")
        }
        else {
            throw CarsError.CarIsStoped
        }
    }
    
    func openWindow() throws {
        if car.isWindowOpen {
            throw CarsError.CarsWindowIsOppend
        }
        
        print("windows \(car.mark) opened")
    }
    
    func closeWindow() throws {
        if car.isWindowOpen {
            print("windows \(car.mark) clossed")
        }
        else {
            throw CarsError.CarsWindowIsClosed
        }
    }
}
