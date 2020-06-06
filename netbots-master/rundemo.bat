CD /d "%~dp0"

start "NetBot-Server" cmd /K py -3 src/netbots_server.py -p 20000 -stepsec 0.005 -games 100 -bots 5 -stepmax 3000

start "hideincorner" cmd /K py -3 robots/hideincorner.py -p 20002 -sp 20000
start "kevinrobotv4" cmd /K py -3 robots/kevinrobot4.py -p 20003 -sp 20000
start "kevinrobotv1" cmd /K py -3 robots/kevinrobot1.py -p 20004 -sp 20000
start "kevinBestBot" cmd /K py -3 robots/kevinrobot3.py -p 20006 -sp 20000
start "kevinrobotv2" cmd /K py -3 robots/kevinrobot2.py -p 20005 -sp 20000

start "NetBot-Viewer" cmd /K py -3 src/netbots_viewer.py -p 20001 -sp 20000
