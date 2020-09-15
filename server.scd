SuperDirt.start // start server

Server.killAll // kill server

// list all devices:
ServerOptions.devices; //all devices
ServerOptions.inDevices; //input devices
ServerOptions.outDevices; //output devices

ServerOptions.outDevices[0]

Server.default.options.outDevice_(ServerOptions.outDevices[0])
Server.local.options.outDevice_(ServerOptions.outDevices[0])


// Setup MIDI (note – you have to set up a MIDI bus in settings)

MIDIClient.init;

(
~midiOut1 = MIDIOut.newByName("IAC Driver", "Tidal1");

~midiOut2 = MIDIOut.newByName("IAC Driver", "Tidal2");

~dirt.soundLibrary.addMIDI(\midi1, ~midiOut1);
~dirt.soundLibrary.addMIDI(\midi2, ~midiOut2);

~midiOut1.latency = 0;
~midiOut2.latency = 0;
)
