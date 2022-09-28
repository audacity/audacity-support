# Installation exit codes

The setup program may return one of the following exit codes:

| Exit code | Definition                                                                                                                                                                                                                                                                                                      |
| --------: | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|         0 | Setup was successfully run to completion or the /HELP or /? command line parameter was used.                                                                                                                                                                                                                    |
|         1 | Setup failed to initialize.                                                                                                                                                                                                                                                                                     |
|         2 | The user clicked Cancel in the wizard before the actual installation started, or chose “No” on the opening “This will install…” message box.                                                                                                                                                                    |
|         3 | A fatal error occurred while preparing to move to the next installation phase (for example, from displaying the pre-installation wizard pages to the actual installation process). This should never happen except under the most unusual of circumstances, such as running out of memory or Windows resources. |
|         4 | <p>A fatal error occurred during the actual installation process.</p><p><em>Note:</em> Errors that cause an Abort-Retry-Ignore box to be displayed are not fatal errors. If the user chooses <em>Abort</em> at such a message box, exit code 5 will be returned.</p>                                            |
|         5 | The user clicked Cancel during the actual installation process, or chose _Abort_ at an Abort-Retry-Ignore box.                                                                                                                                                                                                  |
|         6 | The Setup process was forcefully terminated by the debugger (_Run \| Terminate_ was used in the Compiler IDE).                                                                                                                                                                                                  |

Before returning an exit code of 1, 3 or 4 an error message explaining the problem will normally be displayed.

Future versions may return additional exit codes, so applications checking the exit code should be programmed to handle unexpected exit codes gracefully. Any non-zero exit code indicates that Setup was not run to completion.
