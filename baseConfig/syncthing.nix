{
  services.syncthing = {
    enable = true;
    user = "maya";
    dataDir = "/home/maya/sync/";
    configDir = "/home/maya/.config/syncthing";
    overrideDevices = true;
    overrideFolders = true;
    settings = {
      devices = {
        "hypermac" = { id = "XVY5YLM-QETCA4H-KT4XBEH-IR4U47O-CJCJ5YM-DPVWQQX-VHEK4MS-GJCMIQ2"; };
        "adventurer" = { id = "IYNIGZQ-ZLACAF4-ZKVTG3Z-VGRWMD4-S5TGK52-6565SC2-SHQ5MQM-BX7UFQW"; };
        "callisto" = { id = "NPXGWEK-JP4C2NM-QZZPBYI-ISAXIZK-ORCNVGO-C4GFRHJ-SWWFQGC-F5JAMQC"; };
        "traveler" = { id = "JVNNE3V-IMVW2YL-JKEWUJZ-N5PU4NE-3YQDEU7-77ZHIP3-ADW3LAA-NODOVA3"; };
      };
      folders = {
        "General" = {
          path = "/home/maya/sync/general";
          devices = [ "callisto" "hypermac" "adventurer" "traveler" ];
        };
        "Music" = {
          path = "/home/maya/Music";
          devices = [ "callisto" "hypermac" "adventurer" "traveler" ];
        };
        "College" = {
          path = "/home/maya/sync/college";
          devices = [ "callisto" "hypermac" "adventurer" "traveler" ];
          versioning = {
            type = "staggered";
            params = {
              cleanInterval = "3600";
              maxAge = "15768000";
            };
          };
        };
      };
    };
  };
}
