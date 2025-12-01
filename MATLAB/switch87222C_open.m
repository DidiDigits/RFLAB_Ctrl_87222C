function s = switch87222C_open(port)
% switch87222C_open  Opens a persistent serial connection to the Arduino
% controlling the Keysight 87222C transfer switch.
%
%   s = switch87222C_open('COM4')
%
% port : COM port used by the Arduino (e.g., 'COM4')
%
% Returns the serial object, which must be passed to switch87222C_send()
% and switch87222C_close().

    % Create serial connection
    s = serial(port, 'BaudRate', 115200);

    % Open port
    fopen(s);
    
    % Short delay for stability after opening
    pause(0.1);

end