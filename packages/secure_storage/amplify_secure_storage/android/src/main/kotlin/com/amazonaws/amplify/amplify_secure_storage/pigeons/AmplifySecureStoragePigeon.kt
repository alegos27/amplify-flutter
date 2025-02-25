// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// 
// Autogenerated from Pigeon (v10.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package com.amazonaws.amplify.amplify_secure_storage.pigeons

import android.util.Log
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MessageCodec
import io.flutter.plugin.common.StandardMessageCodec
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

private fun wrapResult(result: Any?): List<Any?> {
  return listOf(result)
}

private fun wrapError(exception: Throwable): List<Any?> {
  if (exception is FlutterError) {
    return listOf(
      exception.code,
      exception.message,
      exception.details
    )
  } else {
    return listOf(
      exception.javaClass.simpleName,
      exception.toString(),
      "Cause: " + exception.cause + ", Stacktrace: " + Log.getStackTraceString(exception)
    )
  }
}

/**
 * Error class for passing custom error details to Flutter via a thrown PlatformException.
 * @property code The error code.
 * @property message The error message.
 * @property details The error details. Must be a datatype supported by the api codec.
 */
class FlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()

/**
 * A pigeon for interacting with the native AmplifySecureStorage implementation
 * on Android.
 *
 * Generated interface from Pigeon that represents a handler of messages from Flutter.
 */
interface AmplifySecureStoragePigeon {
  fun read(namespace: String, key: String, callback: (Result<String?>) -> Unit)
  fun write(namespace: String, key: String, value: String?, callback: (Result<Unit>) -> Unit)
  fun delete(namespace: String, key: String, callback: (Result<Unit>) -> Unit)
  fun removeAll(namespace: String, callback: (Result<Unit>) -> Unit)

  companion object {
    /** The codec used by AmplifySecureStoragePigeon. */
    val codec: MessageCodec<Any?> by lazy {
      StandardMessageCodec()
    }
    /** Sets up an instance of `AmplifySecureStoragePigeon` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: AmplifySecureStoragePigeon?) {
      run {
        val taskQueue = binaryMessenger.makeBackgroundTaskQueue()
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStoragePigeon.read", codec, taskQueue)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val namespaceArg = args[0] as String
            val keyArg = args[1] as String
            api.read(namespaceArg, keyArg) { result: Result<String?> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                val data = result.getOrNull()
                reply.reply(wrapResult(data))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val taskQueue = binaryMessenger.makeBackgroundTaskQueue()
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStoragePigeon.write", codec, taskQueue)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val namespaceArg = args[0] as String
            val keyArg = args[1] as String
            val valueArg = args[2] as String?
            api.write(namespaceArg, keyArg, valueArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val taskQueue = binaryMessenger.makeBackgroundTaskQueue()
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStoragePigeon.delete", codec, taskQueue)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val namespaceArg = args[0] as String
            val keyArg = args[1] as String
            api.delete(namespaceArg, keyArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val taskQueue = binaryMessenger.makeBackgroundTaskQueue()
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStoragePigeon.removeAll", codec, taskQueue)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val namespaceArg = args[0] as String
            api.removeAll(namespaceArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
