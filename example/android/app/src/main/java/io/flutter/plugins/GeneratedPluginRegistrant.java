package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import flutter.moum.airplane_mode_detection.AirplaneModeDetectionPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    AirplaneModeDetectionPlugin.registerWith(registry.registrarFor("flutter.moum.airplane_mode_detection.AirplaneModeDetectionPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
