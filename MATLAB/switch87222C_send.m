function switch87222C_send(s, command)
% switch87222C_send  Sends 'A' or 'B' to the Arduino controlling the
% Keysight 87222C transfer switch.
%
%   switch87222C_send(s, 'A')
%   switch87222C_send(s, 'B')
%
% s       : serial object returned by switch87222C_open()
% command : 'A' or 'B'

    % Validate command
    if ~ismember(command, {'A','B'})
        error('Command must be ''A'' or ''B''.');
    end

    % Send command
    fprintf(s, command);

    % Short delay to allow Arduino to act
    pause(0.02);
end
