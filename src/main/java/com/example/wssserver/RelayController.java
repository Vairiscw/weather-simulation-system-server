package com.example.wssserver;

import org.springframework.web.bind.annotation.*;

@RestController
public class RelayController {

    private String relayState = "off";

    @GetMapping("/relay/state")
    public String getRelayState() {
        return relayState;
    }

    @PostMapping("/relay")
    @ResponseBody
    public String setRelayState(@RequestParam String state) {
        if (state.equals("on") || state.equals("off")) {
            relayState = state;
            return "Relay state set to " + state;
        } else {
            return "Bad request";
        }
    }
}