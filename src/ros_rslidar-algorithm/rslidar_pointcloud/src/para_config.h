#pragma once
#ifndef _PARA_CONFIG_H_
#define _PARA_CONFIG_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <errno.h>
#include <ctype.h>
#define KEY_VALLEN (128)
namespace Skywell
{
class Config
{
public:
  typedef struct ConfigParams
  {
    float roll_x;
    float pitch_y;
    float yaw_z;

  } ConfigParams;

  Config()
  {
    configParams_.roll_x = 0.0f;
    configParams_.pitch_y = 0.0f;
    configParams_.yaw_z = 0.0f;
  };

  char* a_trim(char* szOutput, const char* szInput);
  char* r_trim(char* szOutput, const char* szInput);
  char* l_trim(char* szOutput, const char* szInput);
  int GetProfileInt(char* profile, char* AppName, char* KeyName);
  int GetProfileString(char* profile, char* AppName, char* KeyName, char* KeyVal);
  float GetProfileFloat(char* profile, char* AppName, char* KeyName);

  inline void set_path(char* path)
  {
    strcpy(configProfilePath_, path);
  };

  void init_config_params(char* AppName);

public:
  ConfigParams configParams_;

private:
  char* configProfilePath_;
};

};  // namespace Skywell

#endif _PARA_CONFIG_H_  // namespace Skywell
