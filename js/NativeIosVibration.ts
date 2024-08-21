import { TurboModule, TurboModuleRegistry } from "react-native";

export interface Spec extends TurboModule {
  vibrate(): void;
  vibrateError(): void;
}

export default TurboModuleRegistry.get<Spec>("RTNIosVibration") as Spec | null;