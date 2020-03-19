# illegal_stuff
This script allows you to buy illegal marker positions.

## Install

Open your **missionlife**

### Step 1

Copy the enclosed folder `illegal_stuff` into `MissionName.Map\armapps`.
The folder structure should now be `MissionName.Map\armapps\illegal_stuff`.

### Step 2

Open the file **MissionName.Map\armapps\aan_master.cpp** and include below `// -- Script include`
```cpp
#include "illegal_stuff\master.cpp"
```

### Step 3

Open the file **MissionName.Map\armapps\aan_functions_master.cpp** and include below `// -- Script include`
```cpp
#include "illegal_stuff\functions.cpp"
```

### Step 4

Open the **mission.sqm** and add this to the pnj
```sqf
this addAction ["Buy Name field", aan_illegal_stuff_buyZone, "name", 0, false, false, "", '', 5];
```

## Wiki

**IMPORTANT**: Read the `master.cpp` and check the example
