import Foundation

var menuItem = 0
var sportCar = SportCar(
    mark: "bmw x5",
    year: "2021",
    isEngineRun: false,
    isWindowOpen: false)
var settingCar: Setting = SettingsCar(car: sportCar)


repeat {
    print("-= Menu =-")
    print("1 - run car")
    print("2 - stop cur")
    print("3 - open windows")
    print("4 - close windows")
    print("0 - Exit")
    print("Enter menu item: ")
    
    menuItem = Int (readLine() ?? "") ?? 0
    print("\n")
    try settingsCars(menuItem, settingCar)
    print("\n")
    
} while menuItem != 0

private func settingsCars(_ menuItem: Int,_ carSetting: Setting) throws {
    do {
        switch menuItem {
        case 1:
           try carSetting.runCar()
            break
        case 2:
            try carSetting.stopCar()
            break
        case 3:
            try carSetting.openWindow()
            break
        case 4:
            try carSetting.closeWindow()
            break
        default:
            break
        }
    } catch CarsError.CarIsRun {
        print("\(sportCar.mark) has allready run")
        
    } catch CarsError.CarIsStoped {
        print("\(sportCar.mark) has allready stoped")
        
    } catch CarsError.CarsWindowIsClosed {
        print("windows \(sportCar.mark) has allready clossed")
        
    } catch CarsError.CarsWindowIsOppend {
        print("windows \(sportCar.mark) has allready opened")
    }
}
