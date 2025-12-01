function switch87222C_close(s)
% switch87222C_close  Closes and deletes the serial connection used to
% control the Keysight 87222C transfer switch.
%
%   switch87222C_close(s)

    fclose(s);
    delete(s);
end
