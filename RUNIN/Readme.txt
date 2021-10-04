PassMark (R) BurnInTest (TM) V7.1
Copyright (C) 1999-2013 PassMark Software
All Rights Reserved
http://www.passmark.com 

Overview
========
Passmark's BurnInTest is a software tool that allows all
the major sub-systems of a computer to be simultaneously
tested for reliability and stability.
<For more details see the online help>


Installation
============
1) Uninstall any previous version of BurnInTest
2) Double click (or Open) the downloaded ".exe" file
3) Follow the prompts


UnInstallation
==============
Use the Windows control panel, Add / Remove Programs


Requirements
============
- Operating System: Windows XP SP3, Windows Vista, Windows 7, and Windows 8,
  Windows 2003 Server, Windows 2008 Server, Windows 2012 Server (*)
- RAM: 128 Meg 
- Disk space: 30 Meg of free hard disk space (plus an additional 10Meg to run 
  the Disk test)
- DirectX 9.0c or above software for 3D graphics and video tests (plus working 
  DirectX drivers for your video card)
- Extended CPU support (e.g. SSE) compatible CPU for extended CPU tests (e.g. SSE) tests
- A printer to run the printer test, set-up as the default printer in Windows.
- A CD ROM + 1 Music CD or Data CD to run the CD test.
- A CD-RW to run the CD burn test.
- A network connection and the TCP/IP networking software installed for the 
  Network Tests
Pro version only:
- A serial port loop back plug for the serial port test. 
- A parallel port loop back plug for the parallel port test. 
- A USB 2.0 port loop back plug for the USB 2.0 port test. 
- A USB 3.0 port loop back plug for the USB 3.0 port test. 
- PassMark ModemTest V1.3 1010 (or higher) for Plugin Modem testing. 
- PassMark KeyboardTest V2.2 1011 (or higher) for Plugin Keyboard testing. 
- PassMark MonitorTest V3.1 1000 (or higher) for Plugin Monitor testing. 

(*)Operating System compatibility notes:
- BurnInTest must be run with administrator privileges. It requires 
  elevated administrator privileges in Windows Vista (and later). 
- The Standard and Torture RAM tests are available on all operating systems. 
  The Address Windowing Extensions test mode is only available under operating 
  systems where you can lock memory pages into memory, such as Windows XP 
  Professional.
- The CD and DVD burn tests require Windows Vista (and later), IMAPI v2 patched 
  Windows XP or IMAPI v2 patched Windows 2003 Server.
- The Bluetooth test is available on Windows workstations, Windows XP SP3 and 
	later, Windows Vista, Windows 7 and Windows 8.
- Windows XP SP2 and earlier are not supported by BurnInTest version 7.1. 
  Use BurnInTest v6.0 for compatibility with Windows 2000 and Windows XP SP2 
  (and earlier).
  Use BurnInTest v5.2 for compatibility with Windows 98 and Windows ME.

Version History
===============
Here is a summary of all changes that have been made in each version of 
BurnInTest.

Release 7.1 build 1017
WIN32 release 18 September 2013
WIN64 release 18 September 2013
- Corrected a crash bug when collecting disk SMART information during startup 
  (problem reported on a single system).
- Windows 8.1 support confirmed (no changes made to BurnInTest). Minor change to 
  Rebooter.

Release 7.1 build 1016
WIN32 release 16 September 2013
WIN64 release 16 September 2013
- CPU temperature monitoring and additional CPU information for Intel Silvermont/ 
  Bay Trail and Ivy Bridge-EP (e.g. i7-4930K).
- New scripting commands: SETTEMP THRESHOLD, SETTEMP AUTO_CPU, SETTEMP AUTO_GPU, 
  SETTEMP AUTO_DISK and SETTEMP SAMPLE.
- If Temperature->"Stop testing on threshold exceeded" was triggered for multiple 
  temperature sources at the same time, then the Stop tests action could occur
  more than once (e.g. more than one FAIL Window could be displayed). This has
  been corrected.

Release 7.1 build 1015
WIN32 release 6 September 2013
WIN64 release 6 September 2013
- The detailed memory information could be truncated in a small number of cases.
  e.g. the serial number may not have been displayed. This has been corrected.

Release 7.1 build 1014
WIN32 release 30 August 2013
WIN64 release 30 August 2013
- Minor changes to the detection of no operations for the memory test. 
  Increased debug logging for a specific memory test no operations error. 
- New scripting commands: SETTEMP SCALE and SETTEMP AUTO.

Release 7.1 build 1013
WIN32 release 23 August 2013
WIN64 release 23 August 2013
- New scripting commands: PLUGIN SIMULTANEOUS, PLUGIN IGNORE_NO_OPS, 
  SETMANAGEMENT. Support for 5 pre-test plugin's (up from 3). Improvements to 
  very long parameter handling in scripts.
- Added an error message for the case when Bootable BurnInTest is booted from 
  WinPE 3/Win7 (or lower) when connected to a USB 3.0 port and is not supported.
- Minor software text updates.
- Help updates.

Release 7.1 build 1012
WIN32 release 21 August 2013
WIN64 release 21 August 2013
- Added 2 new scripting commands, SETTEST and UNSETTEST. These allow tests to 
  be selected or de-selected in a script (without the use of a loaded 
  configuration file).
- Corrected the default Standard Network loopback address (problem introduced 
  in 7.1.1009).
- Corrected AMD Family 15h/16h temperatures (problem introduced in 7.1.1009).
- Added logging for the disk test if the test files can not be deleted.

Release 7.1 build 1011
WIN32 release 16 August 2013
WIN64 release 16 August 2013
- Management console defaults corrected for v7.1.1009 configuration file. This 
  led to too many status updates and BurnInTest being very sluggish when 
  managing BurnInTest with the Management Console.
- The Event Log "Description" column is now resized to fill any empty screen 
  space when the BurnInTest Window is resized.

Release 7.1 build 1010
WIN32 release 14 August 2013
WIN64 release 14 August 2013
- Disk serial numbers could be displayed for the wrong physical disk. This has
  been corrected.
- Some additional information added for Intel Bay Trail CPUs.

Release 7.1 build 1009
WIN32 release 9 August 2013
WIN64 release 9 August 2013
- Updated CPU system information for newer CPUs (including: Cloverview, 
  Richland, Kabini, Temash, Delhi, Seoul, Abu Dhabi, Kyoto) as well as updated
  models for existing CPUs. Includes temperature monitoring for AMD Kabini 
  (Family 16h) based CPUs, some newer Atom CPUs and some newer Ivy Bridge CPUs.
- Updated the Disk drive serial number and volumes information, as this may have 
  been shown as "N/A" when it was available.
- The results "Last error description" column is now resized to fill any empty 
  screen space when the BurnInTest Window is resized.
- Corrected crash on start-up (for incorrectly populated SMBIOS).
- Added system time zone information to activity trace logs.

Release 7.1 build 1008
WIN32 release 29 July 2013
WIN64 release 29 July 2013
- BurnInTest Management Console functionality added. Use of the Management 
  Console requires the Web server application to be separately obtained from 
  PassMark Software and installed on a Web server.
- Battery capacity plugin has a new “/fc” flag that can be used to change the 
  comparison to use “full charged capacity” instead of “current charge capacity”.
- Fixed a disk test scripting issue where the disk volume may not have been 
  set correctly.
- Fixed an issue reporting transcend SSDs model and serial number information.
- Updated video card system information.
- For consistency of logging the disk test block number, the logged block 
  numbers during read/verify now start at 1 (as per the logging for writing 
  blocks).
- Corrected a bug where very long reporting fields (machine type, serial number, 
  notes, customer name and technician name) could be truncated shorter than 
  they should have been. 
- BurnInTest no longer supports test configuration files prior to BurnInTest V5.3.

Release 7.1 build 1007
WIN64 release 28 June 2013
- Scripting for the LPT number for the Parallel port test has been corrected.

Release 7.1 build 1006
WIN64 release 24 June 2013
- Corrected a logging filename bug where a Windows environment variable specified 
  in the "Log name prefix" field will lead to an extra "_" in the filename. 
- Corrected a logging filename bug where the BurnInTest variable %REPORTSERIAL% 
  specified in the "Log file name" field could have the first character 
  incorrectly set to "-". 
- Updated the help file.

Release 7.1 build 1005
WIN32 release 17 June 2013
- Improvements to Atom Family CPU information reporting.
- Added Temperature reporting for the Atom E680 and E680T.

Release 7.1 build 1004
WIN64 release 7 June 2013
 - Fixed a bug where the Broadcom NetXtreme II network adapter is not displayed 
   in the system information.

Release 7.1 build 1003
WIN64 release 5 June 2013
 - Added temperature reporting for Intel Haswell CPUs.

Release 7.1 build 1002
WIN32 release 3 June 2013
WIN64 release 3 June 2013
 - Added MAC address for network cards to customer certificate system summary 
 - The "Save window as image" function will now default to and only allow the 
   "Visible section only" option when the focus is on the temperature graph.
 - Fixed a bug where sometimes not all the physical network cards could be 
   displayed in the system information (more likely to occur on Windows Vista 
   and newer due to the large number of network devices).
 - Fixed a crash that could occur on some systems when collecting system 
   information.
 - Made some changes to prevent USB3 test threads from trying to start testing 
   the same plug.
 - Updated battery capacity plugin to support new /p command line parameter 
   (PRO only).


Release 7.1 build 1001
WIN32 release 12 March 2013
WIN64 release 12 March 2013
 - Added editable temperature threshold values for CPU/GPU/HDD sources when 
   using "auto select".
 - Fixed a bug where if the temperature threshold value was exceeded at the 
   very start of the test run and using "stop testing on threshold exceeded" 
   an error was logged but the test might not stop.
 - Fixed a crash that could occur when BurnInTest was exiting.
 - Fixed a crash that could occur when running the USB3 test if the plug had 
   gone into suspend mode.
 - Fixed a bug where invalid characters entered as part of a key when 
   installing to USB could cause the registration to fail after installing.


Release 7.1 build 1000
WIN32 release 4 February 2013
WIN64 release 4 February 2013
 - Added USB3 loopback plug support to the USb test.
 - USB loopback plug serial number has been added to the results and 
   logging summary.

Release 7.0 build 1017
WIN32 release 18 December 2012
WIN64 release 18 December 2012
- Added a new warning message when network card connection status 
  cannot be read
- Stopped a connection error being logged at the start of the advanced 
  network  when using Intel network cards, it is not possible to get 
  the connection status from them and was subsequently logging an error
- Fixed a bug in the scripting where the SETDISK option could sometimes 
  not set the drive letter to be tested correctly

Release 7.0 build 1016
WIN32 release 14 November 2012
WIN64 release 14 November 2012
- Added Bios version & date and network card info to test certificate
- Added %REPORTSERIAL% flag to log prefix option that will be replaced
  with the serial number entered as part of the report information
- Added serial number and volume information when available to log file 
  wen listing the disk drives as well as their drive number so they 
  can be more easily matched to the disk being tested
- Changed behaviour so "automatically monitor temperature" options
  defaults to off
- Changed behaviour so if the BitErrorClassification.txt file is read 
  only BurnInTest will no longer display an error  
- Added a new error message "2D graphics test was interrupted"
- Fixed a crash that could occur if the 2D video memory test was interrupted
  (for example by using ctrl-alt-del)
- Fixed a bug in the SETSERIALPORTS script command where the "SPEED" 
  component was not being interpreted correctly
- Fixed a bug in the SETSERIALPORTS script command where the "CYCLE_115K" 
  value for the "SPEED" component was not recognised
- Fixed a display issue where if "Automatically select temperature sources"
  was unchecked but temperature sources were still selected the temperature 
  line on the results tab would not be displayed
- Fixed a crash caused by a timing issue when collecting system information
  where the number of DIMM slots could be an invalid value
- Fixed a bug preventing the DVD test from starting correctly
  
Release 7.0 build 1015
WIN32 release 19 September 2012
WIN64 release 19 September 2012
- Added a "Ignore "no operations" timeout" option to the plugins 
  so no timeout warnings will be logged
- Changed behaviour so that the test preferences cannot be changed
  if BurnInTest is still collecting system information at startup 
- Changed behaviour so test start time is not recorded until after 
  pre test plugins have finished. Previously the start time was recorded
  when the plugins started and the total test time was applied to them as well
- Fixed a bug in the physical (raw) disk test where the random data with 
  random seeking test could generate an incorrect data verify error
- Fixed a bug where the plugin name could be truncated in the log
- Fixed a case where DirectIO.sys could not be loaded correctly on
  some versions of Windows

Release 7.0 build 1014
WIN32 release 1 August 2012
WIN64 release 1 August 2012
- Made some changes to the plugins test options to allow up to 5
  pre test plugins to be run (PRO only)
- Added a new plugin option to specify whether to run plugins all
  at the same time or on after the other (PRO only)
- Added new plugins to PRO edition (battery capacity, webcam, 
  microphone and sound)

Release 7.0 build 1013
WIN32 release 31 May 2012
WIN64 release 31 May 2012
- Fixed a bug preventing the parallel port test from starting
- Fixed a misplaced newline in the text log output
- Added missing report information (Machine Type, Serial and Notes)
  to text and HTML logs

Release 7.0 build 1012
WIN32 release 8 May 2012
- Corrected a problem where some system information could not be collected on 
  32-bit XP. This problem was introduced in 7.0.1010 - removed System information 
  compatibilty with other PassMark applications.

Release 7.0 build 1011
WIN32 release 26 April 2012
WIN64 release 26 April 2012
- The temperature threshold could be used with the wrong temperature source. 
  This has been corrected.
- Other minor changes.

Release 7.0 build 1010
WIN32 release 4 April 2012
WIN64 release 4 April 2012
- System information updates for Intel and AMD CPUs. 
- Reduced the CPU information collection time on very slow CPUs.
- Workaround for the AMD Llano (12h series) CPU for determining overclocked CPU
  frequencies. Many of these CPUs are meant to have locked multipliers, but 
  in many cases they are not locked and in this case there appears to be a 
  CPU/BIOS issue that leads to the locked CPU frequency being reported, rather 
  than the configured CPU frequency.
- BurnInTest is now compatible with other PassMark applications including 
  PerformanceTest, RamMon and OSForensics. Previously, while monitoring 
  temperature with BurnInTest, some functions, like collecting certain system 
  information, were not available in PerformanceTest etc.
- Spelling corrections.
- Minor help file improvements.
  
Release 7.0 build 1009
WIN32 release 20 February 2012
WIN64 release 20 February 2012
- The CD/DVD burn test did not work on Windows XP. This has been corrected.
- System information updates for AMD CPUs. 

Release 7.0 build 1008
WIN32 release 16 February 2012
WIN64 release 16 February 2012
- System information updates for Intel and AMD CPUs, and AMD GPUs. 
- Temperature monitoring added for newer Intel and AMD CPUs.  
- DirectIO.sys updated to version 9 to resolve a driver verifier issue when 
  collecting SMBIOS data. 

Release 7.0 build 1007
WIN64 release 10 February 2012
- Correction for newer AMD CPU system information (multipliers) when the CPU was 
  loaded by other software.

Release 7.0 build 1006 rev 5
WIN64 release 8 February 2012
- Correction for newer AMD CPU system information (multipliers).
- CPU System information updates.
- Video card System information updates.

Release 7.0 build 1006 rev 4
WIN64 release 1 February 2012
- Correction to the Advanced network test Low NIC Threshold.
- Correction to the BurnInTest temperature monitoring threshold.
- Updated System information for newer Intel CPUs.

Release 7.0 build 1006 rev 3
WIN64 release 27 January 2012
- Correction for the BurnInTest v7.0 SETLOG scripting command (note: the 
  BurnInTest v6.0 SETLOG scripting command works and is unchanged).
- Correction to display the Temperature graph after the test has completed.

Release 7.0 build 1006 rev 2
WIN64 release 21 December 2011
- Updated System information for newer AMD and Intel CPUs.

Release 7.0 build 1006 rev 0
WIN32 release 16 December 2011
- Corrected a bug with the advanced network test error reporting when the test 
  is scripted and when accumulate results is selected.

Release 7.0 build 1005 rev 3
WIN32 release 12 December 2011
WIN64 release 12 December 2011
- PC Test Kit build.

Release 7.0 build 1005 rev 2
WIN32 release 5 December 2011
WIN64 release 5 December 2011
- Added a new command line parameter, -n [minimum volume size in MB], to allow 
  the automatic disk test selection to exclude disk volumes less than a specified 
  size. This could be useful to exclude the System reserved partition on an SSD
  under WinPE.
- Correction to the CPU test if the CPU frequency cannot be detected (very rare 
  bug).
- Minor change to the GPU temperature collection.

Release 7.0 build 1005 rev 1
WIN32 release 1 December 2011
WIN64 release 1 December 2011
- Added System information for newer DDR3 modules (DDR3 SPD version 1.1 detection).
- Corrected a crash bug when collected GPT partition information on a 
  system with more than 1 GPT partition.
- Improved the physical Disk drive system information when used on WinPE. 
- Correction to SSD drive indicator when used on WinPE.
- Corrected a bug where some BurnInTest v4.0 configuration files could not be 
  loaded.
- Minor logging improvements.

Release 7.0 build 1005 rev 0
WIN32 release 21 November 2011
WIN64 release 21 November 2011
- Tuned the memory test allocation when run with the disk test to avoid the 
  disk test running out of memory.

Release 7.0 build 1004 rev 9
WIN32 release 10 November 2011
WIN64 release 10 November 2011
- Corrected a bug where the Preferences->Post test application field didn't 
  work when command line parameters were specified with the application.
- Corrected a problem with the BurnInTest Standard 3D test where on some 
  systems it would not run and would display an DirectX initialization problem. 
  This was not a problem with BurnInTest Pro.
- Corrected a bug where in some cases BurnInTest could report the wrong disk as 
  an SSD.
- Corrected a bug where BurnInTest could incorrectly determine the number of 
  partitions on a raw disk that had previously been tested by the BurnInTest 
  physical disk test. This could cause subsequent physical disk tests on this 
  drive to fail. 
- When starting BurnInTest with the command line parameter to reduce the amount 
  of system information that is collected, -w, the waiting for system 
  information window could still be displayed in some cases. This has been 
  corrected.
- When running on WinPE or Bootable BurnInTest, the physical disks that 
  can be tested are now explicitly restricted to raw disks. Previously this 
  limitation was only documented. 
- Bootable BurnInTest (part of the PC Test Kit and Bootable USB Flash Drive 
  products) does not support the following tests and as such these tests have 
  been greyed out in the Test selection window: 2D, 3D, Video Playback, Sound, 
  Printer and Tape. Previously this limitation was only documented. These 
  limitations do not apply to BurnInTest when run from an installed operating 
  system.
- A very small number of USB drives have been found to cause BurnInTest to hang 
  when collecting disk information. These would appear to be faulty drives. 
  However, as they can cause BurnInTest to hang, especially on starting tests 
  with automatic temperature monitoring on, entering Preferences->Disk or 
  Preferences->Temp, changes have been made to work-around this problem. These 
  changes include the addition of timeout for a range of drive queries and the 
  removal of hot pluggable (USB) drives from the automatic temperature source 
  selection.
- Corrected a bug where in rare cases BurnInTest could crash when Activity level 
  2 trace logging is selected and when BurnInTest reads an event from a very 
  large Windows System or Application event log.
- Tuned the memory test to improve memory allocation on test startup.
- Improved the error location information for writing and reading to a physical 
  disk.   
- Improved BurnInTest software exception handling to produce a mini-dump debug 
  file in more cases.
- Minor logging and documentation changes.

Release 7.0 build 1003 rev 5
WIN32 release 20 October 2011
WIN64 release 20 October 2011
- Corrected the Standard network test preferences for Bad packet ratios.
- Corrected the Advanced network test preferences for Half and Full duplex.
- Corrected the Advanced network test where a disabled IPv6 network interface 
  could be incorrectly displayed in preferences.
- Correct a crash on startup when collecting PCI information on a specific 
  system.
- Change to the 3D font error handling to prevent a crash during the 3D test 
  a particular system.
- Attempt to correct a crash with GPU temperature monitoring.
- Added the raw dump of sound wave samples on certain errors when level 2 
  activity trace logging is selected.
- Improved event logging: remove a duplicate event, moved a trace level event 
  from normal level to level 1 trace event logging, and Plugins can now report 
  an event of severity "NONE".
- Minor improvements to the help file.

Release 7.0 build 1002
WIN32 release 22 September 2011
WIN64 release 22 September 2011
- BurnInTest 7.0 now supports Windows 8 developer preview.
- BurnInTest now uses the PassMark SysInfo SDK to get temperature information.
- The "Collecting system information" progress window was displayed when the 
  "-w" command line parameter was specified (to minimize the amount of system 
  information collected). This has been corrected.
- The "-a" command line parameter has been removed as it does not make sense 
  with BurnInTest 7.0 being run with elevated administrator privileges. 
  Use "-w" to minimize the amount of system information collected.
- BurnInTest could crash on the optical disk test when run with non-PassMark 
  test media, e.g. when run with a DVD video. This has been corrected.
- BurnInTest could crash on startup on a small number of systems when run in 
  debug mode. i.e. only when run with the "-u" command line parameter. This has 
  been corrected.

Release 7.0 build 1001
WIN32 release 14 September 2011
WIN64 release 14 September 2011

NEW TESTS and IMPROVEMENTS TO EXISTING TESTS
Touch screen test:
- BurnInTest now supports the testing of touch screens using the separate 
  PassMark MonitorTest product as a Pre-test plugin. PassMark MonitorTest 
  allows single touch tests and multi touch pan, zoom, rotate and tap 
  gesture tests.

CPU test improvements:
- The number of CPUs (Packages x cores x threads) that can be tested has 
  been increased to 256 (where supported by the Operating System). That is,
  CPUs across multiple processor groups can be tested.
- It is now possible to raise an error on a user defined CPU temperature 
  threshold being exceeded. It is also possible to automatically stop 
  testing in this scenario.
- The duration of the individual CPU tests have been balanced to provide 
  better coverage of some SIMD CPU instructions.
- Improvements to CPU test memory allocation mean memory allocation errors 
  that may have been reported as out of memory CPU errors are now not reported 
  as CPU errors, but more likely as memory errors.

Memory test improvements:
- The memory tests have been optimized to test with higher loads on memory and 
  to run more quickly.
- A new memory adjacency cell test is now included to help detect more memory 
  errors where accessing a memory cell changes the value of an adjacent memory 
  cell. 
- The memory test display has been improved to display write and read speed for 
  the Standard memory test and to not display any previous test results when 
  starting a new test.
- The ability to investigate system issues after an event that crashes BurnInTest 
  (like a driver crashing BurnInTest) has been improved. Specifically, in V6.0 
  the memory test could continue to run if BurnInTest had an unrecoverable 
  error, this could make the system less responsive during post failure 
  investigation.

Disk test improvements:
- Added new disk self tests, short and extended. These are a set of built-in 
  routines implemented by the vendor to perform failure diagnostics on the 
  disk. They can report disk errors such as a failure:
  - of the electrical element,
  - of the servo and/or seek test element,
  - of the read element,
  - due to handling damage.
- SMART monitoring and reporting is now available on many external drives 
  (previously only available on internal drives).
- SMART reporting for disks is now supported when running a physical disk test 
  (previously only available on a disk volume test).
- The physical disk test is now available on formatted disks (that do not 
  contain Windows installations or paging files). In V6.0 the physical disk test 
  was only available on unformatted disks.
- A new disk test mode, Quick physical drive test, is now available for the 
  physical disk test. This tests the most important parts of the physical disk 
  and a random selection of the remainder of the disk. This provides for much 
  quicker disk testing.
- It is now possible to raise an error on a user defined Hard disk temperature 
  threshold being exceeded. It is also possible to automatically stop testing 
  in this scenario.
- Hard disk temperature monitoring is now supported on many external drives 
  (previously only available on internal drives).
- The floppy disk (A:) has been removed from the default disk preference 
  selection.

Standard Network test:
- Changed the Standard Network test to have two types of tests (1) Internal 
  loopback or (2) a test of all available Network ports. The preferences User 
  Interface has been simplified. This overcomes timeouts that could be reported
  with the previous test when "Test all available Network ports" was set to 
  "No".
- Test up to 12 NICs (up from 6).
- Test IPv6 on Windows Vista and later (as well as IPv4). 
- The Standard network test duty cycle load is now more linear (in V6.0 100% 
  duty cycle was significantly higher load than 99%).
- The default timeout has been increased from 2 seconds to 4 seconds.

Advanced Network test:
- Test up to 12 NICs (up from 6).
- Select to test from up to 20 local NICs (up from 10).
- Test can now test IPv6 on Windows Vista and later (as well as IPv4). 
  Note: BurnInTest and the Endpoints must support IPv4.
- The test window now displays all of the NICs being tested and it’s Endpoint.
- The test preferences now includes a Display Endpoints option to make it 
  clearer the number of endpoints currently available for testing.
- A low throughput threshold value can now be specified to raise a throughput 
  error.

Optical drive test improvements:
- The Optical disk configuration file is now portable across systems where the 
  optical drive configuration is different. 
- The number of Optical drive tests has been increased from 20 to 26.
- If Select all available drives is selected and the automatic detection of 
  optical drives determines there are no drives, then the optical drive test is 
  turned off.

2D test improvements:
- 2D video memory test cycle count definition has been changed so that 1 cycle 
  represents 1 full pass of the video test memory.

USB test improvements:
- Test up to 25 USB ports with the PassMark USB 2.0 Loopback plug (up from 10). 
  This also requires V7.0 of the USB 2.0 Loopback plug device driver.
- A new option to auto detect the number of USB plugs connected has been added. 
  There must be at least 1 plug for the test.
- The PassMark USB 2.0 Loopback plug is now compatible with other USB products 
  from other vendors. BurnInTest 7.0 supports USB testing when these other USB 
  devices are connected. Specifically, a 3rd party USB device uses the same 
  internal name as the USB 2.0 Loopback plug (with V6.1 of the device driver and 
  earlier) which meant that that USB device needed to be removed before USB 
  testing could be conducted with BurnInTest.

Sound Loopback test:
- Changed the Sound loopback test mechanism to use longer sampling durations. 
  This resolves a problem where the test could report false positives when the 
  CPU is under heavy load.

Serial Port test:
- The BurnInTest serial port test has been changed to configure the COM ports when
  run from Microsoft WinPE 3.0 so that the COM ports can be tested.

Video Playback test:
- Added a default test video file (300x168) for Video Playback if no other video 
  files are available or selected.

Temperature:
- A new Temperature tab has been added to allow the monitoring of temperature 
  over the test period. 
- Temperature can be monitored and reported for 6 temperature sources 
  (up from 3).
- Temperature can now be graphed for 6 temperature sources.
- Temperature sources can now be automatically selected by BurnInTest.
- Temperature can be monitored and reported for some nVIDIA and AMD GPUs (as 
  well as CPU and Hard disks).
- Temperature reporting included for new AMD CPUs (APUs).
- Temperature monitoring for Intel Core 2 CPUs (as well as later Intel CPUs).
- The final test temperatures are now displayed after the test has completed 
  (and reset on start of tests).
- The frequency temperature values that are to be sampled can now be specified. 
  The sampling now occurs regardless of which tab is displayed (previously the 
  Results tab needed to be displayed).
- It is now possible to raise an error on a user defined CPU, hard disk and GPU 
  temperature threshold being exceeded. It is also possible to automatically 
  stop testing in this scenario.
- Hard disk temperature monitoring is now supported on many external drives 
  (previously only available on internal drives).
- Selecting the Maximum CPU temperature as a Quicktest no longer turns off 
  temperature monitoring.
- Changed the CPU Quicktests to monitor CPU temperature only (if available). 
  Changed the 2D and 3D Quicktests to monitor GPU temperature (if available). 
  Changed the Disk Quicktests to monitor Disk temperature (if available)
- Changed the temperature preferences to validate temperature values for disks
  before allowing them to be selected.

AUTOMATION
- Scripting has been extended to allow many common preference settings to be 
  set. Specifically, the following new scripting commands have been added:
  - SETCPU
  - SETDISK
  - SETDEFAULTPREFERENCES
  - SETERRORS
  - SETNETWORK
  - SETOPTICALDISK
  - SETPRETEST
  - SETPOSTTEST
  - SETRAM
  - SETSERIALPORTS
  - SETPARALLELPORTS
  - SETSOUND
  - SETUSB
  - SETVIDEOPLAYBACK
  - SET2DGRAPHICS
  - SETLOG (options have been expanded)
- BurnInTest can now be signaled to stop (and exit) by an external application. 
- If a script file does not exist in the My Documents directory and no path is 
  specified an error message is now displayed.
- The Pre-test, launch application and don't wait now uses the default directory 
  (like the wait version) for configuration and scripting.
- Documented a command line parameter to set the screen resolution on starting 
  BurnInTest, intended for use with Microsoft WinPE.
 
NEW SYSTEM INFORMATION
- Updates for newer CPU and GPU models.
- Improved maximum CPU speed measurement.
- Improved the RAM module information that is displayed and reported. Detailed 
  RAM SPD module information is now available with trace file logging.
- System information summary now displays SSD's separately from HDD's.
- System information now displays USB 3.0 host controllers and the devices on 
  the hubs behind these host controllers.
- In the case that 2 GPUs from different vendors were installed, it was possible 
  that the description for one of these was incorrect. This has been changed.
- When BurnInTest is run on WinPE 3.x, BurnInTest did not report the COM ports 
  in the System Information section. This has been changed.
- Corrected the Video Card chip type description where gibberish could be 
  displayed after the description string.
 
REPORTING
- More than one report type can now be automatically saved, i.e. text, HTML and 
  the customer certificate can now all be selected.
- The trace file format can now be selected (rather than being the same format 
  as the main report file). Specifically if the report is HTML, the trace file 
  can be text (which is easier to analyze).
- Increased the length of report event lines from 100 characters to 200 
  characters. In particular the report line length was previously truncated for 
  some customer Plugins and Windows systems events.
- Changed the Logging Preferences, Clear results and append to existing log 
  file, option (which was creating a new log file for each test run).
- Copying text or HTML to the Clipboard will now copy both formats to the 
  clipboard such that a subsequent paste will be either text or HTML, 
  depending on the application.

GENERAL
- Improved support for not Latin (e.g. English) character sets. While BurnInTest 
  is in English, some information collected from the system or entered by the 
  user may now use non-Latin character sets.
- BurnInTest has been changed to run with elevated administrator privileges as 
  this is required for some tests and quite a lot of system information. This 
  also allows temperature monitoring to be turned on by default.
- The "FAIL" definition has been changed to include critical, serious and warning 
  events, but now exclude information level events.
- All events may now be configured to not be reported if they are not meaningful 
  in a specific test environment (by setting to NONE in 
  BITErrorClassifications.txt).
- A "preferences editor" mode has been added to create test configurations for 
  just about any system, without needing the hardware (e.g. configure hard disk 
  to be tested that are not on the local system).
  Specifically, when specifying the command line parameter "Y": 
  - All HDD drive letters [A..Z] and physical disk numbers [0..99] are displayed 
    and allowed in Preferences->Disk; 
  - all optical disk drive letters [A..Z] are added to Preferences->Disk; 
  - CPU instructions not supported on the current system, are selectable. 
  - Files are not validated for existence: Plugin, sound, logging, video 
    playback, pre/ post test.
- Improved the look of the Event log window, making it easier to review the 
  events. This includes:
  - The removal of the limit of displaying 1000 events.
  - Sorting of events based on their severity, time, source and description.
  - A contextual popup menu for clearing results and copying events to the 
    clipboard.
  - Double clicking an event will now display a description of the common 
    errors.
- Improved the look of the Result log window, making it easier to review the 
  results. This includes:
  - Sorting of events based on their test name, cycles, operations, errors
    and last error description.
  - A contextual popup menu for clearing results and copying events to the 
    clipboard.
- Reduced the start-up time on newer Intel CPUs.
- Changed the Disk, Optical drive and USB preference windows for consistency.
- The retry timeouts for some error types has been standardized.
- Removed a directory does not exist warning message from Preferences->Logging 
  when the directory of the log file is the root directory of a drive.
- Changed the internal handling of the Windows 2D GUI test such that it is 
  de-linked from the main BurnInTest Window and the main Window can now be 
  moved while this test is running.
- Changed the definition of Cycles for the 3D, Network, Video Playback and USB 
  tests to better balance the cycle count across tests.
- Add launch of cmd.exe option from BIT menu when running in WinPE.
- Other minor improvements and bug corrections.
- Help updates.


Release 6.0 build 1031 rev 2
WIN32 release 18 May 2011
- The explicit 1.5GB limit on the amount of video memory that 32-bit BurnInTest 
  will test has been reduced to 1.3GB.

Release 6.0 build 1031 rev 0
WIN32 release 4 May 2011
WIN64 release 4 May 2011
- Corrected Interim periodic logging to work across system time changes.

Release 6.0 build 1030 rev 0
WIN32 release 2 May 2011
WIN64 release 2 May 2011
- Corrected the "-K" command line parameter (keep disk test files on error).
- Corrected HTML periodic interim test results logging.
- Other minor corrections.
- Help updates.

Release 6.0 build 1029 rev 2
WIN32 release 31 March 2011
WIN64 release 31 March 2011
- Some CPU speed information is now not collected when the command line 
  parameter '-W' (minimize system information collection) is used. Some 
  systems, e.g. a customer's Windows Embedded Standard tablet, explicitly 
  flags support of the mecchanism used, but doesn't support it. This leads 
  to a BSOD on startup (STOP: 0x0000008E (0xC0000005, ...) intelppm.sys).

Release 6.0 build 1029 rev 1
WIN32 release 30 March 2011
WIN64 release 30 March 2011
- An explicit 1.5GB limit on the amount of video memory that 32-bit BurnInTest 
  will test has been added. This is due to limitations with the default 
  configuration of 32-bit Windows. On 64-bit systems, 64-bit BurnInTest should 
  be used where this limit does not exist for BurnInTest and other applications.

Release 6.0 build 1029 rev 0
WIN32 release 28 March 2011
WIN64 release 28 March 2011
- Corrected a crash on startup for a particular system.
- Corrected a crash in Preferences->Sound when a non existent file name is
  manually entered.
- Added a new video playback error for CPU usage exceeded for audio playback 
  when certain sound effects are enabled. Added additional details for a set 
  of audio events during video playback.
- Improved the detection of the number of CPU cores when the "CPUID limit" 
  BIOS setting is enabled (not the normal setting).
- Corrected a minor resource (handle) leak with the Optical drive test when
  non-PassMark optical media is used and the test detects and reports errors. 
  This could potentially cause system problems during the test if a very large 
  number of Optical drive errors are found. 

Release 6.0 build 1028 rev 0
WIN32 release 19 January 2011
WIN64 release 19 January 2011
- Improved system information for Intel 2nd generation i3, i5 and i7 CPU's 
  (Sandy Bridge).

Release 6.0 build 1027 rev 7
WIN64 release 12 January 2011
- Public release.

Release 6.0 build 1027 rev 6
WIN64 release 12 January 2011
- PC Test Kit build.
- System information Graphic card naming updates.
- Corrected the reporting of the CPU speed measurements for overclocked Intel 
  Core 2 CPU's.
- VIA CPU model names now reported.
- Corrected a crash on startup for a particular system.

Release 6.0 build 1026 rev 2
WIN32 release 5 November 2010
- Corrected a bug where the 3D test frame would not change after about 
  16.8 million frames, hence the same frame was rendered and displayed 
  (appearing to not update).

Release 6.0 build 1026 rev 1
WIN32 release 1 November 2010
- Temperature monitoring support added for more hard disk types.
- 3D test debug logging added.

Release 6.0 build 1026 rev 0
WIN32 release 16 August 2010
- SMART debugging information added.

Release 6.0 build 1025 rev 4
WIN32 release 11 August 2010
WIN64 release 11 August 2010
- System information updated for newer AMD and Intel CPU specifications.
- Correction for the CPU multiplier and base clock for the AMD Phenom II X6 when 
  the CPU did not go into a Turbo Core P-State during the CPU frequency 
  measurement.
- SMBIOS debug logging on startup increased.
- Error opening COM port debug logging added.

Release 6.0 build 1025 rev 2
WIN32 release 30 July 2010
WIN64 release 30 July 2010
- Change to allow BurnInTest to start (due to incompatibility with a USB device 
  if connected).
- Update to the CPU detection when BurnInTest is started without access to all 
  CPUs i.e. started with a CPU affinity mask.
- Minor help file updates.  

Release 6.0 build 1025 rev 1
WIN32 release 27 July 2010
- Debug build for startup problem.

Release 6.0 build 1025 rev 0
WIN32 release 26 July 2010
- Debug build for startup problem. Forced debug logging ("-u") improved.

Release 6.0 build 1024 rev 7
WIN32 release 23 July 2010
WIN64 release 23 July 2010
- New build for bootable BurnInTest.

Release 6.0 build 1024 rev 6
WIN32 release 23 July 2010
- Debug build for startup problem.

Release 6.0 build 1024 rev 5
WIN32 release 20 July 2010
WIN64 release 20 July 2010
- Measurement of Celeron M CPU frequency added.

Release 6.0 build 1024 rev 4
WIN32 release 19 July 2010
- Corrected a crash bug with the standard Network test on some systems, when 
  Test all available Network Adapters is selected.

Release 6.0 build 1024 rev 3
WIN32 release 15 July 2010
- Licensing correction for bootable BurnInTest for a system with no disks.
- Minor Standard network test changes including increased trace 2 logging.

Release 6.0 build 1023 rev 3
WIN32 release 2 July 2010
WIN64 release 2 July 2010
- Improvements to the CPU frequency measurement on startup.

Release 6.0 build 1023 rev 1
WIN32 release 28 June 2010
- Change for Turbo mode CPU's when run under WinPE to try and correct a system
  crash.
- Improvements to the CPU frequency measurement on startup for Nehalem based CPUs.
- When running WinPE, F10 now launches the Windows command window.

Release 6.0 build 1023 rev 0
WIN32 release 22 June 2010
WIN64 release 22 June 2010
- Improvements to the Sound Loopback test when the CPU is under load.
- Improvements to the Sound Loopback test window display.
- Improvements to raw disk test (physical disk number test) to avoid sharing 
  violation errors during the random seek cycle.
- The raw disk test can now be configured with 32-bit BurnInTest, when running
  on 64-bit Windows.

Release 6.0 build 1022
WIN32 release 15 June 2010
WIN64 release 15 June 2010
- PassMark PC Test kit build.
- Bootable BurnInTest support for additional USB drives.
- Improvements to CPU System information reporting.
- Removed an "Out of Memory" error for the Sound loopback test.

Release 6.0 build 1021 rev 6
WIN32 release 26 May 2010
WIN64 release 26 May 2010
- Corrected the reporting of Intel Turbo mode CPU speeds (rather than reporting
  non-Turbo CPU speeds).
- The memory device type for some ROM devices was incorrectly reported as DDR3. 
  This has been corrected.
- Corrected a bug where the tests would not complete properly if only the USB 
  test was run and no USB 2.0 Loopback plugs were detected.
- Reduced the CPU load of the Sound Loopback test.
- Crash minidump logging added to the Standard version of BurnInTest (previously
  only in the Professional version).
- Added new 2D video memory test and 3D test logging.
- Minor help file improvements.

Release 6.0 build 1020 rev 15
WIN32 release 31 March 2010
WIN64 release 31 March 2010
- Correction to the display of memory device information for systems with more 
  than 10 memory devices.
- Improvements in the collection of System information (SMBIOS) for some newer 
  systems. 
- Disk test file size minimum changed from 0.01% to 0.0001%.
- Changes to the 2D video memory test to better handle the scenario when a 
  block of test texture data (video memory) is being verified, and during 
  this stage the graphics card removes the test texture data from the 
  graphics card. This can occur for a number of reasons, including changes 
  to display such as the resolution and color depth.
- Changed the level of the 3D test "The 3D test was interrupted" event 
  from warning to information, as this is not an error in many cases, such 
  as user interruptions and when the graphics display settings are changed.
- ".cmd" files can now be specified as Post-test external applications.
- Correction to the log file reported stop time when accumulated logging used. 
- Correction to support temperature monitoring for the Intel T3100 CPU.
- System information for newer CPUs added.

Release 6.0 build 1019 rev 5
WIN32 release 2 February 2010
- New Advanced network logging added. 

Release 6.0 build 1019 rev 4
WIN32 release 1 February 2010
- Improved the Maximum CPU Temperature test.
- New Advanced network logging added. 

Release 6.0 build 1019 rev 3
- Corrected a rare crash bug on startup for systems with more than 8 Memory slots 
  and memory slot error information.
-	CPU information improvements for Intel Westmere.
- Corrected a bug that prevented selecting the CPU SSE4.2 test individually.
- Correction to allow all CPU core temperatures to be reported.
- New debug logging added. 

Release 6.0 build 1018 rev 1
WIN32 release 30 December 2009 
WIN64 release 30 December 2009 
- Change for a BSOD on starting BurnInTest on Core i5 and newer Core i7 CPUs with 
  Windows 2008 Server.
- Minor logging improvements.

Release 6.0 build 1017 rev 7
WIN32 release 15 December 2009 
WIN64 release 15 December 2009 
- Change for Intel CPUs supporting Turbo mode, for non-turbo speed measurement.
- If there is more than 1 USB test specified, but there are less USB loopback plugs 
  attached than specified, an error will be generated (almost) immediately.
- If stop on error is specified, a script will now stop on a no operations error 
  at the end of an individual "RUN" scripted command.
- Corrected the handling if a log file directory could not be created.
- Added CPU information for new Intel Xeon CPUs.
- Debug logging added to WIN64 BurnInTest PRO (previously in WIN32 PRO).
  
Release 6.0 build 1016 rev 3
WIN32 release 9 November 2009 
- Correction to Turbo mode reporting in V6.0.1014 (and later) for Xeon E55xx 
  series and for Core2 CPUs that support IDA (Intel Dynamic Acceleration).
- Corrected an issue with the disk test where in a rare scenario the disk would 
  become full at the end of a full scan and report a disk full error, rather than
  rescanning the disk.
- BurnInTest now allows an external application to write a subscript of scripting 
  commands that will be run on BurnInTest Startup. This allows report information
  such as serial number to be set using external applications run before starting 
  BurnInTest (using the bit-script-input.txt mechanism). Other bit-script-input.txt 
  sub-script corrections made.
- Added the script command, STARTLOGGING, so that report information such as
  the test system serial number, can be configured before the report (log file)
  is opened. 
- Improvement to the default video playback file selection under Windows 7.

Release 6.0 build 1015 rev 1
WIN32 release 21 October 2009 
- Corrections to copying event log information to the clipboard.

Release 6.0 build 1014 rev 4
WIN32 release 2 October 2009 
- CPU system information improvements:
  - Additional Intel Core i5 CPU information reported and number of caches 
    correction.
  - CPU Base Clock and External clock/FSB reported for stock values and 
    over/under clocking (when different) for Intel (Nehalem) and Intel 
    Core 2 architectures.
	- CPU Turbo and non-Turbo CPU speeds and Multipliers reported for Intel 
    (Nehalem) architectures.
- Minor improvements to the BurnInTest CPU temperature reporting (added 
  Intel Core i5 and improvement to average CPU value).

Release 6.0 build 1014 rev 1
WIN32 release 22 September 2009 
- Additional Disk test and 2D test logging.

Release 6.0 build 1014 rev 0
WIN32 release 16 September 2009 
WIN64 release 16 September 2009 
- CPU temperature monitoring support for some newer Intel CPUs.
- Additional CPU information and icons for some newer AMD and Intel CPUs.

Release 6.0 build 1013 rev 2
WIN32 release 10 September 2009 
- Public release.

Release 6.0 build 1013 rev 1
WIN32 release 9 September 2009 
- Additional Intel and AMD CPU temperature reporting added.

Release 6.0 build 1013 
WIN32 release 4 September 2009 
- PassMark PC Test kit build.

Release 6.0 build 1012 rev 10
WIN32 release 2 September 2009 
- Improved the CPU frequency measurement for the highest CPU power state on 
  certain Intel CPUs.
- Improvement to the starting test RAM size for the RAM Quick test.
- Increased the number of memory slots that can be reported from 8 to 64.
- Minor Improvement to the reporting of DDR3 memory.
- CPU icons updated.

Release 6.0 build 1012 rev 9
WIN32 release 25 August 2009 
- CPU system information included for additional CPUs.
- Minor changes to the 3D test to resolve a 3D crash reported on one system.
- Install BurnInTest to USB drive has been added to BurnInTest Standard 
  (previously only supported in Pro).

Release 6.0 build 1012 rev 8
WIN32 release 20 August 2009 
- Improved the CPU frequency measurement for the highest CPU power state on 
  certain Intel CPUs.
- Correction to the number of CPU cores detected for an unreleased AMD CPU.
- System information updates for the CPU specification for recent and unreleased
  AMD and Intel CPUs.
- Improved support for the PassMark Blu-ray test disk.
- Improvements to the support of larger font settings in Windows.
- Increased Disk error logging detail.
- Other minor improvements.  
  
Release 6.0 build 1012 rev 7
WIN32 release 17 August 2009 
- Correction for Hyperthreading detection for an unreleased Intel CPU. Additional
  CPU debug logging.

Release 6.0 build 1012 rev 6
WIN32 release 12 August 2009 
- Minor changes for WinPE support and the upcoming PassMark PC Test kit.
- Minor help file corrections.

Release 6.0 build 1012 rev 5
WIN32 release 10 August 2009 
- Changes to the USB test for handling S3/S4 Sleep states during testing.

Release 6.0 build 1012 rev 4
WIN32 release 3 August 2009 
- System information for Bluetooth is now included in the System information 
  sections.
- A Display devices button has been added to Preferences->Network to assist 
  users determine the paired and in range Bluetooth devices.
  
Release 6.0 build 1012 rev 3
WIN32 release 30 July 2009 
- A Bluetooth test has been added. 
- A Wi-Fi test has been added as an extension to the standard network test. 
  New options for 6 Network Addresses allow the user to specify the Network 
  Adapter type for the destination Network Address. Also, new “Test all 
  available NICs” options have been added: Test all available Ethernet 
  Network Adapters and Test all available 802.11 (wireless) Network Adapters.
- Minor consistency improvements to the test Windows.
- Minor help file improvements.
  
Release 6.0 build 1012 rev 2
WIN32 release 24 July 2009 
- Improvements to the sound loopback test.
- Further tuning of the 2D test when used with a 3D test window of 800 x 600 or 
  larger.
- Further improvements to the CPU measurement algorithm to better raise Core i7 and 
  some newer Xeon CPUs to a higher power state before taking the measurement.
- Minor help file improvements.

Release 6.0 build 1012 rev 1
WIN32 release 17 July 2009 
- Correction to a problem where after multiple scripted REBOOTs with Rebooter
  set to Forced shutdown, the BurnInTest configuration file could become corrupted.
- The 2D video memory test has been tuned such that when it is used with a 3D test 
  window of 800 x 600 or larger, more Video memory is made available for the 
  3D test (Water texture).
- Non printable ASCII characters are now stripped from the reports (esp. for 
  non-English operating system).
- Error message improved for the case when a BurnInTest Std key is entered in 
  BurnInTest Pro (and vice-versa).
  
Release 6.0 build 1012
WIN32 release 10 July 2009 
- Changes to the sound loopback test. Including, (i) only increasing the number of
  operations for looped waveform samples that are within the user distortion 
  setting, (ii) adding a watchdog timer (approx. 2 minutes) to restart the test
  in the case of failure and no operations (such as a device driver failure).
- Changed the Errors->Block critical Windows errors setting to apply regardless of 
  what tests were started (previously the disk test needed to be started).

Release 6.0 build 1011 rev 6
WIN32 release 8 July 2009 
- CPU SSE4a test correction for an unreleased AMD CPU.
- Support for the upcoming PassMark Blu-ray test disk.
- Minor improvements to the memory and disk tests for low memory scenarios.
- Minor improvements for Windows 7.
- Minor system information improvements.
- A new error message introduced for Windows XP and Windows 2003 Server IMAPI2
  problems for the optical disk burn test.
- Minor help file changes.
- Increased level 2 activity trace logging.

Release 6.0 build 1010 rev 2 
WIN32 release 23 June 2009 
WIN64 release 23 June 2009 
- Correction to warning when starting the Network test.
- Minor help file changes.

Release 6.0 build 1010 
WIN32 release 19 June 2009 
- Correction to the reporting of the Windows 7 operating system.
- Changes to the CPU measurement algorithm to better raise Core i7 and some 
  newer Xeon CPUs to a higher power state before taking the measurement.
- Changes to the EXECUTEWAIT script command to wait indefinitely (rather 
  than up to 20 minutes).
- The user can now specify Plugin test errors 184 and 187 can be ignored, if 
  they deem these errors are not significant for their Plugin.
- Corrections to the data saved in the clipboard.
- New build of Rebooter included in package, V1.3.1003.
- Increased trace 2 logging for the CPU and 2D video memory tests.

Release 6.0 build 1009 revision 0002
WIN32 release 20 May 2009 
WIN64 release 20 May 2009 
- Windows 7 Operating system now supported.
- Improvements to CPU speed measurement for a system in a low power state.
- Specific changes for when BurnInTest is under WinPE:
  - The HDD information is now included for WinPE.
  - Graphics and USB system information sections have been removed as the 
    information is not available under WinPE.
  - The automatically select disk drives and optical drives options will now 
    not select the X: drive (the WinPE RAM drive).

Release 6.0 build 1009 revision 0001
WIN32 release 15 May 2009 
WIN64 release 15 May 2009 
- Corrected a bug where the test duration could be changed when starting a script. 
- Corrected a failure in the 3D test under a low video memory scenario.
- Improvements to Standard RAM test under very low memory scenarios.
- New trace level 1 error logging for CPU errors.

Release 6.0 build 1008 revision 0003
WIN32 release 12 May 2009 
WIN64 release 12 May 2009 
- Improvements to the GPU load with the 3D test. With high-end GPUs and a high 
  BurnInTest 3D test duty cycle setting (e.g. 100%), the CPU can become CPU 
  bound which limits the load on the GPU, this has been improved and the GPU 
  load is now higher on these high-end GPUs.
- Improved the simultaneous testing using the 3D test (particularly for multiple 
  simultaneous 3D tests) and the 2D video memory test.
- The "Install BurnInTest to a USB drive" now also copies the help files to the 
  USB drive or for the BartPE installation.
  
Release 6.0 build 1008 revision 0002
WIN32 release 6 May 2009 
WIN64 release 6 May 2009 
- Improvements in the memory management of the standard memory test when run with 
  the 3D test, sound test and/or Video playback tests.
- Correction for a software exception with the 3D test.

Release 6.0 build 1008
WIN32 release 4 May 2009 
WIN64 release 4 May 2009 
- Improvements in the memory management of the standard memory test.
- Scripting changes: 
  - Accumulated results are now always cleared at the start of a test script, 
    but accumulated across all test runs within the script.
  - For scripts with multiple REBOOT's, if the script was manually stopped 
    before completing, the next script run may have continued from the last
    command in the previous test script (in rare cases), rather than the first 
    command. This has been corrected.
  - A bug was introduced in V6.0.1007, where on a scripted LOAD or SETLOG command, 
    a change in the log file name would not result in a change until the next 
    script was run (not during the current script). This has been corrected.
  - In V6.0.1007, report information set with a script command (e.g. SETSERIAL) 
    was not included in the log file. This has been corrected.
  - Additional (debug) information has been added to the error loading 
    configuration file window.
- The 3D test has been changed such that if Hardware Transform and Lighting is 
  not supported by the Graphics card, then the 3D test will only run with 1 test 
  Window, rather than up to 4 test Windows.
- Corrected a bug where a Standard Network test of less than 2 seconds will not 
  record the number of network operations. 
- Changed the calculation of the number of Standard Sound test cycles to not 
  increase if no sound test files are specified (i.e. in the case of a 
  configuration error).

Release 6.0 build 1007 revision 0002
WIN32 release 9 April 2009 
WIN64 release 9 April 2009 
- Changed the memory test to allow it to run in the scenario where there is only 
  a very small amount of available RAM.
- Updated help error message descriptions.

Release 6.0 build 1007
WIN32 release 8 April 2009 
WIN64 release 8 April 2009 
- Changed the 2D video memory test default to test local video memory, rather than 
  testing any system RAM used as Video memory as well. With this setting, the 
  memory test should be used to test the System RAM.
- The 2D video memory test data is now pre-committed to memory, improving memory 
  management during the testing.
- Minor tuning to the management of RAM for the memory test, especially for when the 
  2D video memory test uses a lot of system RAM.
- Correction to the Disk Test, Test all disks, where on restarting BurnInTest, all 
  disks may not be selected.
- Improvements to the Raw disk test and corrections for Physical disks numbered 10
  and above.
- New error introduced for the case where a Physical disk is configured to be tested
  but does not exist on the system.
- Correction to logging script "LOG" commands.
- Correction to the display/logging of the "Notes" field.
- Correction to the test setup window where the Printer duty cycle could be impacted 
  by the setting of the CPU duty cycle.
- Improved portability of configuration files between systems for the Disk test.
  
Release 6.0 build 1006 rev 0002
WIN32 release 26 March 2009 
WIN64 release 26 March 2009 
- Updates to the CPU system information.
- Changes to usage with BartPE, such that the "X" drive (the system disk) is not 
  included in automatic selection of disks or optical drives. Also, it will not be 
  tested as an optical drive.
- Other minor improvements and corrections.

Release 6.0 build 1006
WIN32 release 24 March 2009 
WIN64 release 24 March 2009 
- Updates to the 3D test (DirectX Direct3D updated from August 2008 to March 2009).
- Sound loopback test improvements.

Release 6.0 build 1005 rev 0002
WIN32 release 23 March 2009 
WIN64 release 24 March 2009 
- Improvements to the 2D video memory test (error handling and level 2 logging).
- Correction to error description for the Disk test bad sector threshold error. 

Release 6.0 build 1005
WIN32 release 20 March 2009 
- The number of disks that can be tested has been increased from 20 to 50.
  Note: This has introduced a new BurnInTest configuration file format. Old 
  file formats will be automatically updated when first opened with BurnInTest.
- Tuning the new V6.0 memory test and memory test corrections when the system 
  was under very high load.
- New logging for the Sound test.
  
Release 6.0 build 1004
WIN32 release 17 March 2009 
- Minor memory test improvements and new logging.
- Corrections to Preferences->Logging radio button selections.

Release 6.0 build 1003
WIN32 release 13 March 2009 
WIN64 release 13 March 2009 
- Summarized the HDDs in the summary section (grouping the same size disks).
- Improvements made to the detection of the RAM manufacturer.
- A new disk error message has been introduced when trying to test a raw disk 
  that contains partitions.
- Added AMD Opteron CPU information for Santa Rosa CPUs.
- Corrected temperature preference selections.
- Corrected the stopping of the advanced network test after a configured 
  number of cycles.
- Corrected the check as to whether there is a new version of BurnInTest 
  available.
- Change to activity trace logging for the 2D test and the raw disk test.

Release 6.0 build 1002
WIN32 release 2 March 2009 
WIN64 release 2 March 2009 
- Added a new menu option for installing BurnInTest to a USB drive.
- Evaluation of BurnInTest from a USB drive installation (or a BartPE 
  installation) no longer requires a trial license key.
- When BurnInTest is run from a USB drive, the default user directory is 
  now automatically changed to the BurnInTest directory on the USB drive 
  (the "/p" option required in V5.x is no longer needed for this scenario).
- The Video Playback test now supports .wmv files, and by default Windows 
  Vista sample files are selected when Windows Vista is used.
- Improved CPU information detection and display (particularly for newer 
  AMD CPUs).
- Running a Post-Test batch file (.bat) application now supports user 
  specified parameters such as $RESULT. Previously this was only supported 
  for executables (.exe).
- Correction to the check whether there is a new version of BurnInTest 
  available.
- Correction for the Parallel port test failing on 2nd and subsequent runs 
  in certain circumstances.
- Minor corrections and improvements.


Release 6.0 build 1001 - MAJOR RELEASE
WIN32 release 10 February 2009 


SYSTEM REQUIRMENTS
- Windows 2008 Server support added. 


NEW TESTS AND IMPROVEMENTS TO EXISTING TESTS
CPU test improvements:
- Created a new CPU test that includes the previous Maths test, MMX/SIMD 
  tests as well a wide range of new CPU instruction tests to provide a more 
  complete CPU test. In addition to the existing tests, new CPU tests 
  include:
   New General CPU instructions like:
   - Data transfer instructions (e.g. pushing/popping data to/from the 
     stack)
   - Bit wise logical instructions (e.g. bit wise and/or/xor)
   - Shift and rotate instructions (e.g. shift data left x number of bits)
   - Logical instructions (e.g. equals)
   - Control transfer instructions (e.g. jump on x greater than y)
   - String instructions (e.g. copy a text string)Logical operations, 
     conditional operations
   New Floating Point Unit instructions like:
   - Transcendental's (e.g. sin, cos)
   - Load constants (e.g. load Pi) 
   New SSE2, SSE3, SSE4.1, SSE4.2 and SSE4a tests.
   A new prime number test.
   A new 'maximum' heat test.
- The CPU tests verification mechanism has been improved. 
- An indication in the CPU test window of the number of concurrent CPU 
  tests per test type has been added. 
- The maximum number of CPU's/CPU cores has been increased from 32 to 64.
- The CPU Tests groups are now individually selectable for a test run.

Memory test improvements:
- The Standard memory test has undergone a major upgrade. This removes 
  some of the Standard memory test limitations, like the 1GB limitation 
  for the standard test for 32-bit BurnInTest. It also removes problems 
  with running many BurnInTest tests together with the Standard memory 
  test. The test is now also optimized for multi-core CPU's.
- A new Standard memory pre-test prior to the main set of tests has been 
  added. The advantage of doing this is that the memory can be checked 
  before the other tests are run, making it easier to identify memory 
  problems directly, rather than indirectly (such as faulty memory in the 
  system cache showing as a disk error). Also, when the RAM test is run 
  individually, the allocation of test RAM is more aggressive and thus 
  more RAM s tested. 
- The error handling for faulty memory has been improved. 

Disk test improvements:
- The Disk test has been optimized to run faster.
- A new option has been added to the Disk test to test raw (unformatted) 
  disks. In general, this test mode is significantly faster than testing 
  formatted disk volumes.

Optical drive test improvements:
- Blu-Ray read test now supported.
- A DVD Burn test has been added. Requires Windows Vista, Windows 2008 Server
  or IMAPI2 patches for Windows XP and Windows 2003 Server.
- A new DVD test mode to automatically select CD/DVD test modes (1 x DVD 
  burn and 1 x PassMark test CD/DVD) has been added.

3D test improvements:
- The 3D test has been optimized to offload more processing from the CPU 
  to the Graphics card.
- The DirectX 3D test has been updated to use the August 2008 DirectX 
  libraries.
- The full screen 3D tests can now be manually exited with the escape key.

Plugin test improvements:
- The Plugin test now allows 5 external Plugin tests (up from 3) and 6 
  User defined test strings (up from 2). 


NEW SYSTEM INFORMATION
A large amount of new system information has been included in the new 
  version: 
- CPU: Support for new CPUs. Also, new CPU information includes: Internal 
  codename, Family, Model, Stepping, Revision, socket type, Fabrication, 
  features (e.g. SSE4.1 and VMX), CPU clock frequency, multipliers, minimum 
  and maximum CPU ratios, Turbo information, TDP limit, TDC limit and number 
  of caches. Also, manufacturer CPU icons added for many of the CPUs.
- Memory: Memory module information and virtual memory information is now 
  also displayed. 
- Optical drive: Blu-Ray optical drive information is now also displayed. 
- Graphics: Multiple graphics cards and multiple monitor information is now 
  displayed. New information includes: chip type, amount of video memory, 
  BIOS information and Device driver information 
- Ports: PS/2, USB, Firewire and audio port information is now also 
  displayed. 


IMPROVEMENTS TO TESTING FACILITIES
- A new Logging option to automatically generate HTML customer test 
  certificate reports has been added.
- A set of pre-defined common tests, 'Quick tests', has been added. These 
  include:
   - Maximum CPU temperature: Runs a short CPU test to 'maximize' CPU 
     temperature and check CPU cooling. 
   - CPU coverage: Runs a short CPU test to validate many different CPU 
     instructions. 
   - RAM: Runs a single pass of the standard RAM test for each test pattern. 
   - Video RAM: Runs a single pass of the video RAM test. 
   - 3D: Runs a short 3D test. 
   - Local disk scan: Runs single pass of the disk test for all locals fixed 
     disks. 
   - Removable disk scan: Runs single pass of the disk test for all 
     removable disks, excluding floppy disks. 
   - Users can also add their own tests to the Quick Tests menu simply by 
     creating test scripts and putting them in the certain BurnInTest 
     directories.
- BurnInTest temperature collection for certain CPUs and Hard disks has been 
  added (this is in addition to using the existing 3rd party products).
- Additional error trapping has been added, to help determine where system 
  component failures occur.
- New scripting commands have been added to set the report attributes for 
  the customer name and the technician, SETCUSTOMER and SETTECHNICIAN.
- Changed the Start tests warning message to not be displayed during a test 
  script, unless it is the first test run from the script or the test may 
  require some user action.
- An option to restrict User's modifying the tests selected has been added.
- HotKeys added for common functions, like starting tests.
- Added the menu option to edit the BurnInTest error description and 
  classification file.
- Double clicking the Results table opens the help file on the error 
  description page.
- Context sensitive right mouse button menus added for common tasks.
- The number of clipboard options increased, including copying a System 
  summary, system information and results as text and HTML.
- A link to online CPU comparisons from the CPU section of System 
  Information has been added. This shows the system's CPU type performance 
  against a range of other CPUs.
- Log file name prefix can now include environment variables to help with 
  dynamic naming of log files.
- System beep on Pass and Fail is now user configurable (when sound card/ 
  speakers are not setup). System pass and fail sounds are also now different.
- The Logging User Interface has been re-organized to better group like items.
- Improved the portability of configuration files between systems. 
  Specifically, the default Sound test files (.wav, .midi and .mp3) and other 
  test files may be specified without a directory path, in which case the 
  bit.exe directory is used at run time.
- If a LastUsed.bitcfg file is not found in My Documents\<username>\BurnInTest, 
  BurnInTest will now check the bit.exe directory 
  (e.g. C:\ProgramFiles\BurnInTest).
- Changed the disk free space bar chart on the Disk test window to be a bar 
  chart showing progress in terms of testing the whole disk.
- Added footer information for the print and export reports. 
- A left margin has been added to printouts.
- Common numeric error codes shown during logging are now shown as a textual
  description.
- Save Image and Save Report last user preferences are now remembered.


History of earlier releases:
Please see http://passmark.com/products/bit_history.htm


Documentation
=============
All the documentation is included in the help file. It can be accessed from
the help menu. There is also a PDF format Users guide available for download 
from the PassMark web site.


Support
=======
For technical support, questions, suggestions, please check the help file for 
our email address or visit our web page at http://www.passmark.com


Ordering / Registration
=======================
All the details are in the help file documentation
or you can visit our sales information page
http://www.passmark.com/sales


Compatibility issues with the Network and Parallel Port Tests
===========================================================
If you are running Windows 2000 or Windows XP, you need to have 
administrator privileges to run this test.


Enjoy..
The PassMark Development team