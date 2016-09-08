"""Exceptions mapping `sysexits.h`.

   They are likely to be caught by `void run()`, for example:

   ```ceylon
    "The ultimate exception handler."
    suppressWarnings("expressionTypeNothing")
    shared void run() {
        try {
            main();
        } catch (ConfigurationError e) {
            process.writeErrorLine(e.message);
            process.exit(e.exit_code);
        }
    }
    ```

    Exceptions mapping `sysexits.h` are named with postfix `Error`,
    and extends [[Exception]].

    You can extends them to represent more concrete exceptions.
    For example, this module also provides [[NotImplementedException]],
    which is defined as

    ```ceylon
    shared class NotImplementedException(String message)
            extends InternalSoftwareError(message) {}
    ```
"""
by ("Jakukyo Friel")
license ("0BSD")
module io.github.weakish.sysexits "0.0.0" {}
