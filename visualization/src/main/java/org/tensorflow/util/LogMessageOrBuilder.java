// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorboard/src/event.proto

package org.tensorflow.util;

public interface LogMessageOrBuilder extends
    // @@protoc_insertion_point(interface_extends:tensorboard.LogMessage)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>optional .tensorboard.LogMessage.Level level = 1;</code>
   */
  int getLevelValue();
  /**
   * <code>optional .tensorboard.LogMessage.Level level = 1;</code>
   */
  LogMessage.Level getLevel();

  /**
   * <code>optional string message = 2;</code>
   */
  java.lang.String getMessage();
  /**
   * <code>optional string message = 2;</code>
   */
  com.google.protobuf.ByteString
      getMessageBytes();
}
