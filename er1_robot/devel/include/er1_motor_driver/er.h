/*
 *  Player - One Hell of a Robot Server
 *  Copyright (C) 2000-2003
 *
 *  David Feil-Seifer
 *  Arvind Pereira
 *                      
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/*
 *
 * Relevant constants for the "ER" robots, made by Evolution Robotics.    
 *
 * Some of this code is borrowed and/or adapted from the player
 * module of trogdor; thanks to the author of that module.
 */

#ifndef _ER1_DRIVER_H_
#define _ER1_DRIVER_H_

 #include <stdint.h>
 #include <cstdlib>
 #include <string>

#define ER_DEFAULT_PORT "/dev/ttyUSB0"
#define ER_DEFAULT_LEFT_MOTOR 0
#define ER_DELAY_US 10000


/* ER1 commands */
#define NOOP                0x00
#define SETVEL              0x11
#define UPDATE              0x1A
#define GETCMDPOS           0x1D
#define GETEVENTSTATUS      0x31
#define RESETEVENTSTATUS    0x34
#define RESET               0x39
#define SETMOTORCMD         0x77
#define SETLIMITSWITCHMODE  0x80
#define GETVERSION          0x8F
#define SETACCEL            0x90
#define SETDECEL            0x91
#define SETPROFILEMODE      0xA0
#define SETSTOPMODE         0xD0
#define READANALOG          0xEF

#define MOTOR_0             0x00
#define MOTOR_1             0x01

/* Robot-specific info */
#define ER_DEFAULT_MOTOR_0_DIR  -1
#define ER_DEFAULT_MOTOR_1_DIR	 1
#define ER_DEFAULT_AXLE_LENGTH	0.38

#define ER_MAX_TICKS    3000
#define ER_WHEEL_RADIUS    0.055
#define ER_WHEEL_CIRC	   0.345575197
#define ER_WHEEL_STEP	   0.45
#define ER_M_PER_TICK	   0.00602836879

/* For safety */
#define ER_MAX_WHEELSPEED  0.5
#define ER_MPS_PER_TICK	   1

#define FULL_STOP  0
#define STOP	   1

#ifndef M_PI
 #define M_PI 3.14159265358979323846
#endif

#ifndef NORMALIZE
 #define NORMALIZE(z) atan2(sin(z), cos(z))
#endif

class ER 
{
  public:
    ER( std::string port );
    // ER(ConfigFile* cf, int section);

    // public, so that it can be called from pthread cleanup function
    int SetVelocity(double lvel, double rvel);
    void Stop( int StopMode );
    void Main();
    int Setup();
    int Shutdown();
    //void HandleConfig(void);
    //void GetCommand(void);
    //void PutData(void);
    
    //void HandlePositionCommand(player_position2d_cmd_t position_cmd);

        
  private:
    // this function will be run in a separate thread
    int InitOdom();
    int InitRobot();
    
    //serial connection
    int *_tc_num;
    int _fd; // device file descriptor
    char _serial_port[100]; // name of dev file
    bool _fd_blocking;
    
    // methods for internal use
    int WriteBuf(unsigned char* s, size_t len);
    int ReadBuf(unsigned char* s, size_t len);
    int SendCommand(unsigned char * cmd, int cmd_len, unsigned char * ret_val, int ret_len);
    int ComputeTickDiff(int from, int to);
    int ChangeMotorState(int state);
    int BytesToInt32(unsigned char *ptr);
    float BytesToFloat(unsigned char *ptr);
    void UpdateOdom(int ltics, int rtics);
    void SpeedCommand( unsigned char address, double speed, int dir );
    //periodic functions
    int GetOdom(int *ltics, int *rtics, int *lvel, int *rvel);
    int GetBatteryVoltage(int* voltage);
	int GetRangeSensor( int s, float * val );
	void MotorSpeed();

    //er values
    double _axle_length;
    int _motor_0_dir;
    int _motor_1_dir;

    //internal info
	bool _debug;
	bool _need_to_set_speed;
    bool _odom_initialized;
	bool _stopped;
    int _last_ltics, _last_rtics;
    double _px, _py, _pa;  // integrated odometric pose (m,m,rad)
    
    int send_command( unsigned char address, unsigned char c, int ret_num, unsigned char * ret );
    int send_command_2_arg( unsigned char address, unsigned char c, int arg, int ret_num, unsigned char * ret );
    int send_command_4_arg( unsigned char address, unsigned char c, int arg, int ret_num, unsigned char * ret );

};
#endif
