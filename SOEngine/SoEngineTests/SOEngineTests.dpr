program SOEngineTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestRawShapeJsonConverter in 'RawFigures\TestRawShapeJsonConverter.pas',
  TestRawShapes in 'RawFigures\TestRawShapes.pas',
  uTestRawShapesContructors in 'RawFigures\uTestRawShapesContructors.pas',
  TestRawShapeBox2DConverter in 'RawFigures\TestRawShapeBox2DConverter.pas',
  uRawShapeBox2DConverter in '..\Common\RawShapes\Converters\uRawShapeBox2DConverter.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

