set clock_constraint { \
    name clk \
    module mac_header_add \
    port ap_clk \
    period 6.66 \
    uncertainty 0.8325 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module mac_header_add \
            instance SrcMacAddress_V \
            bitWidth 48 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module mac_header_add \
            instance DestMacAddress_V \
            bitWidth 48 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

