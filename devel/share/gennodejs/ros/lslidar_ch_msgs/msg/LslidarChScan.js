// Auto-generated. Do not edit!

// (in-package lslidar_ch_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LslidarChPoint = require('./LslidarChPoint.js');

//-----------------------------------------------------------

class LslidarChScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.altitude = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LslidarChScan
    // Serialize message field [altitude]
    bufferOffset = _serializer.float32(obj.altitude, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = LslidarChPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LslidarChScan
    let len;
    let data = new LslidarChScan(null);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = LslidarChPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 36 * object.points.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lslidar_ch_msgs/LslidarChScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '673b5f47684afb86ac048e756a091cbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Altitude of all the points within this scan
    float32 altitude
    
    # The valid points in this scan sorted by azimuth
    # from 0 to 359.99
    LslidarChPoint[] points
    
    ================================================================================
    MSG: lslidar_ch_msgs/LslidarChPoint
    # Time when the point is captured
    float32 time
    
    # Converted distance in the sensor frame
    float32 x
    float32 y
    float32 z
    
    # Raw measurement from Leishen Ch
    float32 vertical_angle
    float32 azimuth
    float32 distance
    float32 intensity
    uint32  line
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LslidarChScan(null);
    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = LslidarChPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = LslidarChScan;
