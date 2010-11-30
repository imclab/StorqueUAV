/* ------------------------------------------------------------------------ */
/* Storque UAV RangeFinder     code:                                        */
/*                       for MaxBotics LV Ultrasonic Rangefinder            */
/*                                                                          */
/* Authors :                                                                */
/*           Storque UAV team:                                              */
/*             Uriah Baalke, Ian O'hara, Sebastian Mauchly,                 */ 
/*             Alice Yurechko, Emily Fisher                                 */
/* Date : 11-12-2010                                                        */
/* Version : 0.1 beta                                                       */
/* Hardware : ArduPilot Mega + CHRobotics CHR-6dm IMU (Production versions) */
/*
 This program is free software: you can redistribute it and/or modify 
 it under the terms of the GNU General Public License as published by 
 the Free Software Foundation, either version 3 of the License, or 
 (at your option) any later version. 
 
 This program is distributed in the hope that it will be useful, 
 but WITHOUT ANY WARRANTY; without even the implied warranty of 
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
 GNU General Public License for more details. 
 
 You should have received a copy of the GNU General Public License 
 along with this program. If not, see <http://www.gnu.org/licenses/>.
*/
/* ------------------------------------------------------------------------ */


/* ------------------------------------------------------------------------------------ */
/* LV Ultrasonic RangeFinder Code:
             Used for low altitude readings ( less than 6 [meters])
             Will eventually be mixed with barameter as altitude increases. 
             Will also have different ping modes
*/
/* ------------------------------------------------------------------------------------ */

void RangeFinder_Init(){
  uint8_t rx_flag = 0;
  uint8_t current = 0;
  uint8_t previous = 0;
  uint16_t sample_period = 1000; 
  
  pinMode(RANGEFINDER_PIN, INPUT);
  return;
}

void ReadRangeFinder(){

  range.current = analogRead(RANGEFINDER_PIN);
  ftdiPrint("Range: ");
  ftdiPrintln((uint16_t)range.current);
  return;
  
}
  
