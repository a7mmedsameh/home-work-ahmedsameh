void main() {
  var temperature = 25;

  var light = Lights();
  var ac = AirConditioners();
  var camera = SecurityCameras();

  var group = DeviceGroup([light, ac, camera]);

  group.turnAllOn();

  ac.setTemperature(temperature);
  camera.detectMotion();

  group.turnAllOff();
}

abstract class SmartHomeSystem {
  void on();
  void off();
}

class Lights extends SmartHomeSystem {
  @override
  void off() {
    print("Lights turned OFF");
  }

  @override
  void on() {
    print("Lights turned ON");
  }
}

class AirConditioners extends SmartHomeSystem {
  @override
  void off() {
    print("AC turned OFF");
  }

  @override
  void on() {
    print("AC turned ON");
  }

  void setTemperature(temperature) {
    print("Temperature set to ${temperature}");
  }
}

class SecurityCameras extends SmartHomeSystem {
  @override
  void off() {
    print("Camera turned OFF");
  }

  @override
  void on() {
    print("Camera turned ON");
  }

  void detectMotion() {
    print("Motion detected!");
  }
}

class DeviceGroup {
  final List<SmartHomeSystem> devices;

  DeviceGroup(this.devices);

  void turnAllOn() {
    for (var device in devices) {
      device.on();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.off();
    }
  }
}
