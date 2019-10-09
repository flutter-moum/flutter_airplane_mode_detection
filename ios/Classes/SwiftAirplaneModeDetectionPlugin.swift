import Flutter
import UIKit
import Network

@available(iOS 12.0, *)
public class SwiftAirplaneModeDetectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "airplane_mode_detection", binaryMessenger: registrar.messenger())
    let instance = SwiftAirplaneModeDetectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
     if (call.method == "getPlatformVersion"){
                  result("iOS" + UIDevice.current.systemVersion)
              }else if (call.method == "detectAirplaneMode") {
      self.detectAirplaneMode { (flag) in
          result(flag)
      }}

     else if (call.method == "stateAirplaneMode") {
      (self.stateAirplaneMode( completion: { (msg) in
          result(msg)
      }))
      }

      }

            public override init() {
                  super.init()
              }

      func detectAirplaneMode(completion: @escaping (Bool) -> Void) {

                  let monitor = NWPathMonitor()

                         monitor.pathUpdateHandler = { path in

                          completion(path.availableInterfaces.count == 0)
                         }
          let queue = DispatchQueue(label: "Monitor", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
                  monitor.start(queue: queue)

              }

      func stateAirplaneMode(completion: @escaping (String) -> Void){
          let monitor = NWPathMonitor()
          var msg: String = ""


          monitor.pathUpdateHandler = { path in
              if path.availableInterfaces.count == 0{
                  msg = "Flight Mode"
                  monitor.cancel()

              }
              else {
                  msg = "Not Flight Mode"
                  monitor.cancel()

              }
              completion(msg)
          }

          let queue = DispatchQueue(label: "Monitor", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
          monitor.start(queue: queue)

      }
  }


