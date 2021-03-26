program test;
uses
    linuxcrt,sysutils;
var
    anim1 : array [0..3] of char = ('|','/','-','\');
    anim2 : array [0..3] of string = ('Loading','Loading.','Loading..','Loading...');
    anim3 : array [0..6] of string = ('Loading','lOading','loAding','loaDing','loadIng','loadiNg','loadinG');
    anim4 : array [0..3] of string = ('| Loading','/ Loading','- Loading','\ Loading');
    i:integer;
    ticks:QWord;
begin
  ticks:=GetTickCount64;
  while GetTickCount64 < ticks+10000 do
  begin
    for i := 0 to Length(anim2) -1 do
    begin
      mcClsLn();
      write(anim2[i]);
      sleep(100);
    end;
  end;
  writeln('');
  mcFgColor(mcCCyan);
  writeln('This text is in cyan!');
  mcBgColor(mcCMagenta);
  mcFgColor(mcCBlack);
  writeln('This is a magenta background, and a black foreground!');
  mcBgColor(mcCBlack);
  mcFgColor(mcCRed);
  mcAttr(mcAUnderscore);
  writeln('This is underlined!');
end.

