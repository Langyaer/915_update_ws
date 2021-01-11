#include "para_config.h"
#include <ctype.h>

// char *configProfilePath = "/src/lslidar_ch/config/para_config";

char* configProfilePath = "/home/acan/work/lei_ws_katkin/src/lslidar_ch/config/para_config";
namespace Skywell
{
/*   ȥ����ո�   */
char* Config::l_trim(char* szOutput, const char* szInput)
{
  assert(szInput != NULL);
  assert(szOutput != NULL);
  assert(szOutput != szInput);
  for (NULL; *szInput != '\0' && isspace(*szInput); ++szInput)
  {
    ;
  }
  return strcpy(szOutput, szInput);
}

/*   ȥ���ҿո�   */
char* Config::r_trim(char* szOutput, const char* szInput)
{
  char* p = NULL;
  assert(szInput != NULL);
  assert(szOutput != NULL);
  assert(szOutput != szInput);
  strcpy(szOutput, szInput);
  for (p = szOutput + strlen(szOutput) - 1; p >= szOutput && isspace(*p); --p)
  {
    ;
  }
  *(++p) = '\0';
  return szOutput;
}

/*   ??????????   */
char* Config::a_trim(char* szOutput, const char* szInput)
{
  char* p = NULL;
  assert(szInput != NULL);
  assert(szOutput != NULL);
  l_trim(szOutput, szInput);
  for (p = szOutput + strlen(szOutput) - 1; p >= szOutput && isspace(*p); --p)
  {
    ;
  }
  *(++p) = '\0';
  return szOutput;
}

/*@para
 *profile:�����ļ���ַ
 *AppName�������ļ�������ؼ���[fusion]
 *KeyName:�����ļ�������ؼ����µ����ñ����ؼ���tcpClientIp
 *KeyVal:���ܲ�������������
 *ret:�ɹ�����0,ʧ�ܷ���-1
 *GetProfileString(configProfilePath, "tcpClient", "tcpClientIp", configParams.tcpClientIp);
 */
int Config::GetProfileString(char* profile, char* AppName, char* KeyName, char* KeyVal)
{
  char appname[32], keyname[32];
  char *buf, *c;
  char buf_i[KEY_VALLEN], buf_o[KEY_VALLEN];
  FILE* fp;
  int found = 0; /* 1 AppName 2 KeyName */
  if ((fp = fopen(profile, "r")) == NULL)
  {
    printf("openfile [%s] error [%s]\n", profile, strerror(errno));
    return (-1);
  }
  fseek(fp, 0, SEEK_SET);
  memset(appname, 0, sizeof(appname));
  sprintf(appname, "[%s]", AppName);

  while (!feof(fp) && fgets(buf_i, KEY_VALLEN, fp) != NULL)
  {
    l_trim(buf_o, buf_i);
    if (strlen(buf_o) <= 0)
      continue;
    buf = NULL;
    buf = buf_o;
    if (found == 0)
    {
      if (buf[0] != '[')
      {
        continue;
      }
      else if (strncmp(buf, appname, strlen(appname)) == 0)
      {
        found = 1;
        continue;
      }
    }
    else if (found == 1)
    {
      if (buf[0] == '#')
      {
        continue;
      }
      else if (buf[0] == '[')
      {
        break;
      }
      else
      {
        if ((c = (char*)strchr(buf, '=')) == NULL)
          continue;
        memset(keyname, 0, sizeof(keyname));
        sscanf(buf, "%[^=|^ |^\t]", keyname);
        if (strcmp(keyname, KeyName) == 0)
        {
          sscanf(++c, "%[^\n]", KeyVal);
          char* KeyVal_o = (char*)malloc(strlen(KeyVal) + 1);
          if (KeyVal_o != NULL)
          {
            memset(KeyVal_o, 0, sizeof(KeyVal_o));
            a_trim(KeyVal_o, KeyVal);
            if (KeyVal_o && strlen(KeyVal_o) > 0)
              strcpy(KeyVal, KeyVal_o);
            free(KeyVal_o);
            KeyVal_o = NULL;
          }
          found = 2;
          break;
        }
        else
        {
          continue;
        }
      }
    }
  }
  fclose(fp);
  if (found == 2)
    return (0);
  else
    return (-1);
}
/*@para
 *���ܣ�������������
 *profile:�����ļ�·����ַ
 *AppName�������ļ�������ؼ���[fusion]
 *KeyName:�����ļ�������ؼ����µ����ñ����ؼ���tcpClientIp
 *ret:�ɹ�������������,ʧ�ܷ���-1
 *configParams.tcpClientPort = GetProfileInt(configProfilePath, "tcpClient", "tcpClientPort");
 */
int Config::GetProfileInt(char* profile, char* AppName, char* KeyName)
{
  char configvalues[KEY_VALLEN] = { '\0' };
  bzero(configvalues, KEY_VALLEN);
  GetProfileString(profile, AppName, KeyName, configvalues);
  return atoi(configvalues);
}
/*@para��
 *���ܣ����õ����ȸ�������
 *profile:�����ļ�·����ַ
 *AppName�������ļ�������ؼ���[fusion]
 *KeyName:�����ļ�������ؼ����µ����ñ����ؼ���tcpClientIp
 *ret:�ɹ�������������,ʧ�ܷ���-1
 *configParams.tcpClientPort = GetProfileInt(configProfilePath, "tcpClient", "tcpClientPort");
 */
float Config::GetProfileFloat(char* profile, char* AppName, char* KeyName)
{
  char configvalues[KEY_VALLEN] = { '\0' };
  bzero(configvalues, KEY_VALLEN);
  GetProfileString(profile, AppName, KeyName, configvalues);
  return atof(configvalues);
}

/* void main()
{
   char ip[16];
   GetProfileString("./cls.conf", "cls_server", "ip", ip);
   printf("%s\n",ip);
} */

// ConfigParams configParams;
/*   x_coor=
y_coor=0.0
z_coor=0.0
#ת��ʱ���������귽��һ��Ϊ������λ�Ƕ�
roll_x=0.0  ����ת�����ҹ���Ϊ�����������Ϊ��
pitch_y=0.0 ����ת, ����Ϊ��������Ϊ��
yaw_z=0.0   ����ת������Ϊ��������Ϊ�� */

void Config::init_config_params(char* AppName)
{
  configParams_.roll_x = GetProfileFloat(configProfilePath_, AppName, "roll_x");
  configParams_.pitch_y = GetProfileFloat(configProfilePath_, AppName, "pitch_y");
  configParams_.yaw_z = GetProfileFloat(configProfilePath_, AppName, "yaw_z");
  printf("configParams.roll_x:%f\n,configParams.pitch_y: % f\n,configParams.yaw_z: % f\n ", configParams_.roll_x,
         configParams_.pitch_y, configParams_.yaw_z);
  // printf("function: %s,line: %s\n ", __FUNCTION__, __LINE__);//�ᱨ��������ԭ��
  return;
}
};  // namespace Skywell
