//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.06
//Part Number: GW1N-LV9LQ144C6/I5
//Device: GW1N-9
//Created Time: Wed Jun 22 23:22:42 2022

module Gowin_OSC (oscout);

output oscout;

OSC osc_inst (
    .OSCOUT(oscout)
);

defparam osc_inst.FREQ_DIV = 100;
defparam osc_inst.DEVICE = "GW1N-9";

endmodule //Gowin_OSC
