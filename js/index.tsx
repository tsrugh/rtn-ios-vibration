import { NativeModules, Platform } from 'react-native';
import { Spec } from './NativeIosVibration';

const LINKING_ERROR =
    `The package 'react-native-awesome-module' doesn't seem to be linked. Make sure: \n\n` +
    Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
    '- You rebuilt the app after installing the package\n' +
    '- You are not using Expo Go\n';

const isTurboModuleEnabled = global.__turboModuleProxy != null;

const RTNIosVibrationModule = isTurboModuleEnabled ? require('./NativeIosVibration').default : NativeModules.RTNIosVibration;


const RTNIosVibration: Spec = RTNIosVibrationModule ? RTNIosVibrationModule : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export const {vibrate, vibrateError} = RTNIosVibration 