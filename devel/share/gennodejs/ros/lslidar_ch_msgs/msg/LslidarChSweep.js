// Auto-generated. Do not edit!

// (in-package lslidar_ch_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LslidarChScan = require('./LslidarChScan.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LslidarChSweep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.scans = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('scans')) {
        this.scans = initObj.scans
      }
      else {
        this.scans = new Array(128).fill(new LslidarChScan());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LslidarChSweep
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [scans] has the right length
    if (obj.scans.length !== 128) {
      throw new Error('Unable to serialize array field scans - length must be 128')
    }
    // Serialize message field [scans]
    obj.scans.forEach((val) => {
      bufferOffset = LslidarChScan.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LslidarChSweep
    let len;
    let data = new LslidarChSweep(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [scans]
    len = 128;
    data.scans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scans[i] = LslidarChScan.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.scans.forEach((val) => {
      length += LslidarChScan.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lslidar_ch_msgs/LslidarChSweep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '578c9c0e0a23b5df86072aa0fe0381c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # The 0th scan is at the bottom
    LslidarChScan[128] scans
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: lslidar_ch_msgs/LslidarChScan
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
    const resolved = new LslidarChSweep(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.scans !== undefined) {
      resolved.scans = new Array(128)
      for (let i = 0; i < resolved.scans.length; ++i) {
        if (msg.scans.length > i) {
          resolved.scans[i] = LslidarChScan.Resolve(msg.scans[i]);
        }
        else {
          resolved.scans[i] = new LslidarChScan();
        }
      }
    }
    else {
      resolved.scans = new Array(128).fill(new LslidarChScan())
    }

    return resolved;
    }
};

module.exports = LslidarChSweep;
